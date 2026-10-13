package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzxl extends zzvt {

    /* renamed from: e, reason: collision with root package name */
    private zzafe f11266e;

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getVersionString() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void initialize() {
        qd.b("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        gd.f6840b.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.dv1

            /* renamed from: e, reason: collision with root package name */
            private final zzxl f6320e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6320e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6320e.zzpf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setAppMuted(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setAppVolume(float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzafe zzafeVar) {
        this.f11266e = zzafeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzajd zzajdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxw zzxwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzby(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbz(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzc(IObjectWrapper iObjectWrapper, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final float zzoo() {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zzop() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final List<zzaex> zzoq() {
        return Collections.EMPTY_LIST;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzpf() {
        zzafe zzafeVar = this.f11266e;
        if (zzafeVar != null) {
            try {
                zzafeVar.zzc(Collections.EMPTY_LIST);
            } catch (RemoteException e2) {
                qd.c("Could not notify onComplete event.", e2);
            }
        }
    }
}
