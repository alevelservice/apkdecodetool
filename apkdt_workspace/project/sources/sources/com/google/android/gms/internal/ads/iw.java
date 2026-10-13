package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class iw implements oe1<mt> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f7390a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Set<ox<ot>>> f7391b;

    private iw(hw hwVar, af1<Set<ox<ot>>> af1Var) {
        this.f7390a = hwVar;
        this.f7391b = af1Var;
    }

    public static iw a(hw hwVar, af1<Set<ox<ot>>> af1Var) {
        return new iw(hwVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        mt a2 = this.f7390a.a(this.f7391b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
