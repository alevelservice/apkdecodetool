package com.facebook.imagepipeline.producers;

/* compiled from: ThumbnailBranchProducer.java */
/* loaded from: classes.dex */
public class t0 implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final u0<e.f.i.g.e>[] f4106a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThumbnailBranchProducer.java */
    /* loaded from: classes.dex */
    public class a extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private final j0 f4107c;

        /* renamed from: d, reason: collision with root package name */
        private final int f4108d;

        /* renamed from: e, reason: collision with root package name */
        private final com.facebook.imagepipeline.common.e f4109e;

        public a(Consumer<e.f.i.g.e> consumer, j0 j0Var, int i2) {
            super(consumer);
            this.f4107c = j0Var;
            this.f4108d = i2;
            this.f4109e = this.f4107c.c().l();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.i.g.e eVar, int i2) {
            if (eVar != null && (b.b(i2) || v0.a(eVar, this.f4109e))) {
                c().a(eVar, i2);
            } else if (b.a(i2)) {
                e.f.i.g.e.c(eVar);
                if (t0.this.a(this.f4108d + 1, c(), this.f4107c)) {
                    return;
                }
                c().a(null, 1);
            }
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b(Throwable th) {
            if (t0.this.a(this.f4108d + 1, c(), this.f4107c)) {
                return;
            }
            c().a(th);
        }
    }

    public t0(u0<e.f.i.g.e>... u0VarArr) {
        com.facebook.common.internal.h.a(u0VarArr);
        this.f4106a = u0VarArr;
        com.facebook.common.internal.h.a(0, this.f4106a.length);
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        if (j0Var.c().l() == null) {
            consumer.a(null, 1);
        } else {
            if (a(0, consumer, j0Var)) {
                return;
            }
            consumer.a(null, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2, Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        int a2 = a(i2, j0Var.c().l());
        if (a2 == -1) {
            return false;
        }
        this.f4106a[a2].a(new a(consumer, j0Var, a2), j0Var);
        return true;
    }

    private int a(int i2, com.facebook.imagepipeline.common.e eVar) {
        while (true) {
            u0<e.f.i.g.e>[] u0VarArr = this.f4106a;
            if (i2 >= u0VarArr.length) {
                return -1;
            }
            if (u0VarArr[i2].a(eVar)) {
                return i2;
            }
            i2++;
        }
    }
}
