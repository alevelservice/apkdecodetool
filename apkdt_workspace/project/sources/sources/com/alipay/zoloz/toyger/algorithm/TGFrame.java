package com.alipay.zoloz.toyger.algorithm;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public class TGFrame {
    public static final int MODE_BGR = 2;
    public static final int MODE_BGRA = 1;
    public static final int MODE_NV21 = 0;
    public static final int MODE_RGB = 4;
    public static final int MODE_RGBA = 3;
    public static final int TYPE_DARK = 1;
    public static final int TYPE_DEPTH = 2;
    public static final int TYPE_LIGHT = 0;
    public ByteBuffer byteBuffer;
    public byte[] data;
    public int frameMode;
    public int frameType;
    public int height;
    public int rotation;
    public int width;

    public TGFrame() {
    }

    public TGFrame deepCopy() {
        try {
            TGFrame tGFrame = new TGFrame((byte[]) null, this.width, this.height, this.rotation, this.frameMode, this.frameType);
            if (this.data != null && this.data.length != 0) {
                tGFrame.data = Arrays.copyOf(this.data, this.data.length);
            } else if (this.byteBuffer != null) {
                ByteBuffer allocate = ByteBuffer.allocate(this.byteBuffer.capacity());
                this.byteBuffer.rewind();
                allocate.put(this.byteBuffer);
                this.byteBuffer.rewind();
                allocate.rewind();
                tGFrame.data = allocate.array();
            }
            return tGFrame;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    public void recycle() {
        this.data = null;
        this.byteBuffer = null;
    }

    public String toString() {
        return "TGFrame{data=***, width=" + this.width + ", height=" + this.height + ", rotation=" + this.rotation + ", frameMode=" + this.frameMode + ", frameType=" + this.frameType + '}';
    }

    public TGFrame(byte[] bArr, int i2, int i3, int i4, int i5, int i6) {
        this.data = bArr;
        this.width = i2;
        this.height = i3;
        this.rotation = i4;
        this.frameMode = i5;
        this.frameType = i6;
    }

    public TGFrame(ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, int i6) {
        this.byteBuffer = byteBuffer;
        this.width = i2;
        this.height = i3;
        this.rotation = i4;
        this.frameMode = i5;
        this.frameType = i6;
    }

    public TGFrame(TGFrame tGFrame) {
        if (tGFrame != null) {
            byte[] bArr = tGFrame.data;
            if (bArr != null) {
                this.data = (byte[]) bArr.clone();
            }
            this.width = tGFrame.width;
            this.height = tGFrame.height;
            this.rotation = tGFrame.rotation;
            this.frameMode = tGFrame.frameMode;
            this.frameType = tGFrame.frameType;
            this.byteBuffer = tGFrame.byteBuffer;
        }
    }
}
