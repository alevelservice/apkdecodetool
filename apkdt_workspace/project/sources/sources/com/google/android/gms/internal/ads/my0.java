package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class my0 {

    /* renamed from: g, reason: collision with root package name */
    private static final a f8249g;

    /* renamed from: h, reason: collision with root package name */
    private static final Logger f8250h = Logger.getLogger(my0.class.getName());

    /* renamed from: e, reason: collision with root package name */
    private volatile Set<Throwable> f8251e = null;

    /* renamed from: f, reason: collision with root package name */
    private volatile int f8252f;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static abstract class a {
        private a() {
        }

        abstract int a(my0 my0Var);

        abstract void a(my0 my0Var, Set<Throwable> set, Set<Throwable> set2);
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static final class c extends a {

        /* renamed from: a, reason: collision with root package name */
        private final AtomicReferenceFieldUpdater<my0, Set<Throwable>> f8253a;

        /* renamed from: b, reason: collision with root package name */
        private final AtomicIntegerFieldUpdater<my0> f8254b;

        c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f8253a = atomicReferenceFieldUpdater;
            this.f8254b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.my0.a
        final void a(my0 my0Var, Set<Throwable> set, Set<Throwable> set2) {
            this.f8253a.compareAndSet(my0Var, null, set2);
        }

        @Override // com.google.android.gms.internal.ads.my0.a
        final int a(my0 my0Var) {
            return this.f8254b.decrementAndGet(my0Var);
        }
    }

    static {
        a bVar;
        Throwable th;
        try {
            bVar = new c(AtomicReferenceFieldUpdater.newUpdater(my0.class, Set.class, "e"), AtomicIntegerFieldUpdater.newUpdater(my0.class, "f"));
            th = null;
        } catch (Throwable th2) {
            bVar = new b();
            th = th2;
        }
        f8249g = bVar;
        if (th != null) {
            f8250h.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public my0(int i2) {
        this.f8252f = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Throwable> a() {
        Set<Throwable> set = this.f8251e;
        if (set != null) {
            return set;
        }
        Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        a(newSetFromMap);
        f8249g.a(this, null, newSetFromMap);
        return this.f8251e;
    }

    abstract void a(Set<Throwable> set);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return f8249g.a(this);
    }

    static /* synthetic */ int b(my0 my0Var) {
        int i2 = my0Var.f8252f;
        my0Var.f8252f = i2 - 1;
        return i2;
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static final class b extends a {
        private b() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.my0.a
        final void a(my0 my0Var, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (my0Var) {
                if (my0Var.f8251e == null) {
                    my0Var.f8251e = set2;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.my0.a
        final int a(my0 my0Var) {
            int i2;
            synchronized (my0Var) {
                my0.b(my0Var);
                i2 = my0Var.f8252f;
            }
            return i2;
        }
    }
}
