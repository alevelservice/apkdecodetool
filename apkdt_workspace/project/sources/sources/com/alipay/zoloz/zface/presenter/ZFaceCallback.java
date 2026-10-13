package com.alipay.zoloz.zface.presenter;

import android.graphics.Bitmap;
import com.alipay.zoloz.toyger.face.ToygerFaceAttr;
import com.alipay.zoloz.zface.beans.AlertData;
import com.alipay.zoloz.zface.beans.FrameStateData;
import com.alipay.zoloz.zface.beans.PreviewData;
import com.alipay.zoloz.zface.beans.UploadData;

/* loaded from: classes.dex */
public interface ZFaceCallback {
    void handleFinish(boolean z);

    void onErrorEvent(AlertData alertData);

    void onFrameComplete();

    void onFrameQualify(Bitmap bitmap, ToygerFaceAttr toygerFaceAttr);

    void onFrameStateUpdate(FrameStateData frameStateData);

    void onPreviewFrame(PreviewData previewData);

    void onSurfaceviewInit(double d2, double d3);

    void onUploadSuccess(UploadData uploadData);
}
