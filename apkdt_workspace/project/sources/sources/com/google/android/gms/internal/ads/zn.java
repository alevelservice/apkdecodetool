package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zn implements oe1<Set<ox<vt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qn> f10807a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f10808b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<JSONObject> f10809c;

    private zn(af1<qn> af1Var, af1<Executor> af1Var2, af1<JSONObject> af1Var3) {
        this.f10807a = af1Var;
        this.f10808b = af1Var2;
        this.f10809c = af1Var3;
    }

    public static zn a(af1<qn> af1Var, af1<Executor> af1Var2, af1<JSONObject> af1Var3) {
        return new zn(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set singleton;
        qn qnVar = this.f10807a.get();
        Executor executor = this.f10808b.get();
        if (this.f10809c.get() == null) {
            singleton = Collections.emptySet();
        } else {
            singleton = Collections.singleton(new ox(qnVar, executor));
        }
        ue1.a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
