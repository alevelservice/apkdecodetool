package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class f5 implements com.google.android.gms.ads.mediation.c<com.google.android.gms.ads.mediation.o, Object> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzajj f6563a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.ads.mediation.a f6564b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f5(zzajz zzajzVar, zzajj zzajjVar, com.google.android.gms.ads.mediation.a aVar) {
        this.f6563a = zzajjVar;
        this.f6564b = aVar;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void onFailure(String str) {
        try {
            String canonicalName = this.f6564b.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded medation ad: ");
            sb.append(str);
            qd.a(sb.toString());
            this.f6563a.onAdFailedToLoad(0);
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }
}
