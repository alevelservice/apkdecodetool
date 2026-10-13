package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vw implements oe1<Set<ox<com.google.android.gms.ads.o.a>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f9997a;

    private vw(hw hwVar) {
        this.f9997a = hwVar;
    }

    public static vw a(hw hwVar) {
        return new vw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<com.google.android.gms.ads.o.a>> e2 = this.f9997a.e();
        ue1.a(e2, "Cannot return null from a non-@Nullable @Provides method");
        return e2;
    }
}
