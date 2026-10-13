package com.facebook.imagepipeline.producers;

import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: LocalFetchProducer.java */
/* loaded from: classes.dex */
public abstract class y implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4134a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.c.f.h f4135b;

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes.dex */
    class a extends p0<e.f.i.g.e> {

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ e.f.i.i.b f4136j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ l0 f4137k;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ String f4138l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, l0 l0Var, String str, String str2, e.f.i.i.b bVar, l0 l0Var2, String str3) {
            super(consumer, l0Var, str, str2);
            this.f4136j = bVar;
            this.f4137k = l0Var2;
            this.f4138l = str3;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        public void a(e.f.i.g.e eVar) {
            e.f.i.g.e.c(eVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        @Nullable
        public e.f.i.g.e b() {
            e.f.i.g.e a2 = y.this.a(this.f4136j);
            if (a2 == null) {
                this.f4137k.a(this.f4138l, y.this.a(), false);
                return null;
            }
            a2.z();
            this.f4137k.a(this.f4138l, y.this.a(), true);
            return a2;
        }
    }

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p0 f4139a;

        b(y yVar, p0 p0Var) {
            this.f4139a = p0Var;
        }

        @Override // com.facebook.imagepipeline.producers.k0
        public void a() {
            this.f4139a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y(Executor executor, e.f.c.f.h hVar) {
        this.f4134a = executor;
        this.f4135b = hVar;
    }

    protected abstract e.f.i.g.e a(e.f.i.i.b bVar);

    protected abstract String a();

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        l0 e2 = j0Var.e();
        String id = j0Var.getId();
        a aVar = new a(consumer, e2, a(), id, j0Var.c(), e2, id);
        j0Var.a(new b(this, aVar));
        this.f4134a.execute(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e.f.i.g.e b(InputStream inputStream, int i2) {
        return a(inputStream, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e.f.i.g.e a(InputStream inputStream, int i2) {
        e.f.c.g.a a2;
        e.f.c.g.a aVar = null;
        try {
            if (i2 <= 0) {
                a2 = e.f.c.g.a.a(this.f4135b.a(inputStream));
            } else {
                a2 = e.f.c.g.a.a(this.f4135b.a(inputStream, i2));
            }
            aVar = a2;
            return new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) aVar);
        } finally {
            com.facebook.common.internal.b.a(inputStream);
            e.f.c.g.a.b(aVar);
        }
    }
}
