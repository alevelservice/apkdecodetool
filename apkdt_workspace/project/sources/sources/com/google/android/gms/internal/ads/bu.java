package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bu implements oe1<yt> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<vt>>> f5860a;

    private bu(af1<Set<ox<vt>>> af1Var) {
        this.f5860a = af1Var;
    }

    public static bu a(af1<Set<ox<vt>>> af1Var) {
        return new bu(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new yt(this.f5860a.get());
    }
}
