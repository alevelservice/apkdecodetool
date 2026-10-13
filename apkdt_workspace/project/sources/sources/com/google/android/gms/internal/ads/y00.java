package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y00 implements oe1<nx> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10455a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ns0> f10456b;

    public y00(af1<Context> af1Var, af1<ns0> af1Var2) {
        this.f10455a = af1Var;
        this.f10456b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        nx nxVar = new nx(this.f10455a.get(), new HashSet(), this.f10456b.get());
        ue1.a(nxVar, "Cannot return null from a non-@Nullable @Provides method");
        return nxVar;
    }
}
