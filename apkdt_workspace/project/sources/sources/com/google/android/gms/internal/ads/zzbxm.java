package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbxm extends zzacp {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final String f11084e;

    /* renamed from: f, reason: collision with root package name */
    private final d10 f11085f;

    /* renamed from: g, reason: collision with root package name */
    private final l10 f11086g;

    public zzbxm(@Nullable String str, d10 d10Var, l10 l10Var) {
        this.f11084e = str;
        this.f11085f = d10Var;
        this.f11086g = l10Var;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void cancelUnconfirmedClick() {
        this.f11085f.f();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void destroy() {
        this.f11085f.a();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getAdvertiser() {
        return this.f11086g.b();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getBody() {
        return this.f11086g.c();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getCallToAction() {
        return this.f11086g.d();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final Bundle getExtras() {
        return this.f11086g.f();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getHeadline() {
        return this.f11086g.g();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final List<?> getImages() {
        return this.f11086g.h();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getMediationAdapterClassName() {
        return this.f11084e;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final List<?> getMuteThisAdReasons() {
        if (isCustomMuteThisAdEnabled()) {
            return this.f11086g.j();
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getPrice() {
        return this.f11086g.k();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final double getStarRating() {
        return this.f11086g.l();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final String getStore() {
        return this.f11086g.m();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzwk getVideoController() {
        return this.f11086g.n();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final boolean isCustomClickGestureEnabled() {
        return this.f11085f.g();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final boolean isCustomMuteThisAdEnabled() {
        return (this.f11086g.j().isEmpty() || this.f11086g.r() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void performClick(Bundle bundle) {
        this.f11085f.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void recordCustomClickGesture() {
        this.f11085f.h();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final boolean recordImpression(Bundle bundle) {
        return this.f11085f.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void reportTouchEvent(Bundle bundle) {
        this.f11085f.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zza(zzacl zzaclVar) {
        this.f11085f.a(zzaclVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final IObjectWrapper zzqi() {
        return ObjectWrapper.wrap(this.f11085f);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzaas zzqj() {
        return this.f11086g.z();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzaak zzqk() {
        return this.f11086g.A();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final IObjectWrapper zzql() {
        return this.f11086g.B();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zzqs() {
        this.f11085f.o();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final zzaan zzqt() {
        return this.f11085f.l().a();
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zza(@Nullable zzwb zzwbVar) {
        this.f11085f.a(zzwbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacq
    public final void zza(zzvx zzvxVar) {
        this.f11085f.a(zzvxVar);
    }
}
