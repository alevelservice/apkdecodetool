package e.f.c.i;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: LimitedInputStream.java */
/* loaded from: classes.dex */
public class a extends FilterInputStream {

    /* renamed from: e, reason: collision with root package name */
    private int f17186e;

    /* renamed from: f, reason: collision with root package name */
    private int f17187f;

    public a(InputStream inputStream, int i2) {
        super(inputStream);
        if (inputStream == null) {
            throw new NullPointerException();
        }
        if (i2 >= 0) {
            this.f17186e = i2;
            this.f17187f = -1;
            return;
        }
        throw new IllegalArgumentException("limit must be >= 0");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return Math.min(((FilterInputStream) this).in.available(), this.f17186e);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.mark(i2);
            this.f17187f = this.f17186e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (this.f17186e == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f17186e--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.f17187f != -1) {
                ((FilterInputStream) this).in.reset();
                this.f17186e = this.f17187f;
                return;
            }
            throw new IOException("mark not set");
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j2, this.f17186e));
        this.f17186e = (int) (this.f17186e - skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        int i4 = this.f17186e;
        if (i4 == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i2, Math.min(i3, i4));
        if (read > 0) {
            this.f17186e -= read;
        }
        return read;
    }
}
