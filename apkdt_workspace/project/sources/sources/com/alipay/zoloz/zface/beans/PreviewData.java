package com.alipay.zoloz.zface.beans;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class PreviewData {
    public int frameMode;
    public ByteBuffer rgbData;
    public int rotation;

    public String toString() {
        return "PreviewData{rgbData=" + this.rgbData + ", rotation=" + this.rotation + ", frameMode=" + this.frameMode + '}';
    }
}
