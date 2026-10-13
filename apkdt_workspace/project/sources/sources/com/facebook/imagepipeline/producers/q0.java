package com.facebook.imagepipeline.producers;

import javax.annotation.Nullable;

/* compiled from: ThreadHandoffProducer.java */
/* loaded from: classes.dex */
public class q0<T> implements i0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final i0<T> f4061a;

    /* renamed from: b, reason: collision with root package name */
    private final r0 f4062b;

    /* compiled from: ThreadHandoffProducer.java */
    /* loaded from: classes.dex */
    class a extends p0<T> {

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ l0 f4063j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ String f4064k;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ Consumer f4065l;
        final /* synthetic */ j0 m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, l0 l0Var, String str, String str2, l0 l0Var2, String str3, Consumer consumer2, j0 j0Var) {
            super(consumer, l0Var, str, str2);
            this.f4063j = l0Var2;
            this.f4064k = str3;
            this.f4065l = consumer2;
            this.m = j0Var;
        }

        @Override // e.f.c.b.h
        protected void a(T t) {
        }

        @Override // e.f.c.b.h
        @Nullable
        protected T b() {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0, e.f.c.b.h
        public void b(T t) {
            this.f4063j.b(this.f4064k, "BackgroundThreadHandoffProducer", null);
            q0.this.f4061a.a(this.f4065l, this.m);
        }
    }

    /* compiled from: ThreadHandoffProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p0 f4066a;

        b(p0 p0Var) {
            this.f4066a = p0Var;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            this.f4066a.a();
            q0.this.f4062b.b(this.f4066a);
        }
    }

    public q0(i0<T> i0Var, r0 r0Var) {
        com.facebook.common.internal.h.a(i0Var);
        this.f4061a = i0Var;
        this.f4062b = r0Var;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<T> consumer, j0 j0Var) {
        l0 e2 = j0Var.e();
        String id = j0Var.getId();
        a aVar = new a(consumer, e2, "BackgroundThreadHandoffProducer", id, e2, id, consumer, j0Var);
        j0Var.a(new b(aVar));
        this.f4062b.a(aVar);
    }
}
