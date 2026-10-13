package com.alipay.zoloz.hardware.camera;

import java.nio.ByteBuffer;
import java.nio.ShortBuffer;

/* loaded from: classes.dex */
public class CameraData {
    public static final int MODE_BGR = 2;
    public static final int MODE_BGRA = 1;
    public static final int MODE_NV21 = 0;
    public static final int MODE_RGB = 4;
    public static final int MODE_RGBA = 3;
    ByteBuffer mColorData;
    int mColorFrameMode;
    int mColorHeight;
    int mColorWidth;
    ShortBuffer mDepthData;
    int mDepthHeight;
    int mDepthWidth;
    boolean mMirror;
    int mPreviewHeight;
    int mPreviewWidth;

    public CameraData() {
    }

    public CameraData deepClone() {
        CameraData cameraData = new CameraData();
        cameraData.mColorData = ByteBuffer.allocate(this.mColorData.capacity());
        this.mColorData.rewind();
        cameraData.mColorData.put(this.mColorData);
        this.mColorData.rewind();
        cameraData.mColorData.rewind();
        cameraData.mColorWidth = this.mColorWidth;
        cameraData.mColorHeight = this.mColorHeight;
        cameraData.mColorFrameMode = this.mColorFrameMode;
        ShortBuffer shortBuffer = this.mDepthData;
        if (shortBuffer != null) {
            cameraData.mDepthData = ShortBuffer.allocate(shortBuffer.capacity());
            this.mDepthData.rewind();
            cameraData.mDepthData.put(this.mDepthData);
            this.mDepthData.rewind();
            cameraData.mDepthData.rewind();
        } else {
            cameraData.mDepthData = null;
        }
        cameraData.mDepthWidth = this.mDepthWidth;
        cameraData.mDepthHeight = this.mDepthHeight;
        cameraData.mPreviewWidth = this.mPreviewWidth;
        cameraData.mPreviewHeight = this.mPreviewHeight;
        cameraData.mMirror = this.mMirror;
        return cameraData;
    }

    public ByteBuffer getColorData() {
        return this.mColorData;
    }

    public int getColorFrameMode() {
        return this.mColorFrameMode;
    }

    public int getColorHeight() {
        return this.mColorHeight;
    }

    public int getColorWidth() {
        return this.mColorWidth;
    }

    public ShortBuffer getDepthData() {
        return this.mDepthData;
    }

    public int getDepthHeight() {
        return this.mDepthHeight;
    }

    public int getDepthWidth() {
        return this.mDepthWidth;
    }

    public boolean getMirror() {
        return this.mMirror;
    }

    public int getPreviewHeight() {
        return this.mPreviewHeight;
    }

    public int getPreviewWidth() {
        return this.mPreviewWidth;
    }

    public void recycle() {
        this.mColorData = null;
        this.mDepthData = null;
    }

    public void setColorData(ByteBuffer byteBuffer) {
        this.mColorData = byteBuffer;
    }

    public void setColorFrameMode(int i2) {
        this.mColorFrameMode = i2;
    }

    public void setColorHeight(int i2) {
        this.mColorHeight = i2;
    }

    public void setColorWidth(int i2) {
        this.mColorWidth = i2;
    }

    public void setDepthData(ShortBuffer shortBuffer) {
        this.mDepthData = shortBuffer;
    }

    public void setDepthHeight(int i2) {
        this.mDepthHeight = i2;
    }

    public void setDepthWidth(int i2) {
        this.mDepthWidth = i2;
    }

    public void setMirror(boolean z) {
        this.mMirror = z;
    }

    public void setPreviewHeight(int i2) {
        this.mPreviewHeight = i2;
    }

    public void setPreviewWidth(int i2) {
        this.mPreviewWidth = i2;
    }

    public String toString() {
        return "CameraData{, mColorWidth=" + this.mColorWidth + ", mColorHeight=" + this.mColorHeight + ", mColorFrameMode=" + this.mColorFrameMode + ", mDepthWidth=" + this.mDepthWidth + ", mDepthHeight=" + this.mDepthHeight + ", mPreviewWidth=" + this.mPreviewWidth + ", mPreviewHeight=" + this.mPreviewHeight + ", mMirror=" + this.mMirror + '}';
    }

    public CameraData(ByteBuffer byteBuffer, int i2, int i3, int i4, ShortBuffer shortBuffer, int i5, int i6, int i7, int i8) {
        this(byteBuffer, i2, i3, i4, shortBuffer, i5, i6, i7, i8, false);
    }

    public CameraData(ByteBuffer byteBuffer, int i2, int i3, int i4, ShortBuffer shortBuffer, int i5, int i6, int i7, int i8, boolean z) {
        this.mColorData = byteBuffer;
        this.mColorWidth = i2;
        this.mColorHeight = i3;
        this.mColorFrameMode = i4;
        this.mDepthData = shortBuffer;
        this.mDepthWidth = i5;
        this.mDepthHeight = i6;
        this.mPreviewWidth = i7;
        this.mPreviewHeight = i8;
        this.mMirror = z;
    }
}
