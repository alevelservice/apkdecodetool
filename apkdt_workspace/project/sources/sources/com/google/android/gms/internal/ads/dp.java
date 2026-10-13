package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dp implements oe1<pu> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f6281a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Set<ox<qu>>> f6282b;

    public dp(yo yoVar, af1<Set<ox<qu>>> af1Var) {
        this.f6281a = yoVar;
        this.f6282b = af1Var;
    }

    public static pu a(yo yoVar, Set<ox<qu>> set) {
        pu a2 = yoVar.a(set);
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f6281a, this.f6282b.get());
    }
}
