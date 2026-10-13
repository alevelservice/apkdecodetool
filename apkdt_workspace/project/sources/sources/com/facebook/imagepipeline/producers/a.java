package com.facebook.imagepipeline.producers;

/* compiled from: AddImageTransformMetaDataProducer.java */
/* loaded from: classes.dex */
public class a implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final i0<e.f.i.g.e> f3898a;

    /* compiled from: AddImageTransformMetaDataProducer.java */
    /* loaded from: classes.dex */
    private static class b extends m<e.f.i.g.e, e.f.i.g.e> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            if (eVar == null) {
                c().a(null, i2);
                return;
            }
            if (!e.f.i.g.e.d(eVar)) {
                eVar.z();
            }
            c().a(eVar, i2);
        }

        private b(Consumer<e.f.i.g.e> consumer) {
            super(consumer);
        }
    }

    public a(i0<e.f.i.g.e> i0Var) {
        this.f3898a = i0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        this.f3898a.a(new b(consumer), j0Var);
    }
}
