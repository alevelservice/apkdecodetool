package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xv implements oe1<vv> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<wv>>> f10437a;

    private xv(af1<Set<ox<wv>>> af1Var) {
        this.f10437a = af1Var;
    }

    public static xv a(af1<Set<ox<wv>>> af1Var) {
        return new xv(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new vv(this.f10437a.get());
    }
}
