package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xw implements oe1<Set<ox<com.google.android.gms.ads.doubleclick.a>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f10439a;

    private xw(hw hwVar) {
        this.f10439a = hwVar;
    }

    public static xw a(hw hwVar) {
        return new xw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<com.google.android.gms.ads.doubleclick.a>> f2 = this.f10439a.f();
        ue1.a(f2, "Cannot return null from a non-@Nullable @Provides method");
        return f2;
    }
}
