package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;
import e.f.i.a.a.d;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes.dex */
public class GifFrame implements d {

    @DoNotStrip
    private long mNativeContext;

    @DoNotStrip
    GifFrame(long j2) {
        this.mNativeContext = j2;
    }

    @DoNotStrip
    private native void nativeDispose();

    @DoNotStrip
    private native void nativeFinalize();

    @DoNotStrip
    private native int nativeGetDisposalMode();

    @DoNotStrip
    private native int nativeGetDurationMs();

    @DoNotStrip
    private native int nativeGetHeight();

    @DoNotStrip
    private native int nativeGetTransparentPixelColor();

    @DoNotStrip
    private native int nativeGetWidth();

    @DoNotStrip
    private native int nativeGetXOffset();

    @DoNotStrip
    private native int nativeGetYOffset();

    @DoNotStrip
    private native boolean nativeHasTransparency();

    @DoNotStrip
    private native void nativeRenderFrame(int i2, int i3, Bitmap bitmap);

    @Override // e.f.i.a.a.d
    public void a(int i2, int i3, Bitmap bitmap) {
        nativeRenderFrame(i2, i3, bitmap);
    }

    @Override // e.f.i.a.a.d
    public int b() {
        return nativeGetYOffset();
    }

    public int c() {
        return nativeGetDisposalMode();
    }

    @Override // e.f.i.a.a.d
    public void dispose() {
        nativeDispose();
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // e.f.i.a.a.d
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // e.f.i.a.a.d
    public int getWidth() {
        return nativeGetWidth();
    }

    @Override // e.f.i.a.a.d
    public int a() {
        return nativeGetXOffset();
    }
}
