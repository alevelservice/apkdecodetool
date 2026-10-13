package com.alipay.zoloz.toyger.algorithm;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public class TGDepthFrame {
    public short[] data;
    public int height;
    public int rotation;
    public ShortBuffer shortBuffer;
    public int width;

    public TGDepthFrame() {
    }

    public void assign(TGDepthFrame tGDepthFrame) {
        this.width = tGDepthFrame.width;
        this.height = tGDepthFrame.height;
        this.rotation = tGDepthFrame.rotation;
        short[] sArr = tGDepthFrame.data;
        if (sArr != null) {
            this.data = Arrays.copyOf(sArr, sArr.length);
            return;
        }
        ShortBuffer shortBuffer = tGDepthFrame.shortBuffer;
        if (shortBuffer != null) {
            this.shortBuffer = ShortBuffer.allocate(shortBuffer.capacity());
            tGDepthFrame.shortBuffer.rewind();
            this.shortBuffer.put(tGDepthFrame.shortBuffer);
            tGDepthFrame.shortBuffer.rewind();
            this.shortBuffer.rewind();
            this.data = this.shortBuffer.array();
        }
    }

    public void recycle() {
        this.data = null;
        this.shortBuffer = null;
    }

    public String toString() {
        return "TGDepthFrame{data=***, width=" + this.width + ", height=" + this.height + ", rotation=" + this.rotation + '}';
    }

    public TGDepthFrame(short[] sArr, int i2, int i3, int i4) {
        this.data = sArr;
        this.width = i2;
        this.height = i3;
        this.rotation = i4;
    }

    public TGDepthFrame(ShortBuffer shortBuffer, int i2, int i3, int i4) {
        this.shortBuffer = shortBuffer;
        this.width = i2;
        this.height = i3;
        this.rotation = i4;
    }

    public TGDepthFrame(TGDepthFrame tGDepthFrame) {
        if (tGDepthFrame != null) {
            short[] sArr = tGDepthFrame.data;
            if (sArr != null) {
                this.data = (short[]) sArr.clone();
            }
            this.width = tGDepthFrame.width;
            this.height = tGDepthFrame.height;
            this.rotation = tGDepthFrame.rotation;
            this.shortBuffer = tGDepthFrame.shortBuffer;
        }
    }
}
