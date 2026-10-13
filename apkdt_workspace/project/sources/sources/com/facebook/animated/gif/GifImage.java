package com.facebook.animated.gif;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.h;
import com.facebook.soloader.SoLoader;
import e.f.i.a.a.b;
import e.f.i.a.a.c;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.ThreadSafe;

@DoNotStrip
@ThreadSafe
/* loaded from: classes.dex */
public class GifImage implements c, e.f.i.a.b.c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f3452a;

    @DoNotStrip
    private long mNativeContext;

    @DoNotStrip
    public GifImage() {
    }

    private static b.EnumC0193b c(int i2) {
        if (i2 == 0) {
            return b.EnumC0193b.DISPOSE_DO_NOT;
        }
        if (i2 == 1) {
            return b.EnumC0193b.DISPOSE_DO_NOT;
        }
        if (i2 == 2) {
            return b.EnumC0193b.DISPOSE_TO_BACKGROUND;
        }
        if (i2 == 3) {
            return b.EnumC0193b.DISPOSE_TO_PREVIOUS;
        }
        return b.EnumC0193b.DISPOSE_DO_NOT;
    }

    private static synchronized void f() {
        synchronized (GifImage.class) {
            if (!f3452a) {
                f3452a = true;
                SoLoader.a("gifimage");
            }
        }
    }

    @DoNotStrip
    private static native GifImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer);

    @DoNotStrip
    private static native GifImage nativeCreateFromNativeMemory(long j2, int i2);

    @DoNotStrip
    private native void nativeDispose();

    @DoNotStrip
    private native void nativeFinalize();

    @DoNotStrip
    private native int nativeGetDuration();

    @DoNotStrip
    private native GifFrame nativeGetFrame(int i2);

    @DoNotStrip
    private native int nativeGetFrameCount();

    @DoNotStrip
    private native int[] nativeGetFrameDurations();

    @DoNotStrip
    private native int nativeGetHeight();

    @DoNotStrip
    private native int nativeGetLoopCount();

    @DoNotStrip
    private native int nativeGetSizeInBytes();

    @DoNotStrip
    private native int nativeGetWidth();

    @Override // e.f.i.a.b.c
    public c a(long j2, int i2) {
        return b(j2, i2);
    }

    @Override // e.f.i.a.a.c
    public boolean c() {
        return false;
    }

    @Override // e.f.i.a.a.c
    public int[] d() {
        return nativeGetFrameDurations();
    }

    @Override // e.f.i.a.a.c
    public int e() {
        return nativeGetSizeInBytes();
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // e.f.i.a.a.c
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // e.f.i.a.a.c
    public int getWidth() {
        return nativeGetWidth();
    }

    @DoNotStrip
    GifImage(long j2) {
        this.mNativeContext = j2;
    }

    public static GifImage b(ByteBuffer byteBuffer) {
        f();
        byteBuffer.rewind();
        return nativeCreateFromDirectByteBuffer(byteBuffer);
    }

    @Override // e.f.i.a.b.c
    public c a(ByteBuffer byteBuffer) {
        return b(byteBuffer);
    }

    @Override // e.f.i.a.a.c
    public int a() {
        return nativeGetFrameCount();
    }

    @Override // e.f.i.a.a.c
    public b a(int i2) {
        GifFrame b2 = b(i2);
        try {
            return new b(i2, b2.a(), b2.b(), b2.getWidth(), b2.getHeight(), b.a.BLEND_WITH_PREVIOUS, c(b2.c()));
        } finally {
            b2.dispose();
        }
    }

    public static GifImage b(long j2, int i2) {
        f();
        h.a(j2 != 0);
        return nativeCreateFromNativeMemory(j2, i2);
    }

    @Override // e.f.i.a.a.c
    public int b() {
        int nativeGetLoopCount = nativeGetLoopCount();
        if (nativeGetLoopCount == -1) {
            return 1;
        }
        if (nativeGetLoopCount != 0) {
            return nativeGetLoopCount + 1;
        }
        return 0;
    }

    @Override // e.f.i.a.a.c
    public GifFrame b(int i2) {
        return nativeGetFrame(i2);
    }
}
