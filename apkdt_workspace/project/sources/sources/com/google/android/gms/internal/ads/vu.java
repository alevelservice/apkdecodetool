package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vu implements oe1<tu> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<com.google.android.gms.ads.o.a>>> f9988a;

    private vu(af1<Set<ox<com.google.android.gms.ads.o.a>>> af1Var) {
        this.f9988a = af1Var;
    }

    public static vu a(af1<Set<ox<com.google.android.gms.ads.o.a>>> af1Var) {
        return new vu(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new tu(this.f9988a.get());
    }
}
