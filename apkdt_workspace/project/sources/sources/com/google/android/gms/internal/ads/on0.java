package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class on0 implements oe1<mn0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f8566a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Bundle> f8567b;

    private on0(af1<tz0> af1Var, af1<Bundle> af1Var2) {
        this.f8566a = af1Var;
        this.f8567b = af1Var2;
    }

    public static on0 a(af1<tz0> af1Var, af1<Bundle> af1Var2) {
        return new on0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new mn0(this.f8566a.get(), this.f8567b.get());
    }
}
