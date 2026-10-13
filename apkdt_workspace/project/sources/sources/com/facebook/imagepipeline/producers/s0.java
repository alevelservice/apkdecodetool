package com.facebook.imagepipeline.producers;

import android.util.Pair;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: ThrottlingProducer.java */
/* loaded from: classes.dex */
public class s0<T> implements i0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final i0<T> f4083a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4084b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f4085c;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private final ConcurrentLinkedQueue<Pair<Consumer<T>, j0>> f4086d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f4087e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThrottlingProducer.java */
    /* loaded from: classes.dex */
    public class b extends m<T, T> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ThrottlingProducer.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Pair f4089e;

            a(Pair pair) {
                this.f4089e = pair;
            }

            @Override // java.lang.Runnable
            public void run() {
                s0 s0Var = s0.this;
                Pair pair = this.f4089e;
                s0Var.b((Consumer) pair.first, (j0) pair.second);
            }
        }

        private void d() {
            Pair pair;
            synchronized (s0.this) {
                pair = (Pair) s0.this.f4086d.poll();
                if (pair == null) {
                    s0.b(s0.this);
                }
            }
            if (pair != null) {
                s0.this.f4087e.execute(new a(pair));
            }
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void b(T t, int i2) {
            c().a(t, i2);
            if (com.facebook.imagepipeline.producers.b.a(i2)) {
                d();
            }
        }

        private b(Consumer<T> consumer) {
            super(consumer);
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b(Throwable th) {
            c().a(th);
            d();
        }

        @Override // com.facebook.imagepipeline.producers.m, com.facebook.imagepipeline.producers.b
        protected void b() {
            c().a();
            d();
        }
    }

    public s0(int i2, Executor executor, i0<T> i0Var) {
        this.f4084b = i2;
        com.facebook.common.internal.h.a(executor);
        this.f4087e = executor;
        com.facebook.common.internal.h.a(i0Var);
        this.f4083a = i0Var;
        this.f4086d = new ConcurrentLinkedQueue<>();
        this.f4085c = 0;
    }

    static /* synthetic */ int b(s0 s0Var) {
        int i2 = s0Var.f4085c;
        s0Var.f4085c = i2 - 1;
        return i2;
    }

    @Override // com.facebook.imagepipeline.producers.i0
    public void a(Consumer<T> consumer, j0 j0Var) {
        boolean z;
        j0Var.e().a(j0Var.getId(), "ThrottlingProducer");
        synchronized (this) {
            z = true;
            if (this.f4085c >= this.f4084b) {
                this.f4086d.add(Pair.create(consumer, j0Var));
            } else {
                this.f4085c++;
                z = false;
            }
        }
        if (z) {
            return;
        }
        b(consumer, j0Var);
    }

    void b(Consumer<T> consumer, j0 j0Var) {
        j0Var.e().b(j0Var.getId(), "ThrottlingProducer", null);
        this.f4083a.a(new b(consumer), j0Var);
    }
}
