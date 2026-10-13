package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class la0 implements oe1<PackageInfo> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7854a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ApplicationInfo> f7855b;

    private la0(af1<Context> af1Var, af1<ApplicationInfo> af1Var2) {
        this.f7854a = af1Var;
        this.f7855b = af1Var2;
    }

    public static la0 a(af1<Context> af1Var, af1<ApplicationInfo> af1Var2) {
        return new la0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    @Nullable
    public final /* synthetic */ Object get() {
        return z90.a(this.f7854a.get(), this.f7855b.get());
    }
}
