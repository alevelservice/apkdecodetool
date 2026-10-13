package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tj0 implements oe1<Set<String>> {

    /* renamed from: a, reason: collision with root package name */
    private final rj0 f9592a;

    public tj0(rj0 rj0Var) {
        this.f9592a = rj0Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<String> a2 = this.f9592a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
