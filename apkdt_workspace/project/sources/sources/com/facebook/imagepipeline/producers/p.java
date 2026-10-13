package com.facebook.imagepipeline.producers;

import android.util.Pair;
import e.f.i.i.b;

/* compiled from: EncodedCacheKeyMultiplexProducer.java */
/* loaded from: classes.dex */
public class p extends c0<Pair<e.f.b.a.d, b.EnumC0196b>, e.f.i.g.e> {

    /* renamed from: c, reason: collision with root package name */
    private final e.f.i.c.f f4050c;

    public p(e.f.i.c.f fVar, i0 i0Var) {
        super(i0Var);
        this.f4050c = fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.imagepipeline.producers.c0
    public Pair<e.f.b.a.d, b.EnumC0196b> a(j0 j0Var) {
        return Pair.create(this.f4050c.c(j0Var.c(), j0Var.a()), j0Var.g());
    }

    @Override // com.facebook.imagepipeline.producers.c0
    public e.f.i.g.e a(e.f.i.g.e eVar) {
        return e.f.i.g.e.b(eVar);
    }
}
