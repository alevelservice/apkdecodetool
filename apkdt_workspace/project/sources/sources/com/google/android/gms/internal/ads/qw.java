package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qw implements oe1<Set<ox<wt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f9011a;

    private qw(hw hwVar) {
        this.f9011a = hwVar;
    }

    public static qw a(hw hwVar) {
        return new qw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<wt>> h2 = this.f9011a.h();
        ue1.a(h2, "Cannot return null from a non-@Nullable @Provides method");
        return h2;
    }
}
