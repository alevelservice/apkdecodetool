package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yn implements oe1<Set<ox<fq1>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qn> f10601a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f10602b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<JSONObject> f10603c;

    private yn(af1<qn> af1Var, af1<Executor> af1Var2, af1<JSONObject> af1Var3) {
        this.f10601a = af1Var;
        this.f10602b = af1Var2;
        this.f10603c = af1Var3;
    }

    public static yn a(af1<qn> af1Var, af1<Executor> af1Var2, af1<JSONObject> af1Var3) {
        return new yn(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set singleton;
        qn qnVar = this.f10601a.get();
        Executor executor = this.f10602b.get();
        if (this.f10603c.get() == null) {
            singleton = Collections.emptySet();
        } else {
            singleton = Collections.singleton(new ox(qnVar, executor));
        }
        ue1.a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
