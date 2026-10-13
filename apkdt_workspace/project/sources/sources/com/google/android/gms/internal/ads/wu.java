package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wu implements oe1<uu> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<zu>>> f10206a;

    private wu(af1<Set<ox<zu>>> af1Var) {
        this.f10206a = af1Var;
    }

    public static wu a(af1<Set<ox<zu>>> af1Var) {
        return new wu(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new uu(this.f10206a.get());
    }
}
