package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ft implements oe1<t8> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f6716a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f6717b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ns0> f6718c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<v8> f6719d;

    private ft(gt gtVar, af1<Context> af1Var, af1<zzawv> af1Var2, af1<ns0> af1Var3, af1<v8> af1Var4) {
        this.f6716a = af1Var;
        this.f6717b = af1Var2;
        this.f6718c = af1Var3;
        this.f6719d = af1Var4;
    }

    public static ft a(gt gtVar, af1<Context> af1Var, af1<zzawv> af1Var2, af1<ns0> af1Var3, af1<v8> af1Var4) {
        return new ft(gtVar, af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    @Nullable
    public final /* synthetic */ Object get() {
        Context context = this.f6716a.get();
        zzawv zzawvVar = this.f6717b.get();
        ns0 ns0Var = this.f6718c.get();
        v8 v8Var = this.f6719d.get();
        zzarn zzarnVar = ns0Var.x;
        if (zzarnVar != null) {
            return new l8(context, zzawvVar, zzarnVar, ns0Var.p.f9224b, v8Var);
        }
        return null;
    }
}
