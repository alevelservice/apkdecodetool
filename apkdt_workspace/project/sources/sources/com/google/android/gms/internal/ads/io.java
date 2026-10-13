package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class io implements oe1<Set<ox<fq1>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<jq> f7347a;

    public io(go goVar, af1<jq> af1Var) {
        this.f7347a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(new ox(this.f7347a.get(), yd.f10544e));
        ue1.a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
