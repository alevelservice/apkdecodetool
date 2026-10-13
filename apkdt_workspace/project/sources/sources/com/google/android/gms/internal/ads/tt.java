package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tt implements oe1<rt> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<wt>>> f9634a;

    private tt(af1<Set<ox<wt>>> af1Var) {
        this.f9634a = af1Var;
    }

    public static tt a(af1<Set<ox<wt>>> af1Var) {
        return new tt(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new rt(this.f9634a.get());
    }
}
