package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kt implements oe1<it> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<st1>>> f7749a;

    private kt(af1<Set<ox<st1>>> af1Var) {
        this.f7749a = af1Var;
    }

    public static kt a(af1<Set<ox<st1>>> af1Var) {
        return new kt(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new it(this.f7749a.get());
    }
}
