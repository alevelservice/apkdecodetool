package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ux implements oe1<sx> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<tx>>> f9831a;

    private ux(af1<Set<ox<tx>>> af1Var) {
        this.f9831a = af1Var;
    }

    public static ux a(af1<Set<ox<tx>>> af1Var) {
        return new ux(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new sx(this.f9831a.get());
    }
}
