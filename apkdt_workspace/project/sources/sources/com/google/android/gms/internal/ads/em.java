package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class em implements oe1<com.google.android.gms.ads.internal.b> {

    /* renamed from: a, reason: collision with root package name */
    private final cm f6462a;

    public em(cm cmVar) {
        this.f6462a = cmVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        com.google.android.gms.ads.internal.b b2 = this.f6462a.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}
