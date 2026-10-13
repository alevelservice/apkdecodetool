package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j70 implements oe1<Set<ox<fv0>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f7434a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<w70> f7435b;

    private j70(af1<Executor> af1Var, af1<w70> af1Var2) {
        this.f7434a = af1Var;
        this.f7435b = af1Var2;
    }

    public static j70 a(af1<Executor> af1Var, af1<w70> af1Var2) {
        return new j70(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set emptySet;
        Executor executor = this.f7434a.get();
        w70 w70Var = this.f7435b.get();
        if (((Boolean) mu1.e().a(aw1.I2)).booleanValue()) {
            emptySet = Collections.singleton(new ox(w70Var, executor));
        } else {
            emptySet = Collections.emptySet();
        }
        ue1.a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
