package com.alipay.zoloz.isp;

import android.graphics.Rect;
import com.alipay.streammedia.devicesengine.DevicesNativeEngineApi;
import com.alipay.streammedia.devicesengine.camera.FaceRectParams;
import com.alipay.streammedia.devicesengine.camera.ImageParams;
import com.alipay.streammedia.devicesengine.camera.IspAdjustResult;
import tv.danmaku.ijk.media.player.IjkLibLoader;

/* loaded from: classes.dex */
public class ToygerIsp {
    private static final String TAG = "ToygerIsp";
    private DevicesNativeEngineApi mEngineApi;

    static {
        try {
            DevicesNativeEngineApi.loadLibrariesOnce((IjkLibLoader) null);
        } catch (Throwable unused) {
        }
    }

    private DevicesNativeEngineApi.ImageType convert(int i2) {
        if (i2 == 0) {
            return DevicesNativeEngineApi.ImageType.NV21;
        }
        if (i2 == 1) {
            return DevicesNativeEngineApi.ImageType.BGR_24;
        }
        if (i2 == 2) {
            return DevicesNativeEngineApi.ImageType.BGR_24;
        }
        if (i2 == 3) {
            return DevicesNativeEngineApi.ImageType.RGBA;
        }
        if (i2 != 4) {
            return DevicesNativeEngineApi.ImageType.NV21;
        }
        return DevicesNativeEngineApi.ImageType.RGB_24;
    }

    public IspResult adjustIsp(byte[] bArr, short[] sArr, Rect rect, long j2, int i2) {
        IspResult ispResult;
        if (this.mEngineApi != null) {
            try {
                FaceRectParams faceRectParams = new FaceRectParams();
                faceRectParams.setX(rect.left);
                faceRectParams.setY(rect.top);
                faceRectParams.setWidth(rect.right - rect.left);
                faceRectParams.setHeight(rect.bottom - rect.top);
                IspAdjustResult ispAdjust = this.mEngineApi.ispAdjust(bArr, sArr, faceRectParams, j2, i2);
                ispResult = new IspResult(ispAdjust.needSet, ispAdjust.exposureTime, ispAdjust.ISO);
            } catch (Throwable unused) {
            }
            String str = "ToygerIsp.adjustIsp(), ispResult=" + ispResult;
            return ispResult;
        }
        ispResult = null;
        String str2 = "ToygerIsp.adjustIsp(), ispResult=" + ispResult;
        return ispResult;
    }

    public void init(int i2, int i3, int i4, int i5, int i6, float[] fArr, float[][][] fArr2) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            this.mEngineApi = new DevicesNativeEngineApi();
            ImageParams imageParams = new ImageParams();
            imageParams.orgWidth = i2;
            imageParams.orgHeight = i3;
            imageParams.dispWidth = i4;
            imageParams.dispHeight = i5;
            this.mEngineApi.ispCreate(imageParams, fArr, fArr2, convert(i6));
        } catch (Throwable unused) {
            this.mEngineApi = null;
        }
        String str = "ToygerIsp.init(): mEngineApi=" + this.mEngineApi + ", cost " + (System.currentTimeMillis() - currentTimeMillis) + " ms.";
    }

    public void release() {
        DevicesNativeEngineApi devicesNativeEngineApi = this.mEngineApi;
        if (devicesNativeEngineApi != null) {
            try {
                devicesNativeEngineApi.ispDestory();
            } catch (Throwable unused) {
            }
        }
    }
}
