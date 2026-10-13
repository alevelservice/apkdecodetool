package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.j;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g30 implements oe1<ox<j.a>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<n50> f6791a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6792b;

    public g30(a30 a30Var, af1<n50> af1Var, af1<Executor> af1Var2) {
        this.f6791a = af1Var;
        this.f6792b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6791a.get(), this.f6792b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
