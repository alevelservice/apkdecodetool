package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzclg extends zzvd {

    /* renamed from: e, reason: collision with root package name */
    private final Context f11127e;

    /* renamed from: f, reason: collision with root package name */
    private final zzur f11128f;

    /* renamed from: g, reason: collision with root package name */
    private final ws0 f11129g;

    /* renamed from: h, reason: collision with root package name */
    private final uo f11130h;

    /* renamed from: i, reason: collision with root package name */
    private final ViewGroup f11131i;

    public zzclg(Context context, @Nullable zzur zzurVar, ws0 ws0Var, uo uoVar) {
        this.f11127e = context;
        this.f11128f = zzurVar;
        this.f11129g = ws0Var;
        this.f11130h = uoVar;
        FrameLayout frameLayout = new FrameLayout(this.f11127e);
        frameLayout.removeAllViews();
        frameLayout.addView(this.f11130h.h(), com.google.android.gms.ads.internal.n.e().b());
        frameLayout.setMinimumHeight(zzjo().f11248g);
        frameLayout.setMinimumWidth(zzjo().f11251j);
        this.f11131i = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void destroy() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        this.f11130h.a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final Bundle getAdMetadata() {
        qd.c("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final String getAdUnitId() {
        return this.f11129g.f10197f;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final String getMediationAdapterClassName() {
        return this.f11130h.b();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzwk getVideoController() {
        return this.f11130h.f();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void pause() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        this.f11130h.d().a((Context) null);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void resume() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        this.f11130h.d().b(null);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setManualImpressionsEnabled(boolean z) {
        qd.c("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
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
    public final boolean zza(zztp zztpVar) {
        qd.c("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final IObjectWrapper zzjm() {
        return ObjectWrapper.wrap(this.f11131i);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzjn() {
        this.f11130h.j();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zztw zzjo() {
        com.google.android.gms.common.internal.m.a("getAdSize must be called on the main UI thread.");
        return at0.a(this.f11127e, (List<ms0>) Collections.singletonList(this.f11130h.g()));
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final String zzjp() {
        return this.f11130h.e();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzvm zzjq() {
        return this.f11129g.m;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzur zzjr() {
        return this.f11128f;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzyc zzycVar) {
        qd.c("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztw zztwVar) {
        com.google.android.gms.common.internal.m.a("setAdSize must be called on the main UI thread.");
        uo uoVar = this.f11130h;
        if (uoVar != null) {
            uoVar.a(this.f11131i, zztwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzzn zzznVar) {
        qd.c("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzuq zzuqVar) {
        qd.c("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvs zzvsVar) {
        qd.c("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzur zzurVar) {
        qd.c("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvm zzvmVar) {
        qd.c("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvh zzvhVar) {
        qd.c("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }
}
