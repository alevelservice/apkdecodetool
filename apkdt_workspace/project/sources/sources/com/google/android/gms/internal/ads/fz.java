package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fz implements oe1<Set<ox<gx>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<vz> f6768a;

    private fz(af1<vz> af1Var) {
        this.f6768a = af1Var;
    }

    public static fz a(af1<vz> af1Var) {
        return new fz(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(ox.a(this.f6768a.get(), yd.f10544e));
        ue1.a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
