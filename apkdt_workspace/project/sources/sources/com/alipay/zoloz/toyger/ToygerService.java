package com.alipay.zoloz.toyger;

import android.content.Context;
import android.graphics.PointF;
import com.alipay.zoloz.toyger.ToygerAlgorithmConfig;
import com.alipay.zoloz.toyger.ToygerAttr;
import com.alipay.zoloz.toyger.ToygerBiometricInfo;
import com.alipay.zoloz.toyger.ToygerCallback;
import com.alipay.zoloz.toyger.ToygerState;
import com.alipay.zoloz.toyger.algorithm.IToygerDelegate;
import com.alipay.zoloz.toyger.algorithm.TGDepthFrame;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ToygerService<C extends ToygerCallback, State extends ToygerState, Attr extends ToygerAttr, Info extends ToygerBiometricInfo, AlgorithmConfig extends ToygerAlgorithmConfig> implements IToygerDelegate<State, Attr, Info> {
    public static final String ASSET_DOC = "toyger.doc.dat";
    public static final String ASSET_FACE = "toyger.face.dat";
    public static final String ASSET_LICENSE = "toyger.license";
    public static final String KEY_DOC_FRAME_RECT = "docFrameRect";
    public static final String KEY_IS_MIRROR = "is_mirror";
    public static final String KEY_META_SERIALIZER = "meta_serializer";
    public static final String KEY_PUBLIC_KEY = "pubkey";
    public static final String KEY_RES_9_CONTENT = "content";
    public static final String KEY_RES_9_IS_UTF8 = "isUTF8";
    public static final String KEY_RES_9_KEY = "key";
    public static final String KEY_ROI = "ROI";
    public static final String KEY_ROTATE_TIMES = "rotateTimes";
    public static final String TAG = "TOYGER";
    protected C mToygerCallback;

    public static boolean preLoad(Context context) {
        return false;
    }

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public PointF handleAlignDepthPoint(PointF pointF) {
        return this.mToygerCallback.onAlignDepthPoint(pointF);
    }

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public abstract void handleCaptureCompleted(int i2, List<Info> list, Map<String, Object> map);

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleEventTriggered(int i2, String str) {
        String str2 = "handleEventTriggered() eventCode=" + i2 + ", message=" + str;
        this.mToygerCallback.onEvent(i2, null);
    }

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public abstract void handleInfoReady(TGFrame tGFrame, Attr attr);

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public void handleLog(int i2, String str, byte[] bArr) {
        String str2 = "handleLog() logLevel=" + i2 + ", log=" + str;
    }

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public abstract void handleScanCompleted(int i2, List<Info> list, Map<String, Object> map);

    @Override // com.alipay.zoloz.toyger.algorithm.IToygerDelegate
    public abstract void handleStateUpdated(State state, Attr attr);

    public abstract boolean init(Context context, C c2, String str, String str2, Map<String, Object> map);

    public abstract boolean processImage(List<TGFrame> list, TGDepthFrame tGDepthFrame);

    public abstract void release();

    public abstract void reset();
}
