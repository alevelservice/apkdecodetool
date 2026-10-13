package com.facebook.common.internal;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* compiled from: CountingOutputStream.java */
/* loaded from: classes.dex */
public class c extends FilterOutputStream {

    /* renamed from: e, reason: collision with root package name */
    private long f3530e;

    public c(OutputStream outputStream) {
        super(outputStream);
        this.f3530e = 0L;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterOutputStream) this).out.close();
    }

    public long i() {
        return this.f3530e;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) {
        ((FilterOutputStream) this).out.write(bArr, i2, i3);
        this.f3530e += i3;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i2) {
        ((FilterOutputStream) this).out.write(i2);
        this.f3530e++;
    }
}
