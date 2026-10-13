package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kn0 implements oe1<gn0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ApplicationInfo> f7724a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<PackageInfo> f7725b;

    private kn0(af1<ApplicationInfo> af1Var, af1<PackageInfo> af1Var2) {
        this.f7724a = af1Var;
        this.f7725b = af1Var2;
    }

    public static kn0 a(af1<ApplicationInfo> af1Var, af1<PackageInfo> af1Var2) {
        return new kn0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new gn0(this.f7724a.get(), this.f7725b.get());
    }
}
