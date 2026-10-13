package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class px implements oe1<nx> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8805a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Set<ox<fq1>>> f8806b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ns0> f8807c;

    private px(af1<Context> af1Var, af1<Set<ox<fq1>>> af1Var2, af1<ns0> af1Var3) {
        this.f8805a = af1Var;
        this.f8806b = af1Var2;
        this.f8807c = af1Var3;
    }

    public static px a(af1<Context> af1Var, af1<Set<ox<fq1>>> af1Var2, af1<ns0> af1Var3) {
        return new px(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new nx(this.f8805a.get(), this.f8806b.get(), this.f8807c.get());
    }
}
