package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzxr extends zzapk {

    /* renamed from: e, reason: collision with root package name */
    private zzapo f11267e;

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean isLoaded() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void pause() {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void resume() {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setCustomData(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void show() {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapj zzapjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapu zzapuVar) {
        qd.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        gd.f6840b.post(new fv1(this));
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzvh zzvhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzm(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzn(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzo(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zzp(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean zzph() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapo zzapoVar) {
        this.f11267e = zzapoVar;
    }
}
