package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ow implements oe1<Set<ox<ot>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f8599a;

    private ow(hw hwVar) {
        this.f8599a = hwVar;
    }

    public static ow a(hw hwVar) {
        return new ow(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<ot>> c2 = this.f8599a.c();
        ue1.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }
}
