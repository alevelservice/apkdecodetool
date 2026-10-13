package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hv0 implements oe1<yu0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<fv0>>> f7172a;

    private hv0(af1<Set<ox<fv0>>> af1Var) {
        this.f7172a = af1Var;
    }

    public static hv0 a(af1<Set<ox<fv0>>> af1Var) {
        return new hv0(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new yu0(this.f7172a.get());
    }
}
