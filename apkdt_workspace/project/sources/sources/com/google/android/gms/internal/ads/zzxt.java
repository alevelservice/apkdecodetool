package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzxt extends zzwi {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.p.a f11268e;

    public zzxt(com.google.android.gms.ads.p.a aVar) {
        this.f11268e = aVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwf
    public final void onAdMetadataChanged() {
        com.google.android.gms.ads.p.a aVar = this.f11268e;
        if (aVar != null) {
            aVar.onAdMetadataChanged();
        }
    }
}
