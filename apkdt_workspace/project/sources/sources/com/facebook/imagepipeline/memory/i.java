package com.facebook.imagepipeline.memory;

import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* compiled from: BufferMemoryChunk.java */
/* loaded from: classes.dex */
public class i implements t, Closeable {

    /* renamed from: e, reason: collision with root package name */
    private ByteBuffer f3857e;

    /* renamed from: f, reason: collision with root package name */
    private final int f3858f;

    /* renamed from: g, reason: collision with root package name */
    private final long f3859g = System.identityHashCode(this);

    public i(int i2) {
        this.f3857e = ByteBuffer.allocateDirect(i2);
        this.f3858f = i2;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int a(int i2, byte[] bArr, int i3, int i4) {
        int a2;
        com.facebook.common.internal.h.a(bArr);
        com.facebook.common.internal.h.b(!isClosed());
        a2 = v.a(i2, i4, this.f3858f);
        v.a(i2, bArr.length, i3, a2, this.f3858f);
        this.f3857e.position(i2);
        this.f3857e.get(bArr, i3, a2);
        return a2;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized int b(int i2, byte[] bArr, int i3, int i4) {
        int a2;
        com.facebook.common.internal.h.a(bArr);
        com.facebook.common.internal.h.b(!isClosed());
        a2 = v.a(i2, i4, this.f3858f);
        v.a(i2, bArr.length, i3, a2, this.f3858f);
        this.f3857e.position(i2);
        this.f3857e.put(bArr, i3, a2);
        return a2;
    }

    @Override // com.facebook.imagepipeline.memory.t, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f3857e = null;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public int i() {
        return this.f3858f;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public synchronized boolean isClosed() {
        return this.f3857e == null;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long j() {
        return this.f3859g;
    }

    @Override // com.facebook.imagepipeline.memory.t
    @Nullable
    public synchronized ByteBuffer w() {
        return this.f3857e;
    }

    @Override // com.facebook.imagepipeline.memory.t
    public long x() {
        throw new UnsupportedOperationException("Cannot get the pointer of a BufferMemoryChunk");
    }

    @Override // com.facebook.imagepipeline.memory.t
    public void a(int i2, t tVar, int i3, int i4) {
        com.facebook.common.internal.h.a(tVar);
        if (tVar.j() == j()) {
            String str = "Copying from BufferMemoryChunk " + Long.toHexString(j()) + " to BufferMemoryChunk " + Long.toHexString(tVar.j()) + " which are the same ";
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
        if (i2 >= this.f3858f) {
            z = false;
        }
        com.facebook.common.internal.h.a(z);
        return this.f3857e.get(i2);
    }

    private void b(int i2, t tVar, int i3, int i4) {
        if (tVar instanceof i) {
            com.facebook.common.internal.h.b(!isClosed());
            com.facebook.common.internal.h.b(!tVar.isClosed());
            v.a(i2, tVar.i(), i3, i4, this.f3858f);
            this.f3857e.position(i2);
            tVar.w().position(i3);
            byte[] bArr = new byte[i4];
            this.f3857e.get(bArr, 0, i4);
            tVar.w().put(bArr, 0, i4);
            return;
        }
        throw new IllegalArgumentException("Cannot copy two incompatible MemoryChunks");
    }
}
