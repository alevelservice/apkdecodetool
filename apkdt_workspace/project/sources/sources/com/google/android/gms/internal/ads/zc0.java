package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zc0<DelegateT, AdapterT> implements ad0<AdapterT> {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private final ad0<DelegateT> f10726a;

    /* renamed from: b, reason: collision with root package name */
    private final pw0<DelegateT, AdapterT> f10727b;

    public zc0(ad0<DelegateT> ad0Var, pw0<DelegateT, AdapterT> pw0Var) {
        this.f10726a = ad0Var;
        this.f10727b = pw0Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<AdapterT> a(vs0 vs0Var, ns0 ns0Var) {
        return gz0.a(this.f10726a.a(vs0Var, ns0Var), this.f10727b, yd.f10540a);
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        return this.f10726a.b(vs0Var, ns0Var);
    }
}
