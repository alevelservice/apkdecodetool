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
public final class zzakg extends zzajp {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.r f10930e;

    public zzakg(com.google.android.gms.ads.mediation.r rVar) {
        this.f10930e = rVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final String getBody() {
        return this.f10930e.i();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final String getCallToAction() {
        return this.f10930e.j();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final Bundle getExtras() {
        return this.f10930e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final String getHeadline() {
        return this.f10930e.k();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final List getImages() {
        List<a.b> m = this.f10930e.m();
        if (m == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (a.b bVar : m) {
            arrayList.add(new zzaae(bVar.a(), bVar.d(), bVar.c(), bVar.e(), bVar.b()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final boolean getOverrideClickHandling() {
        return this.f10930e.c();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final boolean getOverrideImpressionRecording() {
        return this.f10930e.d();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final String getPrice() {
        return this.f10930e.n();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final double getStarRating() {
        return this.f10930e.o();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final String getStore() {
        return this.f10930e.p();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final zzwk getVideoController() {
        if (this.f10930e.e() != null) {
            return this.f10930e.e().a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void recordImpression() {
        this.f10930e.g();
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f10930e.a((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final zzaas zzqj() {
        a.b l2 = this.f10930e.l();
        if (l2 != null) {
            return new zzaae(l2.a(), l2.d(), l2.c(), l2.e(), l2.b());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final zzaak zzqk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final IObjectWrapper zzql() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final IObjectWrapper zzru() {
        View a2 = this.f10930e.a();
        if (a2 == null) {
            return null;
        }
        return ObjectWrapper.wrap(a2);
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final IObjectWrapper zzrv() {
        View h2 = this.f10930e.h();
        if (h2 == null) {
            return null;
        }
        return ObjectWrapper.wrap(h2);
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzx(IObjectWrapper iObjectWrapper) {
        this.f10930e.a((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzy(IObjectWrapper iObjectWrapper) {
        this.f10930e.b((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzz(IObjectWrapper iObjectWrapper) {
        this.f10930e.c((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
