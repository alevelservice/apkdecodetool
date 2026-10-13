package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ru implements oe1<pu> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<qu>>> f9232a;

    private ru(af1<Set<ox<qu>>> af1Var) {
        this.f9232a = af1Var;
    }

    public static ru a(af1<Set<ox<qu>>> af1Var) {
        return new ru(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new pu(this.f9232a.get());
    }
}
