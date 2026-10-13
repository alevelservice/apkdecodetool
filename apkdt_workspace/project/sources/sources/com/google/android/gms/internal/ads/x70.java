package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x70 implements oe1<w70> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ks1> f10285a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Map<wu0, y70>> f10286b;

    private x70(af1<ks1> af1Var, af1<Map<wu0, y70>> af1Var2) {
        this.f10285a = af1Var;
        this.f10286b = af1Var2;
    }

    public static x70 a(af1<ks1> af1Var, af1<Map<wu0, y70>> af1Var2) {
        return new x70(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new w70(this.f10285a.get(), this.f10286b.get());
    }
}
