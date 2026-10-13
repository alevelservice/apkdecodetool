package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.VisibleForTesting;
import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

@DoNotStrip
/* loaded from: classes.dex */
public class NativeMemoryChunk implements t, Closeable {

    /* renamed from: e, reason: collision with root package name */
    private final long f3783e;

    /* renamed from: f, reason: collision with root package name */
    private final int f3784f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f3785g;

    static {
        com.facebook.imagepipeline.nativecode.a.a();
    }

    public NativeMemoryChunk(int i2) {
        com.facebook.common.internal.h.a(i2 > 0);
        this.f3784f = i2;
        this.f3783e = nativeAllocate(this.f3784f);
        this.f3785g = false;
    }

    @DoNotStrip
    private static native long nativeAllocate(int i2);

    @DoNotStrip
    private static native void nativeCopyFromByteArray(long j2, byte[] bArr, int i2, int i3);

    @DoNotStrip
    private static native void nativeCopyToByteArray(long j2, byte[] bArr, int i2, int i3);

    @DoNotStrip
    private static native void nativeFree(long j2);

    @DoNotStrip
    private static native void nativeMemcpy(long j2, long j3, int i2);

    @DoNotStrip
    private static native byte nativeReadByte(long j2);

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int a(int i2, byte[] bArr, int i3, int i4) {
        int a2;
        com.facebook.common.internal.h.a(bArr);
        com.facebook.common.internal.h.b(!isClosed());
        a2 = v.a(i2, i4, this.f3784f);
        v.a(i2, bArr.length, i3, a2, this.f3784f);
        nativeCopyToByteArray(this.f3783e + i2, bArr, i3, a2);
        return a2;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int b(int i2, byte[] bArr, int i3, int i4) {
        int a2;
        com.facebook.common.internal.h.a(bArr);
        com.facebook.common.internal.h.b(!isClosed());
        a2 = v.a(i2, i4, this.f3784f);
        v.a(i2, bArr.length, i3, a2, this.f3784f);
        nativeCopyFromByteArray(this.f3783e + i2, bArr, i3, a2);
        return a2;
    }

    @Override // com.facebook.imagepipeline.memory.t, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (!this.f3785g) {
            this.f3785g = true;
            nativeFree(this.f3783e);
        }
    }

    protected void finalize() {
        if (isClosed()) {
            return;
        }
        String str = "finalize: Chunk " + Integer.toHexString(System.identityHashCode(this)) + " still active. ";
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // com.facebook.imagepipeline.memory.t
    public int i() {
        return this.f3784f;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized boolean isClosed() {
        return this.f3785g;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long j() {
        return this.f3783e;
    }

    @Override // com.facebook.imagepipeline.memory.t
    @Nullable
    public ByteBuffer w() {
        return null;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long x() {
        return this.f3783e;
    }

    @VisibleForTesting
    public NativeMemoryChunk() {
        this.f3784f = 0;
        this.f3783e = 0L;
        this.f3785g = true;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public void a(int i2, t tVar, int i3, int i4) {
        com.facebook.common.internal.h.a(tVar);
        if (tVar.j() == j()) {
            String str = "Copying from NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(this)) + " to NativeMemoryChunk " + Integer.toHexString(System.identityHashCode(tVar)) + " which share the same address " + Long.toHexString(this.f3783e);
            com.facebook.common.internal.h.a(false);
        }
        if (tVar.j() < j()) {
            synchronized (tVar) {
                synchronized (this) {
                    b(i2, tVar, i3, i4);
                }
            }
        } else {
            synchronized (this) {
                synchronized (tVar) {
                    b(i2, tVar, i3, i4);
                }
            }
        }
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized byte b(int i2) {
        boolean z = true;
        com.facebook.common.internal.h.b(!isClosed());
        com.facebook.common.internal.h.a(i2 >= 0);
        if (i2 >= this.f3784f) {
            z = false;
        }
        com.facebook.common.internal.h.a(z);
        return nativeReadByte(this.f3783e + i2);
    }

    private void b(int i2, t tVar, int i3, int i4) {
        if (tVar instanceof NativeMemoryChunk) {
            com.facebook.common.internal.h.b(!isClosed());
            com.facebook.common.internal.h.b(!tVar.isClosed());
            v.a(i2, tVar.i(), i3, i4, this.f3784f);
            nativeMemcpy(tVar.x() + i3, this.f3783e + i2, i4);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }
}
