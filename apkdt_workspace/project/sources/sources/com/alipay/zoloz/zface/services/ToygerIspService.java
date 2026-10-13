package com.alipay.zoloz.zface.services;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.alipay.mobile.security.bio.service.BioService;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.zoloz.hardware.isp.IspService;
import com.alipay.zoloz.isp.IspResult;
import com.alipay.zoloz.isp.ToygerIsp;
import com.alipay.zoloz.toyger.algorithm.TGDepthFrame;
import com.alipay.zoloz.toyger.algorithm.TGFaceAttr;
import com.alipay.zoloz.toyger.algorithm.TGFaceState;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.face.FaceBlobManager;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ToygerIspService extends BioService {
    private static final float MAX_BRIGHTNESS = 0.7f;
    private static final float MIN_BRIGHTNESS = 0.3f;
    private static final String TAG = "ZFaceIspService";
    private IspService mIspService;
    private HandlerThread mIspThread;
    private Handler mIspThreadHandler;
    private ToygerIsp mToygerIsp;
    private boolean ispRunning = false;
    private boolean mInitialized = false;
    private final long ISP_DELAY = TimeUnit.SECONDS.toMillis(1);
    private long begin = 0;

    private boolean validateRegion(RectF rectF) {
        if (rectF != null) {
            return rectF.left >= 0.0f && rectF.top >= 0.0f && rectF.right <= 1.0f && rectF.bottom <= 1.0f;
        }
        return true;
    }

    public void adjustIsp(final TGFrame tGFrame, final TGDepthFrame tGDepthFrame, TGFaceState tGFaceState, TGFaceAttr tGFaceAttr) {
        RectF rectF;
        boolean z;
        if (this.mIspService == null || System.currentTimeMillis() - this.begin < this.ISP_DELAY) {
            return;
        }
        if (tGFaceState.hasFace) {
            rectF = tGFaceAttr.faceRegion;
            float f2 = tGFaceAttr.brightness;
            z = f2 < MIN_BRIGHTNESS || f2 > MAX_BRIGHTNESS;
            String str = "adjustIsp() : attr.brightness=" + tGFaceAttr.brightness + ", badBrightness=" + z;
        } else {
            float f3 = 240.0f / tGFrame.width;
            float f4 = 120.0f / tGFrame.height;
            String str2 = "toyger width:" + tGFrame.width + "height:" + tGFrame.height;
            rectF = new RectF(0.5f - f3, 0.5f - f4, f3 + 0.5f, f4 + 0.5f);
            z = true;
        }
        if (z && validateRegion(rectF)) {
            final Rect convertFaceRegion = FaceBlobManager.convertFaceRegion(rectF, tGFrame.width, tGFrame.height, tGFrame.rotation, false);
            synchronized (this) {
                if (!this.ispRunning) {
                    this.ispRunning = true;
                    this.mIspThreadHandler.post(new Runnable() { // from class: com.alipay.zoloz.zface.services.ToygerIspService.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ToygerIspService.this.adjustIsp(convertFaceRegion, tGFrame.data, tGDepthFrame.data);
                            ToygerIspService.this.mIspThreadHandler.postDelayed(new Runnable() { // from class: com.alipay.zoloz.zface.services.ToygerIspService.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    synchronized (ToygerIspService.this) {
                                        ToygerIspService.this.ispRunning = false;
                                    }
                                }
                            }, 200L);
                        }
                    });
                }
            }
        }
    }

    public void init(int i2, int i3, int i4, int i5, int i6) {
        BioServiceManager bioServiceManager = this.mBioServiceManager;
        if (bioServiceManager != null) {
            this.mIspService = (IspService) bioServiceManager.getBioService(IspService.class);
        }
        IspService ispService = this.mIspService;
        if (ispService != null) {
            float[] colorTemperature = ispService.getColorTemperature();
            float[][][] awbTable = this.mIspService.getAwbTable();
            this.mIspThread = new HandlerThread("adjustIsp");
            this.mIspThread.start();
            this.mIspThreadHandler = new Handler(this.mIspThread.getLooper());
            this.mToygerIsp = new ToygerIsp();
            this.mToygerIsp.init(i2, i3, i4, i5, i6, colorTemperature, awbTable);
        }
        this.mInitialized = true;
        this.begin = System.currentTimeMillis();
    }

    public boolean isInitialized() {
        return this.mInitialized;
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onCreate(BioServiceManager bioServiceManager) {
        super.onCreate(bioServiceManager);
    }

    @Override // com.alipay.mobile.security.bio.service.BioService
    public void onDestroy() {
        ToygerIsp toygerIsp = this.mToygerIsp;
        if (toygerIsp != null) {
            toygerIsp.release();
        }
        HandlerThread handlerThread = this.mIspThread;
        if (handlerThread != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                handlerThread.quitSafely();
            } else {
                handlerThread.quit();
            }
            this.mIspThread = null;
            this.mIspThreadHandler = null;
        }
        this.ispRunning = false;
        this.mIspService = null;
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustIsp(Rect rect, byte[] bArr, short[] sArr) {
        IspService ispService = this.mIspService;
        if (ispService != null) {
            int aEMode = ispService.getAEMode();
            String str = "adjustIsp begin: getAEMode()=" + aEMode;
            if (aEMode == -1) {
                return;
            }
            if (aEMode == 1) {
                this.mIspService.setAEMode(0);
            }
            try {
                IspResult adjustIsp = this.mToygerIsp.adjustIsp(bArr, sArr, rect, this.mIspService.getExposureTime(), this.mIspService.getISO());
                if (adjustIsp != null) {
                    String str2 = "result.needSet=" + adjustIsp.isNeedSet() + ", result.exposureTime=" + adjustIsp.getExposureTime() + ", result.ISO=" + adjustIsp.getIso();
                    if (adjustIsp.isNeedSet()) {
                        this.mIspService.setExposureTime(adjustIsp.getExposureTime());
                        this.mIspService.setISO(adjustIsp.getIso());
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
