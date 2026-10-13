package com.google.android.gms.internal.ads;

import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cp implements oe1<View> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f6079a;

    public cp(yo yoVar) {
        this.f6079a = yoVar;
    }

    public static View a(yo yoVar) {
        View b2 = yoVar.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f6079a);
    }
}
