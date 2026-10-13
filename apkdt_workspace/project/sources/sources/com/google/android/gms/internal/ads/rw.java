package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rw implements oe1<Set<ox<st>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f9251a;

    public rw(hw hwVar) {
        this.f9251a = hwVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<st>> d2 = this.f9251a.d();
        ue1.a(d2, "Cannot return null from a non-@Nullable @Provides method");
        return d2;
    }
}
