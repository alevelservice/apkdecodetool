package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lv implements oe1<yu> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Set<ox<com.google.android.gms.ads.internal.overlay.m>>> f7982a;

    private lv(af1<Set<ox<com.google.android.gms.ads.internal.overlay.m>>> af1Var) {
        this.f7982a = af1Var;
    }

    public static lv a(af1<Set<ox<com.google.android.gms.ads.internal.overlay.m>>> af1Var) {
        return new lv(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new yu(this.f7982a.get());
    }
}
