package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;

/* compiled from: BitmapPrepareProducer.java */
/* loaded from: classes.dex */
public class i implements i0<e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: a, reason: collision with root package name */
    private final i0<e.f.c.g.a<e.f.i.g.c>> f3983a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3984b;

    /* renamed from: c, reason: collision with root package name */
    private final int f3985c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f3986d;

    public i(i0<e.f.c.g.a<e.f.i.g.c>> i0Var, int i2, int i3, boolean z) {
        com.facebook.common.internal.h.a(i2 <= i3);
        com.facebook.common.internal.h.a(i0Var);
        this.f3983a = i0Var;
        this.f3984b = i2;
        this.f3985c = i3;
        this.f3986d = z;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var) {
        if (j0Var.d() && !this.f3986d) {
            this.f3983a.a(consumer, j0Var);
        } else {
            this.f3983a.a(new a(consumer, this.f3984b, this.f3985c), j0Var);
        }
    }

    /* compiled from: BitmapPrepareProducer.java */
    /* loaded from: classes.dex */
    private static class a extends m<e.f.c.g.a<e.f.i.g.c>, e.f.c.g.a<e.f.i.g.c>> {

        /* renamed from: c, reason: collision with root package name */
        private final int f3987c;

        /* renamed from: d, reason: collision with root package name */
        private final int f3988d;

        a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, int i2, int i3) {
            super(consumer);
            this.f3987c = i2;
            this.f3988d = i3;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            a(aVar);
            c().a(aVar, i2);
        }

        private void a(e.f.c.g.a<e.f.i.g.c> aVar) {
            e.f.i.g.c A;
            Bitmap p;
            int rowBytes;
            if (aVar == null || !aVar.C() || (A = aVar.A()) == null || A.isClosed() || !(A instanceof e.f.i.g.d) || (p = ((e.f.i.g.d) A).p()) == null || (rowBytes = p.getRowBytes() * p.getHeight()) < this.f3987c || rowBytes > this.f3988d) {
                return;
            }
            p.prepareToDraw();
        }
    }
}
