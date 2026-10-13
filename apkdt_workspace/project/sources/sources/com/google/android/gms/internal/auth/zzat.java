package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* loaded from: classes.dex */
final class zzat extends zzaj {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ i f11344e;

    zzat(i iVar) {
        this.f11344e = iVar;
    }

    @Override // com.google.android.gms.internal.auth.zzaj, com.google.android.gms.internal.auth.zzal
    public final void zza(ProxyResponse proxyResponse) {
        this.f11344e.a((i) new k(proxyResponse));
    }
}
