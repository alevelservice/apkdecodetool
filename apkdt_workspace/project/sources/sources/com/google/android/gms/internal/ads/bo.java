package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bo implements oe1<Set<ox<com.google.android.gms.ads.internal.overlay.m>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qn> f5811a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5812b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<JSONObject> f5813c;

    private bo(af1<qn> af1Var, af1<Executor> af1Var2, af1<JSONObject> af1Var3) {
        this.f5811a = af1Var;
        this.f5812b = af1Var2;
        this.f5813c = af1Var3;
    }

    public static bo a(af1<qn> af1Var, af1<Executor> af1Var2, af1<JSONObject> af1Var3) {
        return new bo(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set singleton;
        qn qnVar = this.f5811a.get();
        Executor executor = this.f5812b.get();
        if (this.f5813c.get() == null) {
            singleton = Collections.emptySet();
        } else {
            singleton = Collections.singleton(new ox(qnVar, executor));
        }
        ue1.a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
