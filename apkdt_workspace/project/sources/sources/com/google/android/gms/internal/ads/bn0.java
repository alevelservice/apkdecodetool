package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bn0 implements oe1<um0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f5803a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f5804b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<PackageInfo> f5805c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<pa> f5806d;

    public bn0(af1<tz0> af1Var, af1<ws0> af1Var2, af1<PackageInfo> af1Var3, af1<pa> af1Var4) {
        this.f5803a = af1Var;
        this.f5804b = af1Var2;
        this.f5805c = af1Var3;
        this.f5806d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new um0(this.f5803a.get(), this.f5804b.get(), this.f5805c.get(), this.f5806d.get());
    }
}
