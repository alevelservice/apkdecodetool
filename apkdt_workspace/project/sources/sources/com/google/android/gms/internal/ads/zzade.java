package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.h;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzade extends zzaco {

    /* renamed from: e, reason: collision with root package name */
    private final h.c f10898e;

    public zzade(h.c cVar) {
        this.f10898e = cVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final void onUnconfirmedClickCancelled() {
        this.f10898e.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final void onUnconfirmedClickReceived(String str) {
        this.f10898e.onUnconfirmedClickReceived(str);
    }
}
