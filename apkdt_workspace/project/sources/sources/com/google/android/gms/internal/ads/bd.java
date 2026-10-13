package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bd extends ByteArrayOutputStream {

    /* renamed from: e, reason: collision with root package name */
    private final y4 f5763e;

    public bd(y4 y4Var, int i2) {
        this.f5763e = y4Var;
        ((ByteArrayOutputStream) this).buf = this.f5763e.a(Math.max(i2, 256));
    }

    private final void c(int i2) {
        int i3 = ((ByteArrayOutputStream) this).count;
        if (i3 + i2 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] a2 = this.f5763e.a((i3 + i2) << 1);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, a2, 0, ((ByteArrayOutputStream) this).count);
        this.f5763e.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = a2;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5763e.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.f5763e.a(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i2, int i3) {
        c(i3);
        super.write(bArr, i2, i3);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i2) {
        c(1);
        super.write(i2);
    }
}
