package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.hw;
import com.google.android.gms.internal.ads.ws;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzclu extends zzvd {

    /* renamed from: e, reason: collision with root package name */
    private final mk f11154e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f11155f;

    /* renamed from: g, reason: collision with root package name */
    private final Executor f11156g;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private zzzn f11161l;

    @Nullable
    @GuardedBy("this")
    private py m;

    @Nullable
    @GuardedBy("this")
    private qz0<py> n;

    /* renamed from: h, reason: collision with root package name */
    private final zi0 f11157h = new zi0();

    /* renamed from: i, reason: collision with root package name */
    private final yi0 f11158i = new yi0();

    /* renamed from: j, reason: collision with root package name */
    private final ar0 f11159j = new ar0();

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("this")
    private final ys0 f11160k = new ys0();

    @GuardedBy("this")
    private boolean o = false;

    public zzclu(mk mkVar, Context context, zztw zztwVar, String str) {
        this.f11154e = mkVar;
        ys0 ys0Var = this.f11160k;
        ys0Var.a(zztwVar);
        ys0Var.a(str);
        this.f11156g = mkVar.a();
        this.f11155f = context;
    }

    private final synchronized boolean a() {
        boolean z;
        if (this.m != null) {
            z = this.m.f() ? false : true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void destroy() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        if (this.m != null) {
            this.m.d().c(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final Bundle getAdMetadata() {
        com.google.android.gms.common.internal.m.a("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String getAdUnitId() {
        return this.f11160k.b();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String getMediationAdapterClassName() {
        if (this.m == null) {
            return null;
        }
        return this.m.b();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzwk getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean isLoading() {
        boolean z;
        if (this.n != null) {
            z = this.n.isDone() ? false : true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean isReady() {
        com.google.android.gms.common.internal.m.a("isLoaded must be called on the main UI thread.");
        return a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void pause() {
        com.google.android.gms.common.internal.m.a("pause must be called on the main UI thread.");
        if (this.m != null) {
            this.m.d().a((Context) null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void resume() {
        com.google.android.gms.common.internal.m.a("resume must be called on the main UI thread.");
        if (this.m != null) {
            this.m.d().b(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void setImmersiveMode(boolean z) {
        com.google.android.gms.common.internal.m.a("setImmersiveMode must be called on the main UI thread.");
        this.o = z;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        com.google.android.gms.common.internal.m.a("setManualImpressionsEnabled must be called from the main thread.");
        this.f11160k.a(z);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void showInterstitial() {
        com.google.android.gms.common.internal.m.a("showInterstitial must be called on the main UI thread.");
        if (this.m == null) {
            return;
        }
        if (this.m.g()) {
            this.m.a(this.o);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzand zzandVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzanj zzanjVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzqu zzquVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztw zztwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztx zztxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzuq zzuqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzwq zzwqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean zza(zztp zztpVar) {
        com.google.android.gms.common.internal.m.a("loadAd must be called on the main UI thread.");
        if (this.n == null && !a()) {
            ct0.a(this.f11155f, zztpVar.f11242j);
            this.m = null;
            ys0 ys0Var = this.f11160k;
            ys0Var.a(zztpVar);
            ws0 c2 = ys0Var.c();
            hw.a aVar = new hw.a();
            if (this.f11159j != null) {
                aVar.a((jt) this.f11159j, this.f11154e.a());
                aVar.a((qu) this.f11159j, this.f11154e.a());
                aVar.a((ot) this.f11159j, this.f11154e.a());
            }
            kz j2 = this.f11154e.j();
            ws.a aVar2 = new ws.a();
            aVar2.a(this.f11155f);
            aVar2.a(c2);
            j2.a(aVar2.a());
            aVar.a((jt) this.f11157h, this.f11154e.a());
            aVar.a((qu) this.f11157h, this.f11154e.a());
            aVar.a((ot) this.f11157h, this.f11154e.a());
            aVar.a((st1) this.f11157h, this.f11154e.a());
            aVar.a(this.f11158i, this.f11154e.a());
            j2.d(aVar.a());
            j2.b(new ai0(this.f11161l));
            lz b2 = j2.b();
            this.n = b2.a().a();
            gz0.a(this.n, new aj0(this, b2), this.f11156g);
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final IObjectWrapper zzjm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzjn() {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zztw zzjo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String zzjp() {
        if (this.m == null) {
            return null;
        }
        return this.m.e();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzvm zzjq() {
        return this.f11158i.a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzur zzjr() {
        return this.f11157h.a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzur zzurVar) {
        com.google.android.gms.common.internal.m.a("setAdListener must be called on the main UI thread.");
        this.f11157h.a(zzurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvm zzvmVar) {
        com.google.android.gms.common.internal.m.a("setAppEventListener must be called on the main UI thread.");
        this.f11158i.a(zzvmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzvs zzvsVar) {
        com.google.android.gms.common.internal.m.a("setCorrelationIdProvider must be called on the main UI thread");
        this.f11160k.a(zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzyc zzycVar) {
        this.f11160k.a(zzycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzzn zzznVar) {
        com.google.android.gms.common.internal.m.a("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f11161l = zzznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvh zzvhVar) {
        com.google.android.gms.common.internal.m.a("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzapo zzapoVar) {
        this.f11159j.a(zzapoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ qz0 zza(zzclu zzcluVar, qz0 qz0Var) {
        zzcluVar.n = null;
        return null;
    }
}
