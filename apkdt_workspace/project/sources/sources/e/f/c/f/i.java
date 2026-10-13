package e.f.c.f;

import com.facebook.common.internal.VisibleForTesting;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: PooledByteBufferInputStream.java */
@NotThreadSafe
/* loaded from: classes.dex */
public class i extends InputStream {

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final g f17160e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    int f17161f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    int f17162g;

    public i(g gVar) {
        com.facebook.common.internal.h.a(!gVar.isClosed());
        com.facebook.common.internal.h.a(gVar);
        this.f17160e = gVar;
        this.f17161f = 0;
        this.f17162g = 0;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f17160e.size() - this.f17161f;
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f17162g = this.f17161f;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        if (available() <= 0) {
            return -1;
        }
        g gVar = this.f17160e;
        int i2 = this.f17161f;
        this.f17161f = i2 + 1;
        return gVar.b(i2) & 255;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f17161f = this.f17162g;
    }

    @Override // java.io.InputStream
    public long skip(long j2) {
        com.facebook.common.internal.h.a(j2 >= 0);
        int min = Math.min((int) j2, available());
        this.f17161f += min;
        return min;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        if (i2 >= 0 && i3 >= 0 && i2 + i3 <= bArr.length) {
            int available = available();
            if (available <= 0) {
                return -1;
            }
            if (i3 <= 0) {
                return 0;
            }
            int min = Math.min(available, i3);
            this.f17160e.a(this.f17161f, bArr, i2, min);
            this.f17161f += min;
            return min;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + bArr.length + "; regionStart=" + i2 + "; regionLength=" + i3);
    }
}
