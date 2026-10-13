package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcup extends zzaqj {

    /* renamed from: e, reason: collision with root package name */
    private final yr0 f11168e;

    /* renamed from: f, reason: collision with root package name */
    private final ar0 f11169f;

    /* renamed from: g, reason: collision with root package name */
    private final String f11170g;

    /* renamed from: h, reason: collision with root package name */
    private final us0 f11171h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private r50 f11172i;

    public zzcup(@Nullable String str, yr0 yr0Var, ar0 ar0Var, us0 us0Var) {
        this.f11170g = str;
        this.f11168e = yr0Var;
        this.f11169f = ar0Var;
        this.f11171h = us0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final Bundle getAdMetadata() {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        r50 r50Var = this.f11172i;
        return r50Var != null ? r50Var.f() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final synchronized String getMediationAdapterClassName() {
        if (this.f11172i == null) {
            return null;
        }
        return this.f11172i.b();
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final boolean isLoaded() {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        r50 r50Var = this.f11172i;
        return (r50Var == null || r50Var.h()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final synchronized void zza(zztp zztpVar, zzaqo zzaqoVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        this.f11169f.a(zzaqoVar);
        if (this.f11172i != null) {
            return;
        }
        this.f11168e.a(zztpVar, this.f11170g, new vr0(null), new bs0(this));
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final synchronized void zzl(IObjectWrapper iObjectWrapper) {
        zza(iObjectWrapper, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    @Nullable
    public final zzaqf zzpg() {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        r50 r50Var = this.f11172i;
        if (r50Var != null) {
            return r50Var.i();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final synchronized void zza(IObjectWrapper iObjectWrapper, boolean z) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        if (this.f11172i == null) {
            qd.d("Rewarded can not be shown before loaded");
            this.f11169f.zzcm(2);
        } else {
            this.f11172i.a(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzaql zzaqlVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        this.f11169f.a(zzaqlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzaqt zzaqtVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        this.f11169f.a(zzaqtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zza(zzwf zzwfVar) {
        if (zzwfVar == null) {
            this.f11169f.a((com.google.android.gms.ads.o.a) null);
        } else {
            this.f11169f.a(new ds0(this, zzwfVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final synchronized void zza(zzarb zzarbVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        us0 us0Var = this.f11171h;
        us0Var.f9808a = zzarbVar.f10983e;
        if (((Boolean) mu1.e().a(aw1.I0)).booleanValue()) {
            us0Var.f9809b = zzarbVar.f10984f;
        }
    }
}
