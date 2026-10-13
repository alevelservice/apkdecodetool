package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: MemoryPooledByteBufferFactory.java */
@ThreadSafe
/* loaded from: classes.dex */
public class x implements e.f.c.f.h {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.c.f.k f3876a;

    /* renamed from: b, reason: collision with root package name */
    private final u f3877b;

    public x(u uVar, e.f.c.f.k kVar) {
        this.f3877b = uVar;
        this.f3876a = kVar;
    }

    @Override // e.f.c.f.h
    public w a(InputStream inputStream) {
        y yVar = new y(this.f3877b);
        try {
            return a(inputStream, yVar);
        } finally {
            yVar.close();
        }
    }

    @Override // e.f.c.f.h
    public w a(byte[] bArr) {
        y yVar = new y(this.f3877b, bArr.length);
        try {
            try {
                yVar.write(bArr, 0, bArr.length);
                return yVar.i();
            } catch (IOException e2) {
                com.facebook.common.internal.l.a(e2);
                throw null;
            }
        } finally {
            yVar.close();
        }
    }

    @Override // e.f.c.f.h
    public w a(InputStream inputStream, int i2) {
        y yVar = new y(this.f3877b, i2);
        try {
            return a(inputStream, yVar);
        } finally {
            yVar.close();
        }
    }

    @VisibleForTesting
    w a(InputStream inputStream, y yVar) {
        this.f3876a.a(inputStream, yVar);
        return yVar.i();
    }

    @Override // e.f.c.f.h
    public y a() {
        return new y(this.f3877b);
    }

    @Override // e.f.c.f.h
    public y a(int i2) {
        return new y(this.f3877b, i2);
    }
}
