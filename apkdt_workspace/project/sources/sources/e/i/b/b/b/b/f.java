package e.i.b.b.b.b;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class f extends FilterInputStream {

    /* renamed from: e, reason: collision with root package name */
    private long f17817e;

    /* renamed from: f, reason: collision with root package name */
    private long f17818f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(InputStream inputStream, long j2) {
        super(inputStream);
        this.f17818f = -1L;
        if (inputStream == null) {
            throw null;
        }
        this.f17817e = 1048577L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.f17817e);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i2) {
        ((FilterInputStream) this).in.mark(i2);
        this.f17818f = this.f17817e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.f17817e == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f17817e--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f17818f != -1) {
            ((FilterInputStream) this).in.reset();
            this.f17817e = this.f17818f;
        } else {
            throw new IOException("Mark not set");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j2, this.f17817e));
        this.f17817e -= skip;
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) {
        long j2 = this.f17817e;
        if (j2 == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i2, (int) Math.min(i3, j2));
        if (read != -1) {
            this.f17817e -= read;
        }
        return read;
    }
}
