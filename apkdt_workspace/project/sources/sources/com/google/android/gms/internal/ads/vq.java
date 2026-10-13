package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vq<AdT> implements oe1<wq<AdT>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Map<String, ad0<AdT>>> f9978a;

    private vq(af1<Map<String, ad0<AdT>>> af1Var) {
        this.f9978a = af1Var;
    }

    public static <AdT> vq<AdT> a(af1<Map<String, ad0<AdT>>> af1Var) {
        return new vq<>(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new wq(this.f9978a.get());
    }
}
