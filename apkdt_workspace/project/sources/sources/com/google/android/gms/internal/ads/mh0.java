package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.nu;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mh0<AdT, AdapterT, ListenerT extends nu> implements oe1<ih0<AdT, AdapterT, ListenerT>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f8136a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f8137b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ed0<AdapterT, ListenerT>> f8138c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<dd0<AdT, AdapterT, ListenerT>> f8139d;

    private mh0(af1<zu0> af1Var, af1<tz0> af1Var2, af1<ed0<AdapterT, ListenerT>> af1Var3, af1<dd0<AdT, AdapterT, ListenerT>> af1Var4) {
        this.f8136a = af1Var;
        this.f8137b = af1Var2;
        this.f8138c = af1Var3;
        this.f8139d = af1Var4;
    }

    public static <AdT, AdapterT, ListenerT extends nu> mh0<AdT, AdapterT, ListenerT> a(af1<zu0> af1Var, af1<tz0> af1Var2, af1<ed0<AdapterT, ListenerT>> af1Var3, af1<dd0<AdT, AdapterT, ListenerT>> af1Var4) {
        return new mh0<>(af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ih0(this.f8136a.get(), this.f8137b.get(), this.f8138c.get(), this.f8139d.get());
    }
}
