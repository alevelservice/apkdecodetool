package com.facebook.imagepipeline.producers;

import e.f.i.i.b;

/* compiled from: BitmapMemoryCacheProducer.java */
/* loaded from: classes.dex */
public class h implements i0<e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> f3960a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.c.f f3961b;

    /* renamed from: c, reason: collision with root package name */
    private final i0<e.f.c.g.a<e.f.i.g.c>> f3962c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapMemoryCacheProducer.java */
    /* loaded from: classes.dex */
    public class a extends m<e.f.c.g.a<e.f.i.g.c>, e.f.c.g.a<e.f.i.g.c>> {

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ e.f.b.a.d f3963c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f3964d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, e.f.b.a.d dVar, boolean z) {
            super(consumer);
            this.f3963c = dVar;
            this.f3964d = z;
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            e.f.c.g.a<e.f.i.g.c> aVar2;
            boolean c2;
            try {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a("BitmapMemoryCacheProducer#onNewResultImpl");
                }
                boolean a2 = b.a(i2);
                if (aVar == null) {
                    if (a2) {
                        c().a(null, i2);
                    }
                    if (c2) {
                        return;
                    } else {
                        return;
                    }
                }
                if (!aVar.A().k() && !b.b(i2, 8)) {
                    if (!a2 && (aVar2 = h.this.f3960a.get(this.f3963c)) != null) {
                        try {
                            e.f.i.g.h i3 = aVar.A().i();
                            e.f.i.g.h i4 = aVar2.A().i();
                            if (i4.a() || i4.c() >= i3.c()) {
                                c().a(aVar2, i2);
                                if (e.f.i.j.b.c()) {
                                    e.f.i.j.b.a();
                                    return;
                                }
                                return;
                            }
                        } finally {
                            e.f.c.g.a.b(aVar2);
                        }
                    }
                    e.f.c.g.a<e.f.i.g.c> a3 = this.f3964d ? h.this.f3960a.a(this.f3963c, aVar) : null;
                    if (a2) {
                        try {
                            c().a(1.0f);
                        } finally {
                            e.f.c.g.a.b(a3);
                        }
                    }
                    Consumer<e.f.c.g.a<e.f.i.g.c>> c3 = c();
                    if (a3 != null) {
                        aVar = a3;
                    }
                    c3.a(aVar, i2);
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                        return;
                    }
                    return;
                }
                c().a(aVar, i2);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            } finally {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        }
    }

    public h(e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> pVar, e.f.i.c.f fVar, i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        this.f3960a = pVar;
        this.f3961b = fVar;
        this.f3962c = i0Var;
    }

    protected String a() {
        return "BitmapMemoryCacheProducer";
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var) {
        boolean c2;
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("BitmapMemoryCacheProducer#produceResults");
            }
            l0 e2 = j0Var.e();
            String id = j0Var.getId();
            e2.a(id, a());
            e.f.b.a.d a2 = this.f3961b.a(j0Var.c(), j0Var.a());
            e.f.c.g.a<e.f.i.g.c> aVar = this.f3960a.get(a2);
            if (aVar != null) {
                boolean a3 = aVar.A().i().a();
                if (a3) {
                    e2.b(id, a(), e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "true") : null);
                    e2.a(id, a(), true);
                    consumer.a(1.0f);
                }
                b.a(a3);
                consumer.a(aVar, a3 ? 1 : 0);
                aVar.close();
                if (a3) {
                    if (c2) {
                        return;
                    } else {
                        return;
                    }
                }
            }
            if (j0Var.g().getValue() >= b.EnumC0196b.BITMAP_MEMORY_CACHE.getValue()) {
                e2.b(id, a(), e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "false") : null);
                e2.a(id, a(), false);
                consumer.a(null, 1);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                    return;
                }
                return;
            }
            Consumer<e.f.c.g.a<e.f.i.g.c>> a4 = a(consumer, a2, j0Var.c().s());
            e2.b(id, a(), e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "false") : null);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("mInputProducer.produceResult");
            }
            this.f3962c.a(a4, j0Var);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    protected Consumer<e.f.c.g.a<e.f.i.g.c>> a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, e.f.b.a.d dVar, boolean z) {
        return new a(consumer, dVar, z);
    }
}
