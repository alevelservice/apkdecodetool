package com.alipay.zoloz.toyger;

import android.graphics.Bitmap;
import android.graphics.PointF;
import com.alipay.zoloz.toyger.ToygerAttr;
import com.alipay.zoloz.toyger.ToygerState;
import java.util.Map;

/* loaded from: classes.dex */
public interface ToygerCallback<State extends ToygerState, Attr extends ToygerAttr> {
    public static final int EVENT_CODE_DARK_SCREEN = -1;
    public static final int EVENT_CODE_DOC_PARM_ERROR = -5;
    public static final int EVENT_CODE_INIT_FAIL = -4;
    public static final int EVENT_CODE_INIT_SUCCESS = 1;
    public static final int EVENT_CODE_LIVENESS_FAILED = -3;
    public static final int EVENT_CODE_LOG = -6;
    public static final int EVENT_CODE_MODEL_ERROR = -2;
    public static final int EVENT_CODE_MONITOR_LOG = -7;

    PointF onAlignDepthPoint(PointF pointF);

    boolean onComplete(int i2, byte[] bArr, byte[] bArr2, boolean z);

    boolean onEvent(int i2, Map<String, Object> map);

    boolean onHighQualityFrame(Bitmap bitmap, Attr attr);

    boolean onStateUpdated(State state, Attr attr, Map<String, Object> map);
}
