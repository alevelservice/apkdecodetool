package com.alipay.mobile.security.bio.service.impl;

import android.os.Handler;
import android.os.Looper;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadCallBack;
import com.alipay.mobile.security.bio.service.BioUploadItem;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.thread.WatchThread;
import com.alipay.mobile.security.bio.workspace.Env;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class BioUploadWatchThread extends WatchThread {
    private List<BioUploadCallBack> mBioUploadCallBacks;
    private BioUploadGW mBioUploadGW;
    private AtomicBoolean mClearUpFlag;
    private BlockingQueue<BioUploadItem> mImageCache;
    public Handler mMainHandle;
    private AtomicBoolean mQuitLaterFlag;

    public BioUploadWatchThread(String str, BioServiceManager bioServiceManager) {
        super(str);
        this.mImageCache = new LinkedBlockingQueue(5);
        this.mBioUploadCallBacks = new ArrayList();
        this.mQuitLaterFlag = new AtomicBoolean(false);
        if (bioServiceManager != null) {
            try {
                Constructor<?> constructor = Class.forName(Env.getProtocolFormat(bioServiceManager.getBioApplicationContext()) != 2 ? "com.alipay.mobile.security.bio.service.impl.BioUploadJsonGWImpl" : "com.alipay.mobile.security.bio.service.impl.BioUploadPBGWImpl").getConstructor(BioServiceManager.class);
                constructor.setAccessible(true);
                this.mBioUploadGW = (BioUploadGW) constructor.newInstance(bioServiceManager);
            } catch (Throwable unused) {
            }
            this.mMainHandle = new Handler(Looper.getMainLooper());
            return;
        }
        throw new BioIllegalArgumentException("BioServiceManager can't be null.");
    }

    private boolean checkAndQuitUpload() {
        if (!this.mImageCache.isEmpty() || !this.mQuitLaterFlag.get()) {
            return false;
        }
        release();
        this.mQuitLaterFlag.set(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doCallback(BioUploadResult bioUploadResult) {
        if (this.mQuitLaterFlag.get()) {
            return;
        }
        boolean z = false;
        Iterator<BioUploadCallBack> it = this.mBioUploadCallBacks.iterator();
        while (it.hasNext() && !z) {
            z = it.next().onResponse(bioUploadResult);
        }
    }

    public synchronized void addBioUploadCallBack(BioUploadCallBack bioUploadCallBack) {
        String str = "BioUploadWatchThread.addBioUploadCallBack(): callBack=" + bioUploadCallBack;
        if (!this.mBioUploadCallBacks.contains(bioUploadCallBack)) {
            this.mBioUploadCallBacks.add(bioUploadCallBack);
        }
    }

    public void addBioUploadItem(BioUploadItem bioUploadItem) {
        try {
            boolean add = this.mImageCache.add(bioUploadItem);
            String str = "BioUploadWatchThread.addBioUploadItem(), isAddSuc=" + add + ", item=" + bioUploadItem;
            if (add) {
                return;
            }
            this.mMainHandle.post(new Runnable() { // from class: com.alipay.mobile.security.bio.service.impl.BioUploadWatchThread.2
                @Override // java.lang.Runnable
                public void run() {
                    BioUploadResult bioUploadResult = new BioUploadResult();
                    bioUploadResult.productRetCode = 4001;
                    BioUploadWatchThread.this.doCallback(bioUploadResult);
                }
            });
        } catch (IllegalStateException unused) {
        }
    }

    public synchronized void clearBioUploadCallBacks() {
        if (this.mClearUpFlag == null) {
            this.mClearUpFlag = new AtomicBoolean(false);
        } else {
            this.mClearUpFlag.set(true);
        }
        String str = "BioUploadWatchThread.clearBioUploadCallBacks(), mClearUpFlag=" + this.mClearUpFlag;
        this.mBioUploadCallBacks.clear();
    }

    public void clearUploadItems() {
        this.mImageCache.clear();
    }

    public boolean isEmpty() {
        BlockingQueue<BioUploadItem> blockingQueue = this.mImageCache;
        return blockingQueue == null || blockingQueue.isEmpty();
    }

    public boolean isFulled() {
        return this.mImageCache.size() >= 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void quitLater() {
        this.mQuitLaterFlag.set(true);
    }

    public void release() {
        this.mBioUploadCallBacks.clear();
        this.mImageCache.clear();
        this.mBioUploadGW = null;
        kill();
    }

    @Override // com.alipay.mobile.security.bio.thread.WatchThread
    protected void task() {
        try {
            if (checkAndQuitUpload()) {
                return;
            }
            BioUploadItem poll = this.mImageCache.poll(50L, TimeUnit.SECONDS);
            String str = "BioUploadWatchThread.task(1), mClearUpFlag=" + this.mClearUpFlag + ", request=" + poll;
            if (poll != null) {
                this.mClearUpFlag.set(false);
                final BioUploadResult upload = this.mBioUploadGW.upload(poll);
                String str2 = "BioUploadWatchThread.task(2), mClearUpFlag=" + this.mClearUpFlag;
                if (this.mClearUpFlag.getAndSet(false)) {
                    String str3 = "BioUploadWatchThread.task(2.5), mClearUpFlag=" + this.mClearUpFlag + ", return.";
                    return;
                }
                if (this.mBioUploadCallBacks.isEmpty() || upload == null || this.mMainHandle == null || !poll.isNeedSendResponse) {
                    return;
                }
                this.mMainHandle.post(new Runnable() { // from class: com.alipay.mobile.security.bio.service.impl.BioUploadWatchThread.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BioUploadWatchThread.this.doCallback(upload);
                    }
                });
            }
        } catch (Exception unused) {
        }
    }
}
