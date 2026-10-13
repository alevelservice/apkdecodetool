package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mu0 {

    /* renamed from: a, reason: collision with root package name */
    private final E f8234a;

    /* renamed from: b, reason: collision with root package name */
    private final List<qz0<?>> f8235b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ku0 f8236c;

    private mu0(ku0 ku0Var, E e2, List<qz0<?>> list) {
        this.f8236c = ku0Var;
        this.f8234a = e2;
        this.f8235b = list;
    }

    public final <O> ru0<O> a(Callable<O> callable) {
        tz0 tz0Var;
        lz0 b2 = gz0.b(this.f8235b);
        qz0 a2 = b2.a(lu0.f7979e, yd.f10544e);
        ku0 ku0Var = this.f8236c;
        E e2 = this.f8234a;
        List<qz0<?>> list = this.f8235b;
        tz0Var = ku0Var.f7755a;
        return new ru0<>(ku0Var, e2, a2, list, b2.a(callable, tz0Var));
    }
}
