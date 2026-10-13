package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uw implements oe1<Set<ox<zu>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f9830a;

    private uw(hw hwVar) {
        this.f9830a = hwVar;
    }

    public static uw a(hw hwVar) {
        return new uw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<zu>> i2 = this.f9830a.i();
        ue1.a(i2, "Cannot return null from a non-@Nullable @Provides method");
        return i2;
    }
}
