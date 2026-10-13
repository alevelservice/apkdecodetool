package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class no0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Set<ko0<? extends lo0<T>>> f8403a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f8404b;

    public no0(Executor executor, Set<ko0<? extends lo0<T>>> set) {
        this.f8404b = executor;
        this.f8403a = set;
    }

    public final qz0<T> a(final T t) {
        final ArrayList arrayList = new ArrayList(this.f8403a.size());
        for (final ko0<? extends lo0<T>> ko0Var : this.f8403a) {
            qz0<? extends lo0<T>> a2 = ko0Var.a();
            if (((Boolean) mu1.e().a(aw1.Y0)).booleanValue()) {
                final long c2 = com.google.android.gms.ads.internal.n.j().c();
                a2.a(new Runnable(ko0Var, c2) { // from class: com.google.android.gms.internal.ads.mo0

                    /* renamed from: e, reason: collision with root package name */
                    private final ko0 f8199e;

                    /* renamed from: f, reason: collision with root package name */
                    private final long f8200f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8199e = ko0Var;
                        this.f8200f = c2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ko0 ko0Var2 = this.f8199e;
                        long j2 = this.f8200f;
                        String canonicalName = ko0Var2.getClass().getCanonicalName();
                        long c3 = com.google.android.gms.ads.internal.n.j().c() - j2;
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(c3);
                        na.e(sb.toString());
                    }
                }, yd.f10544e);
            }
            arrayList.add(a2);
        }
        return gz0.b(arrayList).a(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.po0

            /* renamed from: e, reason: collision with root package name */
            private final List f8740e;

            /* renamed from: f, reason: collision with root package name */
            private final Object f8741f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8740e = arrayList;
                this.f8741f = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List list = this.f8740e;
                Object obj = this.f8741f;
                no0.a(list, obj);
                return obj;
            }
        }, this.f8404b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Object a(List list, Object obj) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                lo0 lo0Var = (lo0) ((qz0) it.next()).get();
                if (lo0Var != null) {
                    lo0Var.a(obj);
                }
            } catch (InterruptedException | ExecutionException e2) {
                qd.b("Derive quality signals error.", e2);
                throw new Exception(e2);
            }
        }
        return obj;
    }
}
