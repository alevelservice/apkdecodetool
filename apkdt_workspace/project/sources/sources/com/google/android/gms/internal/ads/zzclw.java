package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzclw extends zzuv {

    /* renamed from: e, reason: collision with root package name */
    private final gj0<sq> f11162e;

    /* renamed from: f, reason: collision with root package name */
    private final String f11163f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private String f11164g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private String f11165h;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f11166i;

    public zzclw(gj0<sq> gj0Var, String str) {
        this.f11162e = gj0Var;
        this.f11163f = str;
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized String getMediationAdapterClassName() {
        return this.f11164g;
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized boolean isLoading() {
        return this.f11162e.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized void zza(zztp zztpVar, int i2) {
        this.f11164g = null;
        this.f11165h = null;
        this.f11162e.a(zztpVar, this.f11163f, new hj0(i2), new bj0(this));
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zzb(zztp zztpVar) {
        zza(zztpVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final synchronized String zzjp() {
        return this.f11165h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(zzclw zzclwVar, boolean z) {
        zzclwVar.f11166i = false;
        return false;
    }
}
