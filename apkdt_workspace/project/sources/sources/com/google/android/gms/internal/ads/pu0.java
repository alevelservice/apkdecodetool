package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pu0 {

    /* renamed from: a, reason: collision with root package name */
    private final E f8787a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ku0 f8788b;

    private pu0(ku0 ku0Var, E e2) {
        this.f8788b = ku0Var;
        this.f8787a = e2;
    }

    public final <O> ru0<O> a(qz0<O> qz0Var) {
        qz0 qz0Var2;
        ku0 ku0Var = this.f8788b;
        E e2 = this.f8787a;
        qz0Var2 = ku0.f7754d;
        return new ru0<>(ku0Var, e2, qz0Var2, Collections.emptyList(), qz0Var);
    }

    public final <O> ru0<O> a(Callable<O> callable) {
        tz0 tz0Var;
        tz0Var = this.f8788b.f7755a;
        return a(callable, tz0Var);
    }

    private final <O> ru0<O> a(Callable<O> callable, tz0 tz0Var) {
        qz0 qz0Var;
        ku0 ku0Var = this.f8788b;
        E e2 = this.f8787a;
        qz0Var = ku0.f7754d;
        return new ru0<>(ku0Var, e2, qz0Var, Collections.emptyList(), tz0Var.submit(callable));
    }

    public final ru0<?> a(final iu0 iu0Var, tz0 tz0Var) {
        return a(new Callable(iu0Var) { // from class: com.google.android.gms.internal.ads.ou0

            /* renamed from: e, reason: collision with root package name */
            private final iu0 f8598e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8598e = iu0Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f8598e.run();
                return null;
            }
        }, tz0Var);
    }
}
