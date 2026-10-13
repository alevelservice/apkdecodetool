package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tk0 implements oe1<rk0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<String>> f9597a;

    private tk0(af1<Set<String>> af1Var) {
        this.f9597a = af1Var;
    }

    public static tk0 a(af1<Set<String>> af1Var) {
        return new tk0(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new rk0(this.f9597a.get());
    }
}
