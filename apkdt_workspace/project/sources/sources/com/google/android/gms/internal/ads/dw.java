package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dw implements oe1<aw> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<Object>>> f6321a;

    private dw(af1<Set<ox<Object>>> af1Var) {
        this.f6321a = af1Var;
    }

    public static dw a(af1<Set<ox<Object>>> af1Var) {
        return new dw(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new aw(this.f6321a.get());
    }
}
