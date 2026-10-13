package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bw implements oe1<zv> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<com.google.android.gms.ads.doubleclick.a>>> f5876a;

    private bw(af1<Set<ox<com.google.android.gms.ads.doubleclick.a>>> af1Var) {
        this.f5876a = af1Var;
    }

    public static bw a(af1<Set<ox<com.google.android.gms.ads.doubleclick.a>>> af1Var) {
        return new bw(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zv(this.f5876a.get());
    }
}
