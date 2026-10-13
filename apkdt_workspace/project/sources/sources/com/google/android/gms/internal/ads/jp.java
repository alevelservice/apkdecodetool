package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jp implements oe1<Set<ox<qu>>> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f7545a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<jq> f7546b;

    public jp(yo yoVar, af1<jq> af1Var) {
        this.f7545a = yoVar;
        this.f7546b = af1Var;
    }

    public static Set<ox<qu>> a(yo yoVar, jq jqVar) {
        Set<ox<qu>> singleton = Collections.singleton(new ox(jqVar, yd.f10544e));
        ue1.a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f7545a, this.f7546b.get());
    }
}
