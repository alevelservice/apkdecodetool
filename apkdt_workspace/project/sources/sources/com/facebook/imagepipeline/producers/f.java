package com.facebook.imagepipeline.producers;

/* compiled from: BitmapMemoryCacheGetProducer.java */
/* loaded from: classes.dex */
public class f extends h {
    public f(e.f.i.c.p<e.f.b.a.d, e.f.i.g.c> pVar, e.f.i.c.f fVar, i0<e.f.c.g.a<e.f.i.g.c>> i0Var) {
        super(pVar, fVar, i0Var);
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected Consumer<e.f.c.g.a<e.f.i.g.c>> a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, e.f.b.a.d dVar, boolean z) {
        return consumer;
    }

    @Override // com.facebook.imagepipeline.producers.h
    protected String a() {
        return "BitmapMemoryCacheGetProducer";
    }
}
