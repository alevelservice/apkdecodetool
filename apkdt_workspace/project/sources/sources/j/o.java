package j;

import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealBufferedSink.java */
/* loaded from: classes2.dex */
public final class o implements d {

    /* renamed from: e, reason: collision with root package name */
    public final c f19667e = new c();

    /* renamed from: f, reason: collision with root package name */
    public final t f19668f;

    /* renamed from: g, reason: collision with root package name */
    boolean f19669g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(t tVar) {
        if (tVar != null) {
            this.f19668f = tVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // j.d
    public c a() {
        return this.f19667e;
    }

    @Override // j.d
    public d b(long j2) {
        if (!this.f19669g) {
            this.f19667e.b(j2);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19669g) {
            return;
        }
        try {
            if (this.f19667e.f19640f > 0) {
                this.f19668f.a(this.f19667e, this.f19667e.f19640f);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f19668f.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f19669g = true;
        if (th == null) {
            return;
        }
        w.a(th);
        throw null;
    }

    @Override // j.d, j.t, java.io.Flushable
    public void flush() {
        if (!this.f19669g) {
            c cVar = this.f19667e;
            long j2 = cVar.f19640f;
            if (j2 > 0) {
                this.f19668f.a(cVar, j2);
            }
            this.f19668f.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f19669g;
    }

    @Override // j.t
    public v timeout() {
        return this.f19668f.timeout();
    }

    public String toString() {
        return "buffer(" + this.f19668f + ")";
    }

    @Override // j.d
    public d write(byte[] bArr) {
        if (!this.f19669g) {
            this.f19667e.write(bArr);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d writeByte(int i2) {
        if (!this.f19669g) {
            this.f19667e.writeByte(i2);
            return b();
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d writeInt(int i2) {
        if (!this.f19669g) {
            this.f19667e.writeInt(i2);
            return b();
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d writeShort(int i2) {
        if (!this.f19669g) {
            this.f19667e.writeShort(i2);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.t
    public void a(c cVar, long j2) {
        if (!this.f19669g) {
            this.f19667e.a(cVar, j2);
            b();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d b() {
        if (!this.f19669g) {
            long w = this.f19667e.w();
            if (w > 0) {
                this.f19668f.a(this.f19667e, w);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d write(byte[] bArr, int i2, int i3) {
        if (!this.f19669g) {
            this.f19667e.write(bArr, i2, i3);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d a(f fVar) {
        if (!this.f19669g) {
            this.f19667e.a(fVar);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (!this.f19669g) {
            int write = this.f19667e.write(byteBuffer);
            b();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d a(String str) {
        if (!this.f19669g) {
            this.f19667e.a(str);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public long a(u uVar) {
        if (uVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long b2 = uVar.b(this.f19667e, 8192L);
            if (b2 == -1) {
                return j2;
            }
            j2 += b2;
            b();
        }
    }

    @Override // j.d
    public d a(int i2) {
        if (!this.f19669g) {
            this.f19667e.a(i2);
            b();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // j.d
    public d a(long j2) {
        if (!this.f19669g) {
            this.f19667e.a(j2);
            return b();
        }
        throw new IllegalStateException("closed");
    }
}
