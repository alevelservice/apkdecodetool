package com.facebook.imagepipeline.producers;

import e.f.i.i.b;

/* compiled from: DiskCacheWriteProducer.java */
/* loaded from: classes.dex */
public class o implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.c.e f4042a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.c.e f4043b;

    /* renamed from: c, reason: collision with root package name */
    private final e.f.i.c.f f4044c;

    /* renamed from: d, reason: collision with root package name */
    private final i0<e.f.i.g.e> f4045d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskCacheWriteProducer.java */
    /* loaded from: classes.dex */
    public static class b extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private final j0 f4046c;

        /* renamed from: d, reason: collision with root package name */
        private final e.f.i.c.e f4047d;

        /* renamed from: e, reason: collision with root package name */
        private final e.f.i.c.e f4048e;

        /* renamed from: f, reason: collision with root package name */
        private final e.f.i.c.f f4049f;

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            if (!com.facebook.imagepipeline.producers.b.b(i2) && eVar != null && !com.facebook.imagepipeline.producers.b.a(i2, 10) && eVar.p() != e.f.h.c.f17461b) {
                e.f.i.i.b c2 = this.f4046c.c();
                e.f.b.a.d c3 = this.f4049f.c(c2, this.f4046c.a());
                if (c2.b() == b.a.SMALL) {
                    this.f4048e.a(c3, eVar);
                } else {
                    this.f4047d.a(c3, eVar);
                }
                c().a(eVar, i2);
                return;
            }
            c().a(eVar, i2);
        }

        private b(Consumer<e.f.i.g.e> consumer, j0 j0Var, e.f.i.c.e eVar, e.f.i.c.e eVar2, e.f.i.c.f fVar) {
            super(consumer);
            this.f4046c = j0Var;
            this.f4047d = eVar;
            this.f4048e = eVar2;
            this.f4049f = fVar;
        }
    }

    public o(e.f.i.c.e eVar, e.f.i.c.e eVar2, e.f.i.c.f fVar, i0<e.f.i.g.e> i0Var) {
        this.f4042a = eVar;
        this.f4043b = eVar2;
        this.f4044c = fVar;
        this.f4045d = i0Var;
    }

    private void b(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        if (j0Var.g().getValue() >= b.EnumC0196b.DISK_CACHE.getValue()) {
            consumer.a(null, 1);
            return;
        }
        if (j0Var.c().r()) {
            consumer = new b(consumer, j0Var, this.f4042a, this.f4043b, this.f4044c);
        }
        this.f4045d.a(consumer, j0Var);
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        b(consumer, j0Var);
    }
}
