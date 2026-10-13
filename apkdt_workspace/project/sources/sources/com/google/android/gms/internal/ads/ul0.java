package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.lo0;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ul0<S extends lo0<?>> implements ko0<S> {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicReference<tl0<S>> f9765a = new AtomicReference<>();

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f9766b;

    /* renamed from: c, reason: collision with root package name */
    private final ko0<S> f9767c;

    /* renamed from: d, reason: collision with root package name */
    private final long f9768d;

    public ul0(ko0<S> ko0Var, long j2, com.google.android.gms.common.util.e eVar) {
        this.f9766b = eVar;
        this.f9767c = ko0Var;
        this.f9768d = j2;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<S> a() {
        tl0<S> tl0Var = this.f9765a.get();
        if (tl0Var == null || tl0Var.a()) {
            tl0Var = new tl0<>(this.f9767c.a(), this.f9768d, this.f9766b);
            this.f9765a.set(tl0Var);
        }
        return tl0Var.f9601a;
    }
}
