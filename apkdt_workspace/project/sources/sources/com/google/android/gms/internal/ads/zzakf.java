package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.a;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzakf extends zzaju {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.s f10929e;

    public zzakf(com.google.android.gms.ads.mediation.s sVar) {
        this.f10929e = sVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final String getAdvertiser() {
        return this.f10929e.i();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final String getBody() {
        return this.f10929e.j();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final String getCallToAction() {
        return this.f10929e.k();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final Bundle getExtras() {
        return this.f10929e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final String getHeadline() {
        return this.f10929e.l();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final List getImages() {
        List<a.b> m = this.f10929e.m();
        if (m == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (a.b bVar : m) {
            arrayList.add(new zzaae(bVar.a(), bVar.d(), bVar.c(), bVar.e(), bVar.b()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final boolean getOverrideClickHandling() {
        return this.f10929e.c();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final boolean getOverrideImpressionRecording() {
        return this.f10929e.d();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final zzwk getVideoController() {
        if (this.f10929e.e() != null) {
            return this.f10929e.e().a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final void recordImpression() {
        this.f10929e.g();
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f10929e.a((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final zzaak zzqk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final IObjectWrapper zzql() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final zzaas zzqm() {
        a.b n = this.f10929e.n();
        if (n != null) {
            return new zzaae(n.a(), n.d(), n.c(), n.e(), n.b());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final IObjectWrapper zzru() {
        View a2 = this.f10929e.a();
        if (a2 == null) {
            return null;
        }
        return ObjectWrapper.wrap(a2);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final IObjectWrapper zzrv() {
        View h2 = this.f10929e.h();
        if (h2 == null) {
            return null;
        }
        return ObjectWrapper.wrap(h2);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final void zzx(IObjectWrapper iObjectWrapper) {
        this.f10929e.a((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final void zzy(IObjectWrapper iObjectWrapper) {
        this.f10929e.b((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    public final void zzz(IObjectWrapper iObjectWrapper) {
        this.f10929e.c((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
