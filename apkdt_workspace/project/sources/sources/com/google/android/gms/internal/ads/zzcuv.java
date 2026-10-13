package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcuv extends zzapk {

    /* renamed from: e, reason: collision with root package name */
    private final yr0 f11173e;

    /* renamed from: f, reason: collision with root package name */
    private final ar0 f11174f;

    /* renamed from: g, reason: collision with root package name */
    private final us0 f11175g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private r50 f11176h;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f11177i = false;

    public zzcuv(yr0 yr0Var, ar0 ar0Var, us0 us0Var) {
        this.f11173e = yr0Var;
        this.f11174f = ar0Var;
        this.f11175g = us0Var;
    }

    private final synchronized boolean a() {
        boolean z;
        if (this.f11176h != null) {
            z = this.f11176h.g() ? false : true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void destroy() {
        zzp(null);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final Bundle getAdMetadata() {
        com.google.android.gms.common.internal.m.a("getAdMetadata can only be called from the UI thread.");
        r50 r50Var = this.f11176h;
        return r50Var != null ? r50Var.f() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized String getMediationAdapterClassName() {
        if (this.f11176h == null) {
            return null;
        }
        return this.f11176h.b();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean isLoaded() {
        com.google.android.gms.common.internal.m.a("isLoaded must be called on the main UI thread.");
        return a();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void pause() {
        zzn(null);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void resume() {
        zzo(null);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void setCustomData(String str) {
        if (((Boolean) mu1.e().a(aw1.I0)).booleanValue()) {
            com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.: setCustomData");
            this.f11175g.f9809b = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void setImmersiveMode(boolean z) {
        com.google.android.gms.common.internal.m.a("setImmersiveMode must be called on the main UI thread.");
        this.f11177i = z;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void setUserId(String str) {
        com.google.android.gms.common.internal.m.a("setUserId must be called on the main UI thread.");
        this.f11175g.f9808a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void show() {
        zzm(null);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void zza(zzapu zzapuVar) {
        com.google.android.gms.common.internal.m.a("loadAd must be called on the main UI thread.");
        if (cw1.a(zzapuVar.f10977f)) {
            return;
        }
        if (a()) {
            if (!((Boolean) mu1.e().a(aw1.U2)).booleanValue()) {
                return;
            }
        }
        vr0 vr0Var = new vr0(null);
        this.f11176h = null;
        this.f11173e.a(zzapuVar.f10976e, zzapuVar.f10977f, vr0Var, new gs0(this));
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void zzm(@Nullable IObjectWrapper iObjectWrapper) {
        Activity activity;
        com.google.android.gms.common.internal.m.a("showAd must be called on the main UI thread.");
        if (this.f11176h == null) {
            return;
        }
        if (iObjectWrapper != null) {
            Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
            if (unwrap instanceof Activity) {
                activity = (Activity) unwrap;
                this.f11176h.a(this.f11177i, activity);
            }
        }
        activity = null;
        this.f11176h.a(this.f11177i, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.common.internal.m.a("pause must be called on the main UI thread.");
        if (this.f11176h != null) {
            this.f11176h.d().a(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void zzo(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.common.internal.m.a("resume must be called on the main UI thread.");
        if (this.f11176h != null) {
            this.f11176h.d().b(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final synchronized void zzp(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        Context context = null;
        this.f11174f.a((com.google.android.gms.ads.o.a) null);
        if (this.f11176h != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.f11176h.d().c(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final boolean zzph() {
        r50 r50Var = this.f11176h;
        return r50Var != null && r50Var.j();
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapo zzapoVar) {
        com.google.android.gms.common.internal.m.a("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f11174f.a(zzapoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzapj zzapjVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f11174f.a(zzapjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzapl
    public final void zza(zzvh zzvhVar) {
        com.google.android.gms.common.internal.m.a("setAdMetadataListener can only be called from the UI thread.");
        if (zzvhVar == null) {
            this.f11174f.a((com.google.android.gms.ads.o.a) null);
        } else {
            this.f11174f.a(new is0(this, zzvhVar));
        }
    }
}
