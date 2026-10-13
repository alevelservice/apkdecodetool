package com.alipay.zoloz.toyger.face;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.zoloz.toyger.ToygerService;
import com.alipay.zoloz.toyger.algorithm.TGDepthFrame;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.algorithm.Toyger;
import com.alipay.zoloz.toyger.algorithm.ToygerConfig;
import com.alipay.zoloz.toyger.blob.BitmapHelper;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class ToygerFaceService extends ToygerService<ToygerFaceCallback, ToygerFaceState, ToygerFaceAttr, ToygerFaceInfo, ToygerFaceAlgorithmConfig> {
    public static final String KEY_TOYGER_DEPTH_FRAME = "toyger_depth_frame";
    public static final String KEY_TOYGER_FRAME = "toyger_frame";
    public static final String KEY_TOYGER_TIME_CONSUMING = "toygerTimeConsuming";
    private static final int QUEUE_LENGTH = 1;
    private static short[] depthCache;
    private static String licenses;
    private static byte[] model;
    private static byte[] yuvCache;
    private FaceBlobManager blobManager;
    private ToygerFaceAlgorithmConfig faceAlgConfig;
    private FaceDetector mFaceDetector;
    private HandlerThread mProcessThread;
    private Handler mProcessThreadHandler;
    boolean needFppPreprocess;
    private final BlockingQueue<List<TGFrame>> mFrameQueue = new LinkedBlockingDeque(1);
    private final BlockingQueue<TGDepthFrame> mDepthFrameQueue = new LinkedBlockingDeque(1);
    private final FrameProcessor mFrameProcessor = new FrameProcessor();
    private final AtomicBoolean mRunning = new AtomicBoolean(false);
    private final ReentrantLock mColorFrameQueueLock = new ReentrantLock();
    private final ReentrantLock mDepthFrameQueueLock = new ReentrantLock();
    private boolean isMirror = false;

    private static boolean load(Context context) {
        try {
            InputStream open = context.getAssets().open(ToygerService.ASSET_FACE);
            model = new byte[open.available()];
            open.read(model);
            return model != null;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static short[] mirrorDepth(short[] sArr, int i2, int i3) {
        if (depthCache == null) {
            depthCache = new short[i2 * i3];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = i2 - 1; i6 >= 0; i6--) {
                depthCache[i4] = sArr[(i5 * i2) + i6];
                i4++;
            }
        }
        short[] sArr2 = depthCache;
        System.arraycopy(sArr2, 0, sArr, 0, sArr2.length);
        return depthCache;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] mirrorYUV420(byte[] bArr, int i2, int i3) {
        if (yuvCache == null) {
            yuvCache = new byte[((i2 * i3) * 3) / 2];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = i2 - 1; i6 >= 0; i6--) {
                yuvCache[i4] = bArr[(i5 * i2) + i6];
                i4++;
            }
        }
        for (int i7 = i3; i7 < (i3 * 3) / 2; i7++) {
            for (int i8 = i2 - 2; i8 >= 0; i8 -= 2) {
                byte[] bArr2 = yuvCache;
                int i9 = (i7 * i2) + i8;
                bArr2[i4] = bArr[i9];
                int i10 = i4 + 1;
                bArr2[i10] = bArr[i9 + 1];
                i4 = i10 + 1;
            }
        }
        byte[] bArr3 = yuvCache;
        System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
        return bArr;
    }

    public static boolean preLoad(Context context) {
        if (model != null) {
            return true;
        }
        boolean load = load(context);
        String str = "ToygerFaceService.preLoad() : bRet=" + load;
        return load;
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleCaptureCompleted(int i2, List<ToygerFaceInfo> list, Map<String, Object> map) {
        byte[] generateBlob = this.blobManager.generateBlob(list, map);
        byte[] key = this.blobManager.getKey();
        String str = "handleCaptureCompleted(): result=" + i2 + ", infos=" + list + ", extIno=" + map + ", content:" + generateBlob.length + ", key:" + key.length;
        ((ToygerFaceCallback) this.mToygerCallback).onComplete(i2, generateBlob, key, this.blobManager.isUTF8());
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleEventTriggered(int i2, String str) {
        super.handleEventTriggered(i2, str);
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleScanCompleted(int i2, List<ToygerFaceInfo> list, Map<String, Object> map) {
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public /* bridge */ /* synthetic */ boolean init(Context context, ToygerFaceCallback toygerFaceCallback, String str, String str2, Map map) {
        return init2(context, toygerFaceCallback, str, str2, (Map<String, Object>) map);
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public boolean processImage(List<TGFrame> list, TGDepthFrame tGDepthFrame) {
        ArrayList arrayList = new ArrayList(list.size());
        if (!this.mFrameQueue.offer(arrayList)) {
            return true;
        }
        Iterator<TGFrame> it = list.iterator();
        while (it.hasNext()) {
            TGFrame deepCopy = it.next().deepCopy();
            if (deepCopy != null) {
                arrayList.add(deepCopy);
            }
        }
        TGDepthFrame tGDepthFrame2 = new TGDepthFrame();
        if (tGDepthFrame != null && ((tGDepthFrame.data != null || tGDepthFrame.shortBuffer != null) && this.mDepthFrameQueue.offer(tGDepthFrame2))) {
            tGDepthFrame2.assign(tGDepthFrame);
        }
        Handler handler = this.mProcessThreadHandler;
        if (handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.face.ToygerFaceService.2
            @Override // java.lang.Runnable
            public void run() {
                ToygerFaceService toygerFaceService;
                try {
                    if (ToygerFaceService.this.mRunning.get()) {
                        List<TGFrame> list2 = (List) ToygerFaceService.this.mFrameQueue.poll(1L, TimeUnit.SECONDS);
                        TGDepthFrame tGDepthFrame3 = (TGDepthFrame) ToygerFaceService.this.mDepthFrameQueue.poll();
                        try {
                            ToygerFaceService.this.mColorFrameQueueLock.lock();
                            ToygerFaceService.this.mDepthFrameQueueLock.lock();
                            if (list2 != null && list2.size() != 0) {
                                if (ToygerFaceService.this.isMirror) {
                                    for (TGFrame tGFrame : list2) {
                                        tGFrame.data = ToygerFaceService.mirrorYUV420(tGFrame.data, tGFrame.width, tGFrame.height);
                                    }
                                    tGDepthFrame3.data = ToygerFaceService.mirrorDepth(tGDepthFrame3.data, tGDepthFrame3.width, tGDepthFrame3.height);
                                }
                                ToygerFaceService.this.mFrameProcessor.initFame((TGFrame) list2.get(0), tGDepthFrame3);
                                Toyger.processImage(list2, tGDepthFrame3, new ToygerFaceAttr());
                            }
                            ToygerFaceService.this.mFrameProcessor.clearFrame();
                            ToygerFaceService.this.mColorFrameQueueLock.unlock();
                            toygerFaceService = ToygerFaceService.this;
                        } catch (Throwable unused) {
                            ToygerFaceService.this.mFrameProcessor.clearFrame();
                            ToygerFaceService.this.mColorFrameQueueLock.unlock();
                            toygerFaceService = ToygerFaceService.this;
                        }
                        toygerFaceService.mDepthFrameQueueLock.unlock();
                    }
                } catch (Throwable unused2) {
                }
            }
        });
        return true;
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public void release() {
        this.mRunning.set(false);
        reset();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.face.ToygerFaceService.4
            @Override // java.lang.Runnable
            public void run() {
                Toyger.release();
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await(1L, TimeUnit.SECONDS);
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
        } catch (InterruptedException e2) {
            e2.toString();
        }
        yuvCache = null;
        depthCache = null;
    }

    @Override // com.alipay.zoloz.toyger.ToygerService
    public void reset() {
        Iterator it = this.mFrameQueue.iterator();
        while (it.hasNext()) {
            try {
                this.mColorFrameQueueLock.lock();
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                    ((TGFrame) it2.next()).recycle();
                }
                this.mColorFrameQueueLock.unlock();
                it.remove();
            } catch (Throwable th) {
                th.toString();
            }
        }
        Iterator it3 = this.mDepthFrameQueue.iterator();
        while (it3.hasNext()) {
            try {
                this.mDepthFrameQueueLock.lock();
                ((TGDepthFrame) it3.next()).recycle();
                it3.remove();
                this.mDepthFrameQueueLock.unlock();
            } catch (Throwable th2) {
                th2.toString();
            }
        }
        this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.face.ToygerFaceService.3
            @Override // java.lang.Runnable
            public void run() {
                Toyger.reset();
            }
        });
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleInfoReady(TGFrame tGFrame, ToygerFaceAttr toygerFaceAttr) {
        if (2 == this.faceAlgConfig.log_level) {
            FrameProcessor.clearOldBinFiles();
            int i2 = tGFrame.rotation % 180 == 0 ? tGFrame.width : tGFrame.height;
            int i3 = tGFrame.width;
            if (i2 == i3) {
                i3 = tGFrame.height;
            }
            Rect convertFaceRegion = FaceBlobManager.convertFaceRegion(toygerFaceAttr.faceRegion, i2, i3, tGFrame.rotation, false);
            String str = convertFaceRegion.left + "_" + convertFaceRegion.top + "_" + convertFaceRegion.right + "_" + convertFaceRegion.bottom;
            this.mFrameProcessor.saveTgFrame(str);
            this.mFrameProcessor.saveTgDepthFrame(str);
        }
        String str2 = "handleInfoReady(): frame=" + tGFrame + ", attr=" + toygerFaceAttr;
        Bitmap rotateBitmap = BitmapHelper.rotateBitmap(BitmapHelper.bytes2Bitmap(tGFrame.data, tGFrame.width, tGFrame.height, tGFrame.frameMode), tGFrame.rotation);
        ((ToygerFaceCallback) this.mToygerCallback).onHighQualityFrame(BitmapHelper.reverseBitmap(rotateBitmap, 0), toygerFaceAttr);
        if (rotateBitmap != null) {
            rotateBitmap.recycle();
        }
    }

    @Override // com.alipay.zoloz.toyger.ToygerService, com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleStateUpdated(ToygerFaceState toygerFaceState, ToygerFaceAttr toygerFaceAttr) {
        String str = "handleStateUpdated(): state=" + toygerFaceState + ", attr=" + toygerFaceAttr;
        HashMap hashMap = new HashMap();
        hashMap.put(KEY_TOYGER_FRAME, this.mFrameProcessor.getTgFrame());
        hashMap.put(KEY_TOYGER_DEPTH_FRAME, this.mFrameProcessor.getTgDepthFrame());
        ((ToygerFaceCallback) this.mToygerCallback).onStateUpdated(toygerFaceState, toygerFaceAttr, hashMap);
    }

    /* renamed from: init, reason: avoid collision after fix types in other method */
    public boolean init2(final Context context, ToygerFaceCallback toygerFaceCallback, String str, String str2, final Map<String, Object> map) {
        String str3;
        this.mToygerCallback = toygerFaceCallback;
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
        ToygerFaceBlobConfig from = ToygerFaceBlobConfig.from(str2, (map == null || !map.containsKey(ToygerService.KEY_PUBLIC_KEY)) ? null : map.get(ToygerService.KEY_PUBLIC_KEY).toString());
        if (from == null) {
            return false;
        }
        if (map != null && map.containsKey(ToygerService.KEY_IS_MIRROR)) {
            this.isMirror = Boolean.parseBoolean(map.get(ToygerService.KEY_IS_MIRROR).toString());
        }
        String str4 = "isMirror=" + this.isMirror;
        try {
            Constructor<?> declaredConstructor = Class.forName(((map == null || !map.containsKey("meta_serializer")) ? 2 : Integer.parseInt(map.get("meta_serializer").toString())) != 2 ? "com.alipay.zoloz.toyger.face.FaceBlobManagerJson" : "com.alipay.zoloz.toyger.face.FaceBlobManagerPb").getDeclaredConstructor(ToygerFaceBlobConfig.class);
            declaredConstructor.setAccessible(true);
            this.blobManager = (FaceBlobManager) declaredConstructor.newInstance(from);
            this.faceAlgConfig = ToygerFaceAlgorithmConfig.from(str);
            String str5 = "Toyger mocked protocol:" + this.faceAlgConfig;
            if (this.faceAlgConfig == null) {
                this.faceAlgConfig = new ToygerFaceAlgorithmConfig();
            }
            for (String str6 : this.faceAlgConfig.liveness_combination) {
                if (str6.contains("fpp") || "BlinkLiveness".equalsIgnoreCase(str6)) {
                    this.needFppPreprocess = true;
                    break;
                }
            }
            String str7 = "need fpp preprocess: " + this.needFppPreprocess;
            final ToygerConfig toygerConfig = this.faceAlgConfig.toToygerConfig(this.needFppPreprocess);
            String str8 = "";
            String str9 = "";
            if (from.collection != null) {
                for (int i2 = 0; i2 < from.collection.size(); i2++) {
                    if (str9.length() > 0) {
                        str9 = str9.concat(MetaRecord.LOG_SEPARATOR).concat(from.collection.get(i2));
                    } else {
                        str9 = from.collection.get(i2);
                    }
                }
            }
            toygerConfig.livenessConfig.collection = str9;
            for (int i3 = 0; i3 < this.faceAlgConfig.liveness_combination.size(); i3++) {
                if (str8.length() > 0) {
                    str3 = str8.concat(MetaRecord.LOG_SEPARATOR).concat(this.faceAlgConfig.liveness_combination.get(i3));
                } else {
                    str3 = this.faceAlgConfig.liveness_combination.get(i3);
                }
                str8 = str3;
            }
            toygerConfig.livenessConfig.livenessCombinations = str8;
            Map<String, List<Float>> map2 = this.faceAlgConfig.threshold;
            if (map2 != null) {
                List<Float> list = map2.get(ToygerFaceAlgorithmConfig.DRAGONFLY_LIVENESS);
                List<Float> list2 = list instanceof List ? list : null;
                if (list2 != null) {
                    for (int i4 = 0; i4 < list2.size(); i4++) {
                        float floatValue = list2.get(i4).floatValue();
                        if (i4 == 0) {
                            toygerConfig.livenessConfig.dragonflyMin = floatValue;
                        } else if (i4 == 1) {
                            toygerConfig.livenessConfig.dragonflyMax = floatValue;
                        }
                    }
                }
                List<Float> list3 = map2.get(ToygerFaceAlgorithmConfig.GEMINI_LIVENESS);
                List<Float> list4 = list3 instanceof List ? list3 : null;
                if (list4 != null) {
                    for (int i5 = 0; i5 < list4.size(); i5++) {
                        float floatValue2 = list4.get(i5).floatValue();
                        if (i5 == 0) {
                            toygerConfig.livenessConfig.geminiMin = floatValue2;
                        } else if (i5 == 1) {
                            toygerConfig.livenessConfig.geminiMax = floatValue2;
                        }
                    }
                }
                List<Float> list5 = map2.get(ToygerFaceAlgorithmConfig.BAT_LIVENESS);
                List<Float> list6 = list5 instanceof List ? list5 : null;
                if (list6 != null && list6.size() > 0) {
                    toygerConfig.livenessConfig.batLivenessThreshold = list6.get(0).floatValue();
                }
            }
            final ToygerFaceCallback toygerFaceCallback2 = (ToygerFaceCallback) this.mToygerCallback;
            this.mProcessThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.toyger.face.ToygerFaceService.1
                @Override // java.lang.Runnable
                public void run() {
                    Rect rect;
                    HashMap hashMap = new HashMap();
                    hashMap.put("StateSignature", ToygerFaceState.class.getName().replace(".", "/"));
                    hashMap.put("AttrSignature", ToygerFaceAttr.class.getName().replace(".", "/"));
                    hashMap.put("FrameSignature", TGFrame.class.getName().replace(".", "/"));
                    hashMap.put("Algorithm", "Face");
                    Map map3 = map;
                    if (map3 != null && (rect = (Rect) map3.get(ToygerService.KEY_ROI)) != null) {
                        toygerConfig.cameraConfig.roiRect = rect;
                        String str10 = "run: setRoi top " + rect.top + "left " + rect.left + "right" + rect.right + "bottom " + rect.bottom;
                    }
                    boolean init = Toyger.init(context, ToygerFaceService.model, ToygerFaceService.licenses, context.getPackageName(), hashMap);
                    String str11 = "Toyger.init() return : initResult=" + init;
                    byte[] unused = ToygerFaceService.model = null;
                    if (init) {
                        String str12 = "toygerConfig=" + toygerConfig;
                        Toyger.config(this, toygerConfig);
                        ToygerFaceService.this.mRunning.set(true);
                        toygerFaceCallback2.onEvent(1, null);
                        return;
                    }
                    toygerFaceCallback2.onEvent(-4, null);
                }
            });
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
