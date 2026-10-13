package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: FlexByteArrayPool.java */
@ThreadSafe
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.c.g.c<byte[]> f3862a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final b f3863b;

    /* compiled from: FlexByteArrayPool.java */
    /* loaded from: classes.dex */
    class a implements e.f.c.g.c<byte[]> {
        a() {
        }

        @Override // e.f.c.g.c
        public void a(byte[] bArr) {
            p.this.a(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexByteArrayPool.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b extends q {
        public b(e.f.c.f.c cVar, f0 f0Var, g0 g0Var) {
            super(cVar, f0Var, g0Var);
        }

        @Override // com.facebook.imagepipeline.memory.a
        f<byte[]> f(int i2) {
            e(i2);
            return new b0(i2, this.f3788c.f3849e, 0);
        }
    }

    public p(e.f.c.f.c cVar, f0 f0Var) {
        com.facebook.common.internal.h.a(f0Var.f3849e > 0);
        this.f3863b = new b(cVar, f0Var, a0.c());
        this.f3862a = new a();
    }

    public e.f.c.g.a<byte[]> a(int i2) {
        return e.f.c.g.a.a(this.f3863b.get(i2), this.f3862a);
    }

    public void a(byte[] bArr) {
        this.f3863b.a((b) bArr);
    }
}
