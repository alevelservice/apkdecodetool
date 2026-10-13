package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: MemoryPooledByteBufferOutputStream.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class y extends e.f.c.f.j {

    /* renamed from: e, reason: collision with root package name */
    private final u f3878e;

    /* renamed from: f, reason: collision with root package name */
    private e.f.c.g.a<t> f3879f;

    /* renamed from: g, reason: collision with root package name */
    private int f3880g;

    /* compiled from: MemoryPooledByteBufferOutputStream.java */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        public a() {
            super("OutputStream no longer valid");
        }
    }

    public y(u uVar) {
        this(uVar, uVar.d());
    }

    private void j() {
        if (!e.f.c.g.a.c(this.f3879f)) {
            throw new a();
        }
    }

    @VisibleForTesting
    void c(int i2) {
        j();
        if (i2 <= this.f3879f.A().i()) {
            return;
        }
        t tVar = this.f3878e.get(i2);
        this.f3879f.A().a(0, tVar, 0, this.f3880g);
        this.f3879f.close();
        this.f3879f = e.f.c.g.a.a(tVar, this.f3878e);
    }

    @Override // e.f.c.f.j, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        e.f.c.g.a.b(this.f3879f);
        this.f3879f = null;
        this.f3880g = -1;
        super.close();
    }

    @Override // e.f.c.f.j
    public int size() {
        return this.f3880g;
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        write(new byte[]{(byte) i2});
    }

    public y(u uVar, int i2) {
        com.facebook.common.internal.h.a(i2 > 0);
        com.facebook.common.internal.h.a(uVar);
        this.f3878e = uVar;
        this.f3880g = 0;
        this.f3879f = e.f.c.g.a.a(this.f3878e.get(i2), this.f3878e);
    }

    @Override // e.f.c.f.j
    public w i() {
        j();
        return new w(this.f3879f, this.f3880g);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) {
        if (i2 >= 0 && i3 >= 0 && i2 + i3 <= bArr.length) {
            j();
            c(this.f3880g + i3);
            this.f3879f.A().b(this.f3880g, bArr, i2, i3);
            this.f3880g += i3;
            return;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i2 + "; regionLength=" + i3);
    }
}
