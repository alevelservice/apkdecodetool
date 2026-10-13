package com.alipay.zoloz.toyger.doc;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.alibaba.fastjson.JSON;
import com.alipay.zoloz.toyger.ToygerService;
import com.alipay.zoloz.toyger.algorithm.TGDepthFrame;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.algorithm.Toyger;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;

/* loaded from: classes.dex */
public class ToygerDocService extends ToygerService<ToygerDocCallback, ToygerDocState, ToygerDocAttr, ToygerDocInfo, ToygerDocAlgorithmConfig> {
    public static final String CONTENT = "content";
    public static final String IMAGE_CONTENT_LENGTH = "image_content_length";
    public static final String KEY = "key";
    private static byte[] model;
    private DocBlobManager blobManager;
    private ToygerDocBlobConfig mBlobConfig;
    private long mOriginalPicSize;
    private HandlerThread mProcessThread;
    private Handler mProcessThreadHandler;
    private String mPubkey = null;
    private Rect mRect = null;
    private int mRotateTimes;

    public static HashMap<String, Object> generateDocBlob(TGFrame tGFrame, ToygerDocBlobConfig toygerDocBlobConfig, Rect rect) {
        try {
            Constructor<?> declaredConstructor = Class.forName("com.alipay.zoloz.toyger.doc.DocBlobManagerJson").getDeclaredConstructor(ToygerDocBlobConfig.class);
            declaredConstructor.setAccessible(true);
            DocBlobManager docBlobManager = (DocBlobManager) declaredConstructor.newInstance(toygerDocBlobConfig);
            docBlobManager.setCropRect(rect);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ToygerDocInfo(tGFrame, new ToygerDocAttr()));
            byte[] generateBlob = docBlobManager.generateBlob(arrayList, null);
            byte[] key = docBlobManager.getKey();
            HashMap<String, Object> hashMap = new HashMap<>(6);
            hashMap.put("content", generateBlob);
            hashMap.put("key", key);
            hashMap.put(ToygerService.KEY_RES_9_IS_UTF8, true);
            hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(toygerDocBlobConfig.pageNo));
            hashMap.put(ZdocRecordService.PRE_COMPRESS_SIZE, Long.toString(tGFrame.data.length));
            hashMap.put(ZdocRecordService.POST_COMPRESS_SIZE, Long.toString(docBlobManager.getPicSize()));
            return hashMap;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean load(Context context) {
        try {
            InputStream open = context.getAssets().open(ToygerService.ASSET_DOC);
            model = new byte[open.available()];
            open.read(model);
            return model != null;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean preLoad(Context context) {
        if (model != null) {
            return true;
        }
        boolean load = load(context);
        String str = "ToygerDocService.preLoad() : bRet=" + load;
        return load;
    }

    public void config(final String str, String str2) {
        this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.doc.ToygerDocService.4
            @Override // java.lang.Runnable
            public void run() {
                ToygerDocAlgorithmConfig toygerDocAlgorithmConfig = (ToygerDocAlgorithmConfig) JSON.parseObject(str, ToygerDocAlgorithmConfig.class);
                toygerDocAlgorithmConfig.rotateTimes = ToygerDocService.this.mRotateTimes;
                toygerDocAlgorithmConfig.frameRect = ToygerDocService.this.mRect;
                if (Toyger.configDoc(this, toygerDocAlgorithmConfig)) {
                    return;
                }
                ((ToygerDocCallback) ((ToygerService) ToygerDocService.this).mToygerCallback).onEvent(-4, null);
            }
        });
        if (this.blobManager != null) {
            this.mBlobConfig = ToygerDocBlobConfig.from(str2, this.mPubkey);
            this.blobManager.setBlobConfig(this.mBlobConfig);
        }
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleCaptureCompleted(int i2, List<ToygerDocInfo> list, Map<String, Object> map) {
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleInfoReady(TGFrame tGFrame, ToygerDocAttr toygerDocAttr) {
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleScanCompleted(int i2, List<ToygerDocInfo> list, Map<String, Object> map) {
        ((ToygerDocCallback) this.mToygerCallback).onComplete(i2, this.blobManager.generateBlob(list, map), this.blobManager.getKey(), this.blobManager.isUTF8());
        HashMap hashMap = new HashMap(3);
        hashMap.put(ZdocRecordService.PAGE_NUMBER, Integer.toString(this.mBlobConfig.pageNo));
        hashMap.put(ZdocRecordService.PRE_COMPRESS_SIZE, Long.toString(this.mOriginalPicSize));
        hashMap.put(ZdocRecordService.POST_COMPRESS_SIZE, Long.toString(this.blobManager.getPicSize()));
        ((ToygerDocCallback) this.mToygerCallback).onEvent(-7, hashMap);
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public /* bridge */ /* synthetic */ boolean init(Context context, ToygerDocCallback toygerDocCallback, String str, String str2, Map map) {
        return init2(context, toygerDocCallback, str, str2, (Map<String, Object>) map);
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public boolean processImage(List<TGFrame> list, TGDepthFrame tGDepthFrame) {
        final ArrayList arrayList = new ArrayList();
        Iterator<TGFrame> it = list.iterator();
        while (it.hasNext()) {
            TGFrame deepCopy = it.next().deepCopy();
            if (deepCopy != null) {
                arrayList.add(deepCopy);
                this.mOriginalPicSize = deepCopy.data.length;
            }
        }
        this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.doc.ToygerDocService.3
            @Override // java.lang.Runnable
            public void run() {
                Toyger.processImage(arrayList, null, null);
            }
        });
        return false;
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public void release() {
        final Semaphore semaphore = new Semaphore(1);
        try {
            semaphore.acquire();
        } catch (InterruptedException e2) {
            e2.toString();
        }
        this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.doc.ToygerDocService.2
            @Override // java.lang.Runnable
            public void run() {
                Toyger.release();
                semaphore.release();
            }
        });
        try {
            semaphore.acquire();
            if (this.mProcessThread != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    this.mProcessThread.quitSafely();
                } else {
                    this.mProcessThread.quit();
                }
            }
            this.mProcessThread = null;
            this.mProcessThreadHandler.removeCallbacksAndMessages(null);
            this.mProcessThreadHandler = null;
            this.mToygerCallback = null;
        } catch (InterruptedException e3) {
            e3.toString();
        }
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public void reset() {
        Toyger.reset();
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleStateUpdated(ToygerDocState toygerDocState, ToygerDocAttr toygerDocAttr) {
        ((ToygerDocCallback) this.mToygerCallback).onStateUpdated(toygerDocState, null, null);
    }

    /* renamed from: init, reason: avoid collision after fix types in other method */
    public boolean init2(final Context context, ToygerDocCallback toygerDocCallback, final String str, String str2, Map<String, Object> map) {
        this.mToygerCallback = toygerDocCallback;
        if (model == null) {
            load(context);
        }
        if (this.mProcessThread == null) {
            this.mProcessThread = new HandlerThread("ToygerProcessQueue");
            this.mProcessThread.start();
        }
        if (this.mProcessThreadHandler == null) {
            this.mProcessThreadHandler = new Handler(this.mProcessThread.getLooper());
        }
        if (map != null && map.containsKey(ToygerService.KEY_PUBLIC_KEY)) {
            this.mPubkey = map.get(ToygerService.KEY_PUBLIC_KEY).toString();
        }
        this.mBlobConfig = ToygerDocBlobConfig.from(str2, this.mPubkey);
        if (this.mBlobConfig == null) {
            return false;
        }
        int parseInt = (map == null || !map.containsKey("meta_serializer")) ? 2 : Integer.parseInt(map.get("meta_serializer").toString());
        if (map != null && map.containsKey(ToygerService.KEY_DOC_FRAME_RECT)) {
            this.mRect = (Rect) map.get(ToygerService.KEY_DOC_FRAME_RECT);
        }
        if (this.mRect == null) {
            return false;
        }
        if (map != null && map.containsKey(ToygerService.KEY_ROTATE_TIMES)) {
            this.mRotateTimes = ((Integer) map.get(ToygerService.KEY_ROTATE_TIMES)).intValue();
        }
        try {
            Constructor<?> declaredConstructor = Class.forName(parseInt != 2 ? "com.alipay.zoloz.toyger.doc.DocBlobManagerJson" : "com.alipay.zoloz.toyger.doc.DocBlobManagerPb").getDeclaredConstructor(ToygerDocBlobConfig.class);
            declaredConstructor.setAccessible(true);
            this.blobManager = (DocBlobManager) declaredConstructor.newInstance(this.mBlobConfig);
            this.blobManager.setCropRect(this.mRect);
            final ToygerDocCallback toygerDocCallback2 = (ToygerDocCallback) this.mToygerCallback;
            final Rect rect = this.mRect;
            final int i2 = this.mRotateTimes;
            this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.doc.ToygerDocService.1
                @Override // java.lang.Runnable
                public void run() {
                    HashMap hashMap = new HashMap();
                    hashMap.put("StateSignature", ToygerDocState.class.getName().replace(".", "/"));
                    hashMap.put("AttrSignature", ToygerDocAttr.class.getName().replace(".", "/"));
                    hashMap.put("FrameSignature", TGFrame.class.getName().replace(".", "/"));
                    hashMap.put("Algorithm", "Doc");
                    boolean init = Toyger.init(context, ToygerDocService.model, null, context.getPackageName(), hashMap);
                    String str3 = "Toyger.init() return : initResult=" + init;
                    byte[] unused = ToygerDocService.model = null;
                    ToygerDocAlgorithmConfig toygerDocAlgorithmConfig = (ToygerDocAlgorithmConfig) JSON.parseObject(str, ToygerDocAlgorithmConfig.class);
                    if (init) {
                        toygerDocAlgorithmConfig.rotateTimes = i2;
                        toygerDocAlgorithmConfig.frameRect = rect;
                        if (!Toyger.configDoc(this, toygerDocAlgorithmConfig)) {
                            toygerDocCallback2.onEvent(-4, null);
                            return;
                        } else {
                            toygerDocCallback2.onEvent(1, null);
                            return;
                        }
                    }
                    toygerDocCallback2.onEvent(-4, null);
                }
            });
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
