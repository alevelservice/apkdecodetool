package e.f.c.i;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: TailAppendingInputStream.java */
/* loaded from: classes.dex */
public class b extends FilterInputStream {

    /* renamed from: e, reason: collision with root package name */
    private final byte[] f17188e;

    /* renamed from: f, reason: collision with root package name */
    private int f17189f;

    /* renamed from: g, reason: collision with root package name */
    private int f17190g;

    public b(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        if (inputStream == null) {
            throw new NullPointerException();
        }
        if (bArr != null) {
            this.f17188e = bArr;
            return;
        }
        throw new NullPointerException();
    }

    private int i() {
        int i2 = this.f17189f;
        byte[] bArr = this.f17188e;
        if (i2 >= bArr.length) {
            return -1;
        }
        this.f17189f = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        if (((FilterInputStream) this).in.markSupported()) {
            super.mark(i2);
            this.f17190g = this.f17189f;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = ((FilterInputStream) this).in.read();
        return read != -1 ? read : i();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.reset();
            this.f17189f = this.f17190g;
            return;
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) {
        int read = ((FilterInputStream) this).in.read(bArr, i2, i3);
        if (read != -1) {
            return read;
        }
        int i4 = 0;
        if (i3 == 0) {
            return 0;
        }
        while (i4 < i3) {
            int i5 = i();
            if (i5 == -1) {
                break;
            }
            bArr[i2 + i4] = (byte) i5;
            i4++;
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }
}
