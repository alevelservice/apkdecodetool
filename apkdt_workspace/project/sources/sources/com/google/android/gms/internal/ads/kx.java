package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kx implements oe1<jx> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<gx>>> f7776a;

    private kx(af1<Set<ox<gx>>> af1Var) {
        this.f7776a = af1Var;
    }

    public static kx a(af1<Set<ox<gx>>> af1Var) {
        return new kx(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new jx(this.f7776a.get());
    }
}
