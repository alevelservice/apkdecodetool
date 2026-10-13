package e.f.c.f;

import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: PooledByteArrayBufferedInputStream.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class f extends InputStream {

    /* renamed from: e, reason: collision with root package name */
    private final InputStream f17154e;

    /* renamed from: f, reason: collision with root package name */
    private final byte[] f17155f;

    /* renamed from: g, reason: collision with root package name */
    private final e.f.c.g.c<byte[]> f17156g;

    /* renamed from: h, reason: collision with root package name */
    private int f17157h;

    /* renamed from: i, reason: collision with root package name */
    private int f17158i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f17159j;

    public f(InputStream inputStream, byte[] bArr, e.f.c.g.c<byte[]> cVar) {
        com.facebook.common.internal.h.a(inputStream);
        this.f17154e = inputStream;
        com.facebook.common.internal.h.a(bArr);
        this.f17155f = bArr;
        com.facebook.common.internal.h.a(cVar);
        this.f17156g = cVar;
        this.f17157h = 0;
        this.f17158i = 0;
        this.f17159j = false;
    }

    private boolean i() {
        if (this.f17158i < this.f17157h) {
            return true;
        }
        int read = this.f17154e.read(this.f17155f);
        if (read <= 0) {
            return false;
        }
        this.f17157h = read;
        this.f17158i = 0;
        return true;
    }

    private void j() {
        if (this.f17159j) {
            throw new IOException("stream already closed");
        }
    }

    @Override // java.io.InputStream
    public int available() {
        com.facebook.common.internal.h.b(this.f17158i <= this.f17157h);
        j();
        return (this.f17157h - this.f17158i) + this.f17154e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f17159j) {
            return;
        }
        this.f17159j = true;
        this.f17156g.a(this.f17155f);
        super.close();
    }

    protected void finalize() {
        if (!this.f17159j) {
            e.f.c.d.a.b("PooledByteInputStream", "Finalized without closing");
            close();
        }
        super.finalize();
    }

    @Override // java.io.InputStream
    public int read() {
        com.facebook.common.internal.h.b(this.f17158i <= this.f17157h);
        j();
        if (!i()) {
            return -1;
        }
        byte[] bArr = this.f17155f;
        int i2 = this.f17158i;
        this.f17158i = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.InputStream
    public long skip(long j2) {
        com.facebook.common.internal.h.b(this.f17158i <= this.f17157h);
        j();
        int i2 = this.f17157h;
        int i3 = this.f17158i;
        long j3 = i2 - i3;
        if (j3 >= j2) {
            this.f17158i = (int) (i3 + j2);
            return j2;
        }
        this.f17158i = i2;
        return j3 + this.f17154e.skip(j2 - j3);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        com.facebook.common.internal.h.b(this.f17158i <= this.f17157h);
        j();
        if (!i()) {
            return -1;
        }
        int min = Math.min(this.f17157h - this.f17158i, i3);
        System.arraycopy(this.f17155f, this.f17158i, bArr, i2, min);
        this.f17158i += min;
        return min;
    }
}
