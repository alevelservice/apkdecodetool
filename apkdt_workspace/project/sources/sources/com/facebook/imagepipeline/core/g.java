package com.facebook.imagepipeline.core;

import com.facebook.imagepipeline.producers.r0;
import e.f.i.c.p;
import e.f.i.i.b;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: ImagePipeline.java */
@ThreadSafe
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private final m f3687a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.h.c f3688b;

    /* renamed from: c, reason: collision with root package name */
    private final p<e.f.b.a.d, e.f.i.g.c> f3689c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.i.c.f f3690d;

    /* renamed from: e, reason: collision with root package name */
    private AtomicLong f3691e = new AtomicLong();

    static {
        new CancellationException("Prefetching is not enabled");
    }

    public g(m mVar, Set<e.f.i.h.c> set, com.facebook.common.internal.j<Boolean> jVar, p<e.f.b.a.d, e.f.i.g.c> pVar, p<e.f.b.a.d, e.f.c.f.g> pVar2, e.f.i.c.e eVar, e.f.i.c.e eVar2, e.f.i.c.f fVar, r0 r0Var, com.facebook.common.internal.j<Boolean> jVar2, com.facebook.common.internal.j<Boolean> jVar3) {
        this.f3687a = mVar;
        this.f3688b = new e.f.i.h.b(set);
        this.f3689c = pVar;
        this.f3690d = fVar;
    }

    public String a() {
        return String.valueOf(this.f3691e.getAndIncrement());
    }

    public p<e.f.b.a.d, e.f.i.g.c> b() {
        return this.f3689c;
    }

    public e.f.i.c.f c() {
        return this.f3690d;
    }

    public e.f.d.c<e.f.c.g.a<e.f.i.g.c>> a(e.f.i.i.b bVar, Object obj, b.EnumC0196b enumC0196b, @Nullable e.f.i.h.c cVar) {
        try {
            return a(this.f3687a.a(bVar), bVar, enumC0196b, obj, cVar);
        } catch (Exception e2) {
            return e.f.d.d.b(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> e.f.d.c<e.f.c.g.a<T>> a(com.facebook.imagepipeline.producers.i0<e.f.c.g.a<T>> r11, e.f.i.i.b r12, e.f.i.i.b.EnumC0196b r13, java.lang.Object r14, @javax.annotation.Nullable e.f.i.h.c r15) {
        /*
            r10 = this;
            boolean r0 = e.f.i.j.b.c()
            if (r0 == 0) goto Lb
            java.lang.String r0 = "ImagePipeline#submitFetchRequest"
            e.f.i.j.b.a(r0)
        Lb:
            e.f.i.h.c r15 = r10.a(r12, r15)
            e.f.i.i.b$b r0 = r12.e()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            e.f.i.i.b$b r6 = e.f.i.i.b.EnumC0196b.getMax(r0, r13)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            com.facebook.imagepipeline.producers.o0 r13 = new com.facebook.imagepipeline.producers.o0     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r3 = r10.a()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r7 = 0
            boolean r0 = r12.j()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r0 != 0) goto L32
            android.net.Uri r0 = r12.p()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            boolean r0 = e.f.c.j.f.i(r0)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r0 != 0) goto L2f
            goto L32
        L2f:
            r0 = 0
            r8 = 0
            goto L34
        L32:
            r0 = 1
            r8 = 1
        L34:
            com.facebook.imagepipeline.common.d r9 = r12.i()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r1 = r13
            r2 = r12
            r4 = r15
            r5 = r14
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            e.f.d.c r11 = e.f.i.d.b.a(r11, r13, r15)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            boolean r12 = e.f.i.j.b.c()
            if (r12 == 0) goto L4c
            e.f.i.j.b.a()
        L4c:
            return r11
        L4d:
            r11 = move-exception
            goto L5e
        L4f:
            r11 = move-exception
            e.f.d.c r11 = e.f.d.d.b(r11)     // Catch: java.lang.Throwable -> L4d
            boolean r12 = e.f.i.j.b.c()
            if (r12 == 0) goto L5d
            e.f.i.j.b.a()
        L5d:
            return r11
        L5e:
            boolean r12 = e.f.i.j.b.c()
            if (r12 == 0) goto L67
            e.f.i.j.b.a()
        L67:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.core.g.a(com.facebook.imagepipeline.producers.i0, e.f.i.i.b, e.f.i.i.b$b, java.lang.Object, e.f.i.h.c):e.f.d.c");
    }

    public e.f.i.h.c a(e.f.i.i.b bVar, @Nullable e.f.i.h.c cVar) {
        if (cVar == null) {
            if (bVar.k() == null) {
                return this.f3688b;
            }
            return new e.f.i.h.b(this.f3688b, bVar.k());
        }
        if (bVar.k() == null) {
            return new e.f.i.h.b(this.f3688b, cVar);
        }
        return new e.f.i.h.b(this.f3688b, cVar, bVar.k());
    }
}
