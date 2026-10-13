package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: PostprocessorProducer.java */
/* loaded from: classes.dex */
public class h0 implements i0<e.f.c.g.a<e.f.i.g.c>> {

    /* renamed from: a, reason: collision with root package name */
    private final i0<e.f.c.g.a<e.f.i.g.c>> f3966a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.i.b.f f3967b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f3968c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    public class b extends m<e.f.c.g.a<e.f.i.g.c>, e.f.c.g.a<e.f.i.g.c>> {

        /* renamed from: c, reason: collision with root package name */
        private final l0 f3969c;

        /* renamed from: d, reason: collision with root package name */
        private final String f3970d;

        /* renamed from: e, reason: collision with root package name */
        private final e.f.i.i.d f3971e;

        /* renamed from: f, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private boolean f3972f;

        /* renamed from: g, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        @Nullable
        private e.f.c.g.a<e.f.i.g.c> f3973g;

        /* renamed from: h, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private int f3974h;

        /* renamed from: i, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private boolean f3975i;

        /* renamed from: j, reason: collision with root package name */
        @GuardedBy("PostprocessorConsumer.this")
        private boolean f3976j;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes.dex */
        class a extends e {
            a(h0 h0Var) {
            }

            @Override // com.facebook.imagepipeline.producers.k0
            public void a() {
                b.this.g();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PostprocessorProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.h0$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0069b implements Runnable {
            RunnableC0069b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.f.c.g.a aVar;
                int i2;
                synchronized (b.this) {
                    aVar = b.this.f3973g;
                    i2 = b.this.f3974h;
                    b.this.f3973g = null;
                    b.this.f3975i = false;
                }
                if (e.f.c.g.a.c((e.f.c.g.a<?>) aVar)) {
                    try {
                        b.this.b((e.f.c.g.a<e.f.i.g.c>) aVar, i2);
                    } finally {
                        e.f.c.g.a.b(aVar);
                    }
                }
                b.this.d();
            }
        }

        public b(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, l0 l0Var, String str, e.f.i.i.d dVar, j0 j0Var) {
            super(consumer);
            this.f3973g = null;
            this.f3974h = 0;
            this.f3975i = false;
            this.f3976j = false;
            this.f3969c = l0Var;
            this.f3970d = str;
            this.f3971e = dVar;
            j0Var.a(new a(h0.this));
        }

        private boolean e() {
            synchronized (this) {
                if (this.f3972f) {
                    return false;
                }
                e.f.c.g.a<e.f.i.g.c> aVar = this.f3973g;
                this.f3973g = null;
                this.f3972f = true;
                e.f.c.g.a.b(aVar);
                return true;
            }
        }

        private synchronized boolean f() {
            return this.f3972f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            if (e()) {
                c().a();
            }
        }

        private synchronized boolean h() {
            if (this.f3972f || !this.f3975i || this.f3976j || !e.f.c.g.a.c(this.f3973g)) {
                return false;
            }
            this.f3976j = true;
            return true;
        }

        private void i() {
            h0.this.f3968c.execute(new RunnableC0069b());
        }

        private void c(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            boolean a2 = com.facebook.imagepipeline.producers.b.a(i2);
            if ((a2 || f()) && !(a2 && e())) {
                return;
            }
            c().a(aVar, i2);
        }

        private void d(@Nullable e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            synchronized (this) {
                if (this.f3972f) {
                    return;
                }
                e.f.c.g.a<e.f.i.g.c> aVar2 = this.f3973g;
                this.f3973g = e.f.c.g.a.a((e.f.c.g.a) aVar);
                this.f3974h = i2;
                this.f3975i = true;
                boolean h2 = h();
                e.f.c.g.a.b(aVar2);
                if (h2) {
                    i();
                }
            }
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b(Throwable th) {
            c(th);
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b() {
            g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            com.facebook.common.internal.h.a(e.f.c.g.a.c(aVar));
            if (!b(aVar.A())) {
                c(aVar, i2);
                return;
            }
            this.f3969c.a(this.f3970d, "PostprocessorProducer");
            try {
                try {
                    e.f.c.g.a<e.f.i.g.c> a2 = a(aVar.A());
                    this.f3969c.b(this.f3970d, "PostprocessorProducer", a(this.f3969c, this.f3970d, this.f3971e));
                    c(a2, i2);
                    e.f.c.g.a.b(a2);
                } catch (Exception e2) {
                    this.f3969c.a(this.f3970d, "PostprocessorProducer", e2, a(this.f3969c, this.f3970d, this.f3971e));
                    c(e2);
                    e.f.c.g.a.b(null);
                }
            } catch (Throwable th) {
                e.f.c.g.a.b(null);
                throw th;
            }
        }

        private void c(Throwable th) {
            if (e()) {
                c().a(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            if (!e.f.c.g.a.c(aVar)) {
                if (com.facebook.imagepipeline.producers.b.a(i2)) {
                    c((e.f.c.g.a<e.f.i.g.c>) null, i2);
                    return;
                }
                return;
            }
            d(aVar, i2);
        }

        @Nullable
        private Map<String, String> a(l0 l0Var, String str, e.f.i.i.d dVar) {
            if (l0Var.a(str)) {
                return com.facebook.common.internal.e.of("Postprocessor", dVar.getName());
            }
            return null;
        }

        private e.f.c.g.a<e.f.i.g.c> a(e.f.i.g.c cVar) {
            e.f.i.g.d dVar = (e.f.i.g.d) cVar;
            e.f.c.g.a<Bitmap> a2 = this.f3971e.a(dVar.p(), h0.this.f3967b);
            try {
                return e.f.c.g.a.a(new e.f.i.g.d(a2, cVar.i(), dVar.o(), dVar.m()));
            } finally {
                e.f.c.g.a.b(a2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            boolean h2;
            synchronized (this) {
                this.f3976j = false;
                h2 = h();
            }
            if (h2) {
                i();
            }
        }

        private boolean b(e.f.i.g.c cVar) {
            return cVar instanceof e.f.i.g.d;
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    class c extends m<e.f.c.g.a<e.f.i.g.c>, e.f.c.g.a<e.f.i.g.c>> implements e.f.i.i.f {

        /* renamed from: c, reason: collision with root package name */
        @GuardedBy("RepeatedPostprocessorConsumer.this")
        private boolean f3980c;

        /* renamed from: d, reason: collision with root package name */
        @GuardedBy("RepeatedPostprocessorConsumer.this")
        @Nullable
        private e.f.c.g.a<e.f.i.g.c> f3981d;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes.dex */
        class a extends e {
            a(h0 h0Var) {
            }

            @Override // com.facebook.imagepipeline.producers.k0
            public void a() {
                if (c.this.d()) {
                    c.this.c().a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d() {
            synchronized (this) {
                if (this.f3980c) {
                    return false;
                }
                e.f.c.g.a<e.f.i.g.c> aVar = this.f3981d;
                this.f3981d = null;
                this.f3980c = true;
                e.f.c.g.a.b(aVar);
                return true;
            }
        }

        private void e() {
            synchronized (this) {
                if (this.f3980c) {
                    return;
                }
                e.f.c.g.a<e.f.i.g.c> a2 = e.f.c.g.a.a((e.f.c.g.a) this.f3981d);
                try {
                    c().a(a2, 0);
                } finally {
                    e.f.c.g.a.b(a2);
                }
            }
        }

        private c(h0 h0Var, b bVar, e.f.i.i.e eVar, j0 j0Var) {
            super(bVar);
            this.f3980c = false;
            this.f3981d = null;
            eVar.a(this);
            j0Var.a(new a(h0Var));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.b(i2)) {
                return;
            }
            a(aVar);
            e();
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b(Throwable th) {
            if (d()) {
                c().a(th);
            }
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b() {
            if (d()) {
                c().a();
            }
        }

        private void a(e.f.c.g.a<e.f.i.g.c> aVar) {
            synchronized (this) {
                if (this.f3980c) {
                    return;
                }
                e.f.c.g.a<e.f.i.g.c> aVar2 = this.f3981d;
                this.f3981d = e.f.c.g.a.a((e.f.c.g.a) aVar);
                e.f.c.g.a.b(aVar2);
            }
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes.dex */
    class d extends m<e.f.c.g.a<e.f.i.g.c>, e.f.c.g.a<e.f.i.g.c>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(e.f.c.g.a<e.f.i.g.c> aVar, int i2) {
            if (com.facebook.imagepipeline.producers.b.b(i2)) {
                return;
            }
            c().a(aVar, i2);
        }

        private d(h0 h0Var, b bVar) {
            super(bVar);
        }
    }

    public h0(i0<e.f.c.g.a<e.f.i.g.c>> i0Var, e.f.i.b.f fVar, Executor executor) {
        com.facebook.common.internal.h.a(i0Var);
        this.f3966a = i0Var;
        this.f3967b = fVar;
        com.facebook.common.internal.h.a(executor);
        this.f3968c = executor;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<e.f.c.g.a<e.f.i.g.c>> consumer, j0 j0Var) {
        Consumer<e.f.c.g.a<e.f.i.g.c>> dVar;
        l0 e2 = j0Var.e();
        e.f.i.i.d f2 = j0Var.c().f();
        b bVar = new b(consumer, e2, j0Var.getId(), f2, j0Var);
        if (f2 instanceof e.f.i.i.e) {
            dVar = new c(bVar, (e.f.i.i.e) f2, j0Var);
        } else {
            dVar = new d(bVar);
        }
        this.f3966a.a(dVar, j0Var);
    }
}
