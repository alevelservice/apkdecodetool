package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zztq extends zzvk {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.o.a f11245e;

    public zztq(com.google.android.gms.ads.o.a aVar) {
        this.f11245e = aVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdMetadataChanged() {
        com.google.android.gms.ads.o.a aVar = this.f11245e;
        if (aVar != null) {
            aVar.a();
        }
    }
}
