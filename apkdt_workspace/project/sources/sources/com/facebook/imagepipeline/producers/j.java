package com.facebook.imagepipeline.producers;

/* compiled from: BranchOnSeparateImagesProducer.java */
/* loaded from: classes.dex */
public class j implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final i0<e.f.i.g.e> f3989a;

    /* renamed from: b, reason: collision with root package name */
    private final i0<e.f.i.g.e> f3990b;

    /* compiled from: BranchOnSeparateImagesProducer.java */
    /* loaded from: classes.dex */
    private class b extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private j0 f3991c;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            e.f.i.i.b c2 = this.f3991c.c();
            boolean a2 = com.facebook.imagepipeline.producers.b.a(i2);
            boolean a3 = v0.a(eVar, c2.l());
            if (eVar != null && (a3 || c2.d())) {
                if (a2 && a3) {
                    c().a(eVar, i2);
                } else {
                    c().a(eVar, com.facebook.imagepipeline.producers.b.c(i2, 1));
                }
            }
            if (!a2 || a3) {
                return;
            }
            e.f.i.g.e.c(eVar);
            j.this.f3990b.a(c(), this.f3991c);
        }

        private b(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
            super(consumer);
            this.f3991c = j0Var;
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b(Throwable th) {
            j.this.f3990b.a(c(), this.f3991c);
        }
    }

    public j(i0<e.f.i.g.e> i0Var, i0<e.f.i.g.e> i0Var2) {
        this.f3989a = i0Var;
        this.f3990b = i0Var2;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        this.f3989a.a(new b(consumer, j0Var), j0Var);
    }
}
