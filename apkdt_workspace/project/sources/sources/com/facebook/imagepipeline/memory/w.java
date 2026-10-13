package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import e.f.c.f.g;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: MemoryPooledByteBuffer.java */
@ThreadSafe
/* loaded from: classes.dex */
public class w implements e.f.c.f.g {

    /* renamed from: e, reason: collision with root package name */
    private final int f3874e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    e.f.c.g.a<t> f3875f;

    public w(e.f.c.g.a<t> aVar, int i2) {
        com.facebook.common.internal.h.a(aVar);
        com.facebook.common.internal.h.a(i2 >= 0 && i2 <= aVar.A().i());
        this.f3875f = aVar.m8clone();
        this.f3874e = i2;
    }

    @Override // e.f.c.f.g
    public synchronized int a(int i2, byte[] bArr, int i3, int i4) {
        a();
        com.facebook.common.internal.h.a(i2 + i4 <= this.f3874e);
        return this.f3875f.A().a(i2, bArr, i3, i4);
    }

    @Override // e.f.c.f.g
    public synchronized byte b(int i2) {
        a();
        boolean z = true;
        com.facebook.common.internal.h.a(i2 >= 0);
        if (i2 >= this.f3874e) {
            z = false;
        }
        com.facebook.common.internal.h.a(z);
        return this.f3875f.A().b(i2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        e.f.c.g.a.b(this.f3875f);
        this.f3875f = null;
    }

    @Override // e.f.c.f.g
    public synchronized boolean isClosed() {
        return !e.f.c.g.a.c(this.f3875f);
    }

    @Override // e.f.c.f.g
    public synchronized int size() {
        a();
        return this.f3874e;
    }

    @Override // e.f.c.f.g
    @Nullable
    public synchronized ByteBuffer w() {
        return this.f3875f.A().w();
    }

    @Override // e.f.c.f.g
    public synchronized long x() {
        a();
        return this.f3875f.A().x();
    }

    synchronized void a() {
        if (isClosed()) {
            throw new g.a();
        }
    }
}
