package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sw implements oe1<Set<ox<qu>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f9465a;

    private sw(hw hwVar) {
        this.f9465a = hwVar;
    }

    public static sw a(hw hwVar) {
        return new sw(hwVar);
    }

    public static Set<ox<qu>> b(hw hwVar) {
        Set<ox<qu>> b2 = hwVar.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f9465a);
    }
}
