package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbxd extends zzabf {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final String f11074e;

    /* renamed from: f, reason: collision with root package name */
    private final d10 f11075f;

    /* renamed from: g, reason: collision with root package name */
    private final l10 f11076g;

    public zzbxd(@Nullable String str, d10 d10Var, l10 l10Var) {
        this.f11074e = str;
        this.f11075f = d10Var;
        this.f11076g = l10Var;
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void destroy() {
        this.f11075f.a();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final String getBody() {
        return this.f11076g.c();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final String getCallToAction() {
        return this.f11076g.d();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final Bundle getExtras() {
        return this.f11076g.f();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final String getHeadline() {
        return this.f11076g.g();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final List<?> getImages() {
        return this.f11076g.h();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final String getMediationAdapterClassName() {
        return this.f11074e;
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final String getPrice() {
        return this.f11076g.k();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final double getStarRating() {
        return this.f11076g.l();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final String getStore() {
        return this.f11076g.m();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final zzwk getVideoController() {
        return this.f11076g.n();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void performClick(Bundle bundle) {
        this.f11075f.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final boolean recordImpression(Bundle bundle) {
        return this.f11075f.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void reportTouchEvent(Bundle bundle) {
        this.f11075f.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final IObjectWrapper zzqi() {
        return ObjectWrapper.wrap(this.f11075f);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final zzaas zzqj() {
        return this.f11076g.z();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final zzaak zzqk() {
        return this.f11076g.A();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final IObjectWrapper zzql() {
        return this.f11076g.B();
    }
}
