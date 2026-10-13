package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ja0 implements oe1<ApplicationInfo> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7447a;

    private ja0(af1<Context> af1Var) {
        this.f7447a = af1Var;
    }

    public static ja0 a(af1<Context> af1Var) {
        return new ja0(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ApplicationInfo applicationInfo = this.f7447a.get().getApplicationInfo();
        ue1.a(applicationInfo, "Cannot return null from a non-@Nullable @Provides method");
        return applicationInfo;
    }
}
