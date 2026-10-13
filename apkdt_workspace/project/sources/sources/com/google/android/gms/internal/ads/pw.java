package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pw implements oe1<Set<ox<st1>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f8799a;

    private pw(hw hwVar) {
        this.f8799a = hwVar;
    }

    public static pw a(hw hwVar) {
        return new pw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<st1>> g2 = this.f8799a.g();
        ue1.a(g2, "Cannot return null from a non-@Nullable @Provides method");
        return g2;
    }
}
