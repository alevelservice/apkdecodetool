package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ku implements oe1<fu> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<jt>>> f7753a;

    private ku(af1<Set<ox<jt>>> af1Var) {
        this.f7753a = af1Var;
    }

    public static ku a(af1<Set<ox<jt>>> af1Var) {
        return new ku(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new fu(this.f7753a.get());
    }
}
