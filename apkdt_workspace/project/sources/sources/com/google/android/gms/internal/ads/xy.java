package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xy implements oe1<Set<ox<jt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final qy f10444a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz> f10445b;

    private xy(qy qyVar, af1<tz> af1Var) {
        this.f10444a = qyVar;
        this.f10445b = af1Var;
    }

    public static xy a(qy qyVar, af1<tz> af1Var) {
        return new xy(qyVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<jt>> a2 = this.f10444a.a(this.f10445b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
