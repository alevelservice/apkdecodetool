package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oo0<T> implements oe1<no0<T>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f8568a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Set<ko0<? extends lo0<T>>>> f8569b;

    private oo0(af1<Executor> af1Var, af1<Set<ko0<? extends lo0<T>>>> af1Var2) {
        this.f8568a = af1Var;
        this.f8569b = af1Var2;
    }

    public static <T> oo0<T> a(af1<Executor> af1Var, af1<Set<ko0<? extends lo0<T>>>> af1Var2) {
        return new oo0<>(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new no0(this.f8568a.get(), this.f8569b.get());
    }
}
