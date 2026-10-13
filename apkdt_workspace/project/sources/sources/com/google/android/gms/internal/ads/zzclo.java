package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.hw;
import com.google.android.gms.internal.ads.ws;
import java.util.Collections;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzclo extends zzvd implements ov {

    /* renamed from: e, reason: collision with root package name */
    private final mk f11146e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f11147f;

    /* renamed from: g, reason: collision with root package name */
    private final ViewGroup f11148g;

    /* renamed from: k, reason: collision with root package name */
    private final kv f11152k;

    @Nullable
    @GuardedBy("this")
    private zzzn m;

    @Nullable
    @GuardedBy("this")
    private uo n;

    @Nullable
    @GuardedBy("this")
    private qz0<uo> o;

    /* renamed from: h, reason: collision with root package name */
    private final zi0 f11149h = new zi0();

    /* renamed from: i, reason: collision with root package name */
    private final wi0 f11150i = new wi0();

    /* renamed from: j, reason: collision with root package name */
    private final yi0 f11151j = new yi0();

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private final ys0 f11153l = new ys0();

    public zzclo(mk mkVar, Context context, zztw zztwVar, String str) {
        this.f11148g = new FrameLayout(context);
        this.f11146e = mkVar;
        this.f11147f = context;
        ys0 ys0Var = this.f11153l;
        ys0Var.a(zztwVar);
        ys0Var.a(str);
        this.f11152k = mkVar.e();
        this.f11152k.a(this, this.f11146e.a());
    }

    private final synchronized qp a(ws0 ws0Var) {
        tp h2;
        h2 = this.f11146e.h();
        ws.a aVar = new ws.a();
        aVar.a(this.f11147f);
        aVar.a(ws0Var);
        h2.b(aVar.a());
        hw.a aVar2 = new hw.a();
        aVar2.a((st1) this.f11149h, this.f11146e.a());
        aVar2.a(this.f11150i, this.f11146e.a());
        aVar2.a((jt) this.f11149h, this.f11146e.a());
        aVar2.a((qu) this.f11149h, this.f11146e.a());
        aVar2.a((ot) this.f11149h, this.f11146e.a());
        aVar2.a(this.f11151j, this.f11146e.a());
        h2.e(aVar2.a());
        h2.a(new ai0(this.m));
        h2.a(new b00(x10.f10241h, null));
        h2.a(new lq(this.f11152k));
        h2.b(new qo(this.f11148g));
        return h2.e();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void destroy() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        if (this.n != null) {
            this.n.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final Bundle getAdMetadata() {
        com.google.android.gms.common.internal.m.a("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String getAdUnitId() {
        return this.f11153l.b();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String getMediationAdapterClassName() {
        if (this.n == null) {
            return null;
        }
        return this.n.b();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized zzwk getVideoController() {
        com.google.android.gms.common.internal.m.a("getVideoController must be called from the main thread.");
        if (this.n == null) {
            return null;
        }
        return this.n.f();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean isLoading() {
        boolean z;
        if (this.o != null) {
            z = this.o.isDone() ? false : true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void pause() {
        com.google.android.gms.common.internal.m.a("pause must be called on the main UI thread.");
        if (this.n != null) {
            this.n.d().a((Context) null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void resume() {
        com.google.android.gms.common.internal.m.a("resume must be called on the main UI thread.");
        if (this.n != null) {
            this.n.d().b(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        com.google.android.gms.common.internal.m.a("setManualImpressionsEnabled must be called from the main thread.");
        this.f11153l.a(z);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void showInterstitial() {
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
    public final void zza(zzapo zzapoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzqu zzquVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztx zztxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzwq zzwqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean zza(zztp zztpVar) {
        com.google.android.gms.common.internal.m.a("loadAd must be called on the main UI thread.");
        if (this.o != null) {
            return false;
        }
        ct0.a(this.f11147f, zztpVar.f11242j);
        ys0 ys0Var = this.f11153l;
        ys0Var.a(zztpVar);
        ws0 c2 = ys0Var.c();
        if (((Boolean) mu1.e().a(aw1.R2)).booleanValue() && this.f11153l.d().o && this.f11149h != null) {
            this.f11149h.onAdFailedToLoad(1);
            return false;
        }
        qp a2 = a(c2);
        this.o = a2.a().a();
        gz0.a(this.o, new vi0(this, a2), this.f11146e.a());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ov
    public final synchronized void zzafy() {
        boolean a2;
        Object parent = this.f11148g.getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            a2 = com.google.android.gms.ads.internal.n.c().a(view, view.getContext());
        } else {
            a2 = false;
        }
        if (a2) {
            zza(this.f11153l.a());
        } else {
            this.f11152k.a(60);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final IObjectWrapper zzjm() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.f11148g);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zzjn() {
        com.google.android.gms.common.internal.m.a("recordManualImpression must be called on the main UI thread.");
        if (this.n != null) {
            this.n.j();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized zztw zzjo() {
        com.google.android.gms.common.internal.m.a("getAdSize must be called on the main UI thread.");
        if (this.n != null) {
            return at0.a(this.f11147f, (List<ms0>) Collections.singletonList(this.n.g()));
        }
        return this.f11153l.d();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String zzjp() {
        if (this.n == null) {
            return null;
        }
        return this.n.e();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzvm zzjq() {
        return this.f11151j.a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzur zzjr() {
        return this.f11149h.a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzur zzurVar) {
        com.google.android.gms.common.internal.m.a("setAdListener must be called on the main UI thread.");
        this.f11149h.a(zzurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvm zzvmVar) {
        com.google.android.gms.common.internal.m.a("setAppEventListener must be called on the main UI thread.");
        this.f11151j.a(zzvmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zztw zztwVar) {
        com.google.android.gms.common.internal.m.a("setAdSize must be called on the main UI thread.");
        this.f11153l.a(zztwVar);
        if (this.n != null) {
            this.n.a(this.f11148g, zztwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzvs zzvsVar) {
        com.google.android.gms.common.internal.m.a("setCorrelationIdProvider must be called on the main UI thread");
        this.f11153l.a(zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzyc zzycVar) {
        com.google.android.gms.common.internal.m.a("setVideoOptions must be called on the main UI thread.");
        this.f11153l.a(zzycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzuq zzuqVar) {
        com.google.android.gms.common.internal.m.a("setAdListener must be called on the main UI thread.");
        this.f11150i.a(zzuqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzzn zzznVar) {
        com.google.android.gms.common.internal.m.a("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.m = zzznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvh zzvhVar) {
        com.google.android.gms.common.internal.m.a("setAdMetadataListener must be called on the main UI thread.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ qz0 zza(zzclo zzcloVar, qz0 qz0Var) {
        zzcloVar.o = null;
        return null;
    }
}
