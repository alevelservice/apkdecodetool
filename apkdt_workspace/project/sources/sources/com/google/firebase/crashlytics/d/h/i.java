package com.google.firebase.crashlytics.d.h;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashlyticsBackgroundWorker.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f14432a;

    /* renamed from: b, reason: collision with root package name */
    private e.i.b.b.d.h<Void> f14433b = e.i.b.b.d.k.a((Object) null);

    /* renamed from: c, reason: collision with root package name */
    private final Object f14434c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private ThreadLocal<Boolean> f14435d = new ThreadLocal<>();

    /* compiled from: CrashlyticsBackgroundWorker.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f14435d.set(true);
        }
    }

    /* compiled from: CrashlyticsBackgroundWorker.java */
    /* loaded from: classes.dex */
    class b implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Runnable f14437e;

        b(i iVar, Runnable runnable) {
            this.f14437e = runnable;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            this.f14437e.run();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CrashlyticsBackgroundWorker.java */
    /* loaded from: classes.dex */
    public class c<T> implements e.i.b.b.d.a<Void, T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Callable f14438a;

        c(i iVar, Callable callable) {
            this.f14438a = callable;
        }

        @Override // e.i.b.b.d.a
        public T a(@NonNull e.i.b.b.d.h<Void> hVar) {
            return (T) this.f14438a.call();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CrashlyticsBackgroundWorker.java */
    /* loaded from: classes.dex */
    public class d<T> implements e.i.b.b.d.a<T, Void> {
        d(i iVar) {
        }

        @Override // e.i.b.b.d.a
        public Void a(@NonNull e.i.b.b.d.h<T> hVar) {
            return null;
        }
    }

    public i(Executor executor) {
        this.f14432a = executor;
        executor.execute(new a());
    }

    private boolean c() {
        return Boolean.TRUE.equals(this.f14435d.get());
    }

    public Executor b() {
        return this.f14432a;
    }

    private <T> e.i.b.b.d.a<Void, T> c(Callable<T> callable) {
        return new c(this, callable);
    }

    public void a() {
        if (!c()) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    public <T> e.i.b.b.d.h<T> b(Callable<e.i.b.b.d.h<T>> callable) {
        e.i.b.b.d.h<T> b2;
        synchronized (this.f14434c) {
            b2 = this.f14433b.b(this.f14432a, c(callable));
            this.f14433b = a(b2);
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> a(Runnable runnable) {
        return a(new b(this, runnable));
    }

    private <T> e.i.b.b.d.h<Void> a(e.i.b.b.d.h<T> hVar) {
        return hVar.a(this.f14432a, new d(this));
    }

    public <T> e.i.b.b.d.h<T> a(Callable<T> callable) {
        e.i.b.b.d.h<T> a2;
        synchronized (this.f14434c) {
            a2 = this.f14433b.a(this.f14432a, (e.i.b.b.d.a<Void, TContinuationResult>) c(callable));
            this.f14433b = a(a2);
        }
        return a2;
    }
}
