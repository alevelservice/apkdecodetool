package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bu1 {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f5862a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<uq1<?>> f5863b;

    /* renamed from: c, reason: collision with root package name */
    private final PriorityBlockingQueue<uq1<?>> f5864c;

    /* renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<uq1<?>> f5865d;

    /* renamed from: e, reason: collision with root package name */
    private final a f5866e;

    /* renamed from: f, reason: collision with root package name */
    private final tn1 f5867f;

    /* renamed from: g, reason: collision with root package name */
    private final b f5868g;

    /* renamed from: h, reason: collision with root package name */
    private final sm1[] f5869h;

    /* renamed from: i, reason: collision with root package name */
    private m70 f5870i;

    /* renamed from: j, reason: collision with root package name */
    private final List<ou1> f5871j;

    /* renamed from: k, reason: collision with root package name */
    private final List<yu1> f5872k;

    private bu1(a aVar, tn1 tn1Var, int i2, b bVar) {
        this.f5862a = new AtomicInteger();
        this.f5863b = new HashSet();
        this.f5864c = new PriorityBlockingQueue<>();
        this.f5865d = new PriorityBlockingQueue<>();
        this.f5871j = new ArrayList();
        this.f5872k = new ArrayList();
        this.f5866e = aVar;
        this.f5867f = tn1Var;
        this.f5869h = new sm1[4];
        this.f5868g = bVar;
    }

    public final void a() {
        m70 m70Var = this.f5870i;
        if (m70Var != null) {
            m70Var.a();
        }
        for (sm1 sm1Var : this.f5869h) {
            if (sm1Var != null) {
                sm1Var.a();
            }
        }
        this.f5870i = new m70(this.f5864c, this.f5865d, this.f5866e, this.f5868g);
        this.f5870i.start();
        for (int i2 = 0; i2 < this.f5869h.length; i2++) {
            sm1 sm1Var2 = new sm1(this.f5865d, this.f5867f, this.f5866e, this.f5868g);
            this.f5869h[i2] = sm1Var2;
            sm1Var2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> void b(uq1<T> uq1Var) {
        synchronized (this.f5863b) {
            this.f5863b.remove(uq1Var);
        }
        synchronized (this.f5871j) {
            Iterator<ou1> it = this.f5871j.iterator();
            while (it.hasNext()) {
                it.next().a(uq1Var);
            }
        }
        a(uq1Var, 5);
    }

    public final <T> uq1<T> a(uq1<T> uq1Var) {
        uq1Var.a(this);
        synchronized (this.f5863b) {
            this.f5863b.add(uq1Var);
        }
        uq1Var.b(this.f5862a.incrementAndGet());
        uq1Var.a("add-to-queue");
        a(uq1Var, 0);
        if (!uq1Var.h()) {
            this.f5865d.add(uq1Var);
            return uq1Var;
        }
        this.f5864c.add(uq1Var);
        return uq1Var;
    }

    private bu1(a aVar, tn1 tn1Var, int i2) {
        this(aVar, tn1Var, 4, new vj1(new Handler(Looper.getMainLooper())));
    }

    public bu1(a aVar, tn1 tn1Var) {
        this(aVar, tn1Var, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(uq1<?> uq1Var, int i2) {
        synchronized (this.f5872k) {
            Iterator<yu1> it = this.f5872k.iterator();
            while (it.hasNext()) {
                it.next().a(uq1Var, i2);
            }
        }
    }
}
