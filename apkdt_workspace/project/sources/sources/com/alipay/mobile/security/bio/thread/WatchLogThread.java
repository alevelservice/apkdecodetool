package com.alipay.mobile.security.bio.thread;

import android.content.Context;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.service.BioSysBehavior;
import com.alipay.mobile.security.bio.service.BioSysBehaviorType;
import com.alipay.mobile.security.bio.utils.DateUtil;
import com.alipay.mobile.security.bio.utils.FileUtil;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class WatchLogThread extends WatchThread {
    private static final int SIZE = 30;
    private File mApiFile;
    private File mClickFile;
    private Context mContext;
    private File mEventFile;
    private File mLogDir;
    private File mMethodFile;
    private File mNetFile;
    private BlockingQueue<BioSysBehavior> mSysBehaviorCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.alipay.mobile.security.bio.thread.WatchLogThread$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType = new int[BioSysBehaviorType.values().length];

        static {
            try {
                $SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType[BioSysBehaviorType.API.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType[BioSysBehaviorType.CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType[BioSysBehaviorType.NET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType[BioSysBehaviorType.EVENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType[BioSysBehaviorType.METHOD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WatchLogThread(Context context, String str) {
        super(str);
        this.mSysBehaviorCache = new LinkedBlockingQueue(30);
        this.mLogDir = null;
        this.mApiFile = null;
        this.mMethodFile = null;
        this.mClickFile = null;
        this.mNetFile = null;
        this.mEventFile = null;
        this.mContext = null;
        if (context != null) {
            this.mContext = context;
            this.mLogDir = this.mContext.getDir("BIO_LOGS", 0);
            String dateFormat = DateUtil.getDateFormat(System.currentTimeMillis());
            this.mApiFile = new File(this.mLogDir, "BIO_API_" + dateFormat + ".txt");
            this.mMethodFile = new File(this.mLogDir, "BIO_METHOD_" + dateFormat + ".txt");
            this.mClickFile = new File(this.mLogDir, "BIO_CLICK_" + dateFormat + ".txt");
            this.mNetFile = new File(this.mLogDir, "BIO_NET_" + dateFormat + ".txt");
            this.mEventFile = new File(this.mLogDir, "BIO_EVENT_" + dateFormat + ".txt");
            return;
        }
        throw new BioIllegalArgumentException();
    }

    private void writeContext(BioSysBehavior bioSysBehavior) {
        if (bioSysBehavior == null) {
            return;
        }
        HashMap<String, String> ext = bioSysBehavior.getExt();
        StringBuilder sb = new StringBuilder();
        if (!ext.isEmpty()) {
            for (String str : ext.keySet()) {
                sb.append("[key:" + str + ", value:" + ext.get(str) + "]");
            }
        }
        writeContext(bioSysBehavior.getType(), bioSysBehavior.getMsg() + sb.toString());
    }

    public void addThreadItem(BioSysBehavior bioSysBehavior) {
        try {
            this.mSysBehaviorCache.add(bioSysBehavior);
        } catch (Throwable th) {
            th.toString();
        }
    }

    @Override // com.alipay.mobile.security.bio.thread.WatchThread
    protected void task() {
        try {
            writeContext(this.mSysBehaviorCache.poll(50L, TimeUnit.SECONDS));
        } catch (InterruptedException unused) {
        }
    }

    private void writeContext(BioSysBehaviorType bioSysBehaviorType, String str) {
        int i2 = AnonymousClass1.$SwitchMap$com$alipay$mobile$security$bio$service$BioSysBehaviorType[bioSysBehaviorType.ordinal()];
        if (i2 == 1) {
            FileUtil.saveContent(this.mApiFile, str, true);
            return;
        }
        if (i2 == 2) {
            FileUtil.saveContent(this.mClickFile, str, true);
            return;
        }
        if (i2 == 3) {
            FileUtil.saveContent(this.mNetFile, str, true);
        } else if (i2 == 4) {
            FileUtil.saveContent(this.mEventFile, str, true);
        } else {
            if (i2 != 5) {
                return;
            }
            FileUtil.saveContent(this.mMethodFile, str, true);
        }
    }

    public WatchLogThread(String str) {
        super(str);
        this.mSysBehaviorCache = new LinkedBlockingQueue(30);
        this.mLogDir = null;
        this.mApiFile = null;
        this.mMethodFile = null;
        this.mClickFile = null;
        this.mNetFile = null;
        this.mEventFile = null;
        this.mContext = null;
    }
}
