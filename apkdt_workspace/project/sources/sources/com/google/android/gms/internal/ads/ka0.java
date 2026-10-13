package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ka0 implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7648a;

    private ka0(af1<Context> af1Var) {
        this.f7648a = af1Var;
    }

    public static ka0 a(af1<Context> af1Var) {
        return new ka0(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        String packageName = this.f7648a.get().getPackageName();
        ue1.a(packageName, "Cannot return null from a non-@Nullable @Provides method");
        return packageName;
    }
}
