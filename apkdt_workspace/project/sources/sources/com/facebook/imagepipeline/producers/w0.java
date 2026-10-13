package com.facebook.imagepipeline.producers;

import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: WebpTranscodeProducer.java */
/* loaded from: classes.dex */
public class w0 implements i0<e.f.i.g.e> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4120a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.c.f.h f4121b;

    /* renamed from: c, reason: collision with root package name */
    private final i0<e.f.i.g.e> f4122c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebpTranscodeProducer.java */
    /* loaded from: classes.dex */
    public class a extends p0<e.f.i.g.e> {

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ e.f.i.g.e f4123j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, l0 l0Var, String str, String str2, e.f.i.g.e eVar) {
            super(consumer, l0Var, str, str2);
            this.f4123j = eVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0, e.f.c.b.h
        public void c() {
            e.f.i.g.e.c(this.f4123j);
            super.c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        public void a(e.f.i.g.e eVar) {
            e.f.i.g.e.c(eVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0, e.f.c.b.h
        public void a(Exception exc) {
            e.f.i.g.e.c(this.f4123j);
            super.a(exc);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // e.f.c.b.h
        public e.f.i.g.e b() {
            e.f.c.f.j a2 = w0.this.f4121b.a();
            try {
                w0.b(this.f4123j, a2);
                e.f.c.g.a a3 = e.f.c.g.a.a(a2.i());
                try {
                    e.f.i.g.e eVar = new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) a3);
                    eVar.a(this.f4123j);
                    return eVar;
                } finally {
                    e.f.c.g.a.b(a3);
                }
            } finally {
                a2.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p0, e.f.c.b.h
        public void b(e.f.i.g.e eVar) {
            e.f.i.g.e.c(this.f4123j);
            super.b((a) eVar);
        }
    }

    /* compiled from: WebpTranscodeProducer.java */
    /* loaded from: classes.dex */
    private class b extends m<e.f.i.g.e, e.f.i.g.e> {

        /* renamed from: c, reason: collision with root package name */
        private final j0 f4125c;

        /* renamed from: d, reason: collision with root package name */
        private e.f.c.j.e f4126d;

        public b(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
            super(consumer);
            this.f4125c = j0Var;
            this.f4126d = e.f.c.j.e.UNSET;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(@Nullable e.f.i.g.e eVar, int i2) {
            if (this.f4126d == e.f.c.j.e.UNSET && eVar != null) {
                this.f4126d = w0.b(eVar);
            }
            if (this.f4126d == e.f.c.j.e.NO) {
                c().a(eVar, i2);
                return;
            }
            if (com.facebook.imagepipeline.producers.b.a(i2)) {
                if (this.f4126d == e.f.c.j.e.YES && eVar != null) {
                    w0.this.a(eVar, c(), this.f4125c);
                } else {
                    c().a(eVar, i2);
                }
            }
        }
    }

    public w0(Executor executor, e.f.c.f.h hVar, i0<e.f.i.g.e> i0Var) {
        com.facebook.common.internal.h.a(executor);
        this.f4120a = executor;
        com.facebook.common.internal.h.a(hVar);
        this.f4121b = hVar;
        com.facebook.common.internal.h.a(i0Var);
        this.f4122c = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e.f.c.j.e b(e.f.i.g.e eVar) {
        com.facebook.common.internal.h.a(eVar);
        e.f.h.c c2 = e.f.h.d.c(eVar.q());
        if (e.f.h.b.a(c2)) {
            if (com.facebook.imagepipeline.nativecode.f.a() == null) {
                return e.f.c.j.e.NO;
            }
            return e.f.c.j.e.valueOf(!r0.a(c2));
        }
        if (c2 == e.f.h.c.f17461b) {
            return e.f.c.j.e.UNSET;
        }
        return e.f.c.j.e.NO;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        this.f4122c.a(new b(consumer, j0Var), j0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e.f.i.g.e eVar, Consumer<e.f.i.g.e> consumer, j0 j0Var) {
        com.facebook.common.internal.h.a(eVar);
        this.f4120a.execute(new a(consumer, j0Var.e(), "WebpTranscodeProducer", j0Var.getId(), e.f.i.g.e.b(eVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(e.f.i.g.e eVar, e.f.c.f.j jVar) {
        InputStream q = eVar.q();
        e.f.h.c c2 = e.f.h.d.c(q);
        if (c2 != e.f.h.b.f17455f && c2 != e.f.h.b.f17457h) {
            if (c2 != e.f.h.b.f17456g && c2 != e.f.h.b.f17458i) {
                throw new IllegalArgumentException("Wrong image format");
            }
            com.facebook.imagepipeline.nativecode.f.a().a(q, jVar);
            eVar.a(e.f.h.b.f17451b);
            return;
        }
        com.facebook.imagepipeline.nativecode.f.a().a(q, jVar, 80);
        eVar.a(e.f.h.b.f17450a);
    }
}
