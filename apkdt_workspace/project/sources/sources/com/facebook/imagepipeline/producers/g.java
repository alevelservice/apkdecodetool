package com.facebook.imagepipeline.producers;

import android.util.Pair;
import e.f.i.i.b;

/* compiled from: BitmapMemoryCacheKeyMultiplexProducer.java */
/* loaded from: classes.dex */
public class g extends c0<Pair<e.f.b.a.d, b.EnumC0196b>, e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: c, reason: collision with root package name */
    private final e.f.i.c.f f3952c;

    public g(e.f.i.c.f fVar, i0 i0Var) {
        super(i0Var);
        this.f3952c = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.imagepipeline.producers.c0
    public Pair<e.f.b.a.d, b.EnumC0196b> a(j0 j0Var) {
        return Pair.create(this.f3952c.a(j0Var.c(), j0Var.a()), j0Var.g());
    }

    @Override // com.facebook.imagepipeline.producers.c0
    public e.f.c.g.a<e.f.i.g.c> a(e.f.c.g.a<e.f.i.g.c> aVar) {
        return e.f.c.g.a.a((e.f.c.g.a) aVar);
    }
}
