package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbxf extends zzabj {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final String f11077e;

    /* renamed from: f, reason: collision with root package name */
    private final d10 f11078f;

    /* renamed from: g, reason: collision with root package name */
    private final l10 f11079g;

    public zzbxf(@Nullable String str, d10 d10Var, l10 l10Var) {
        this.f11077e = str;
        this.f11078f = d10Var;
        this.f11079g = l10Var;
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final void destroy() {
        this.f11078f.a();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final String getAdvertiser() {
        return this.f11079g.b();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final String getBody() {
        return this.f11079g.c();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final String getCallToAction() {
        return this.f11079g.d();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final Bundle getExtras() {
        return this.f11079g.f();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final String getHeadline() {
        return this.f11079g.g();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final List<?> getImages() {
        return this.f11079g.h();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final String getMediationAdapterClassName() {
        return this.f11077e;
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final zzwk getVideoController() {
        return this.f11079g.n();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final void performClick(Bundle bundle) {
        this.f11078f.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final boolean recordImpression(Bundle bundle) {
        return this.f11078f.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final void reportTouchEvent(Bundle bundle) {
        this.f11078f.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final IObjectWrapper zzqi() {
        return ObjectWrapper.wrap(this.f11078f);
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final zzaak zzqk() {
        return this.f11079g.A();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final IObjectWrapper zzql() {
        return this.f11079g.B();
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final zzaas zzqm() {
        return this.f11079g.C();
    }
}
