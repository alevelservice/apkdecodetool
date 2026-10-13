package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzty extends zzvl {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.doubleclick.a f11255e;

    public zzty(com.google.android.gms.ads.doubleclick.a aVar) {
        this.f11255e = aVar;
    }

    public final com.google.android.gms.ads.doubleclick.a getAppEventListener() {
        return this.f11255e;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void onAppEvent(String str, String str2) {
        this.f11255e.onAppEvent(str, str2);
    }
}
