package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ww implements oe1<hw> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f10230a;

    private ww(hw hwVar) {
        this.f10230a = hwVar;
    }

    public static ww a(hw hwVar) {
        return new ww(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        hw hwVar = this.f10230a;
        if (hwVar == null) {
            throw null;
        }
        ue1.a(hwVar, "Cannot return null from a non-@Nullable @Provides method");
        return hwVar;
    }
}
