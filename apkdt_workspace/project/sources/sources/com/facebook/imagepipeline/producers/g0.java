package com.facebook.imagepipeline.producers;

/* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
/* loaded from: classes.dex */
public class g0 implements i0<e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> f3953a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.c.f f3954b;

    /* renamed from: c, reason: collision with root package name */
    private final i0<e.f.c.g.a<e.f.i.g.c>> f3955c;

    /* compiled from: PostprocessedBitmapMemoryCacheProducer.java */
    /* loaded from: classes.dex */
    public static class a extends m<e.f.c.g.a<e.f.i.g.c>, e.f.c.g.a<e.f.i.g.c>> {

        /* renamed from: c, reason: collision with root package name */
        private final e.f.b.a.d f3956c;

        /* renamed from: d, reason: collision with root package name */
        private final boolean f3957d;

        /* renamed from: e, reason: collision with root package name */
        private final e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> f3958e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f3959f;

        public a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, e.f.b.a.d dVar, boolean z, e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> pVar, boolean z2) {
            super(consumer);
            this.f3956c = dVar;
            this.f3957d = z;
            this.f3958e = pVar;
            this.f3959f = z2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            if (aVar == null) {
                if (b.a(i2)) {
                    c().a(null, i2);
                }
            } else if (!b.b(i2) || this.f3957d) {
                e.f.c.g.a<e.f.i.g.c> a2 = this.f3959f ? this.f3958e.a(this.f3956c, aVar) : null;
                try {
                    c().a(1.0f);
                    Consumer<e.f.c.g.a<e.f.i.g.c>> c2 = c();
                    if (a2 != null) {
                        aVar = a2;
                    }
                    c2.a(aVar, i2);
                } finally {
                    e.f.c.g.a.b(a2);
                }
            }
        }
    }

    public g0(e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> pVar, e.f.i.c.f fVar, i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        this.f3953a = pVar;
        this.f3954b = fVar;
        this.f3955c = i0Var;
    }

    protected String a() {
        return "PostprocessedBitmapMemoryCacheProducer";
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var) {
        l0 e2 = j0Var.e();
        String id = j0Var.getId();
        e.f.i.i.b c2 = j0Var.c();
        Object a2 = j0Var.a();
        e.f.i.i.d f2 = c2.f();
        if (f2 != null && f2.a() != null) {
            e2.a(id, a());
            e.f.b.a.d b2 = this.f3954b.b(c2, a2);
            e.f.c.g.a<e.f.i.g.c> aVar = this.f3953a.get(b2);
            if (aVar != null) {
                e2.b(id, a(), e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "true") : null);
                e2.a(id, "PostprocessedBitmapMemoryCacheProducer", true);
                consumer.a(1.0f);
                consumer.a(aVar, 1);
                aVar.close();
                return;
            }
            a aVar2 = new a(consumer, b2, f2 instanceof e.f.i.i.e, this.f3953a, j0Var.c().s());
            e2.b(id, a(), e2.a(id) ? com.facebook.common.internal.e.of("cached_value_found", "false") : null);
            this.f3955c.a(aVar2, j0Var);
            return;
        }
        this.f3955c.a(consumer, j0Var);
    }
}
