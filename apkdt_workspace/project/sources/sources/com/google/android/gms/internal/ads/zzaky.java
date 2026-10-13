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
public final class zzaky extends zzajv {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.x f10933e;

    public zzaky(com.google.android.gms.ads.mediation.x xVar) {
        this.f10933e = xVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getAdvertiser() {
        return this.f10933e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getBody() {
        return this.f10933e.c();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getCallToAction() {
        return this.f10933e.d();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final Bundle getExtras() {
        return this.f10933e.e();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getHeadline() {
        return this.f10933e.f();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final List getImages() {
        List<a.b> h2 = this.f10933e.h();
        ArrayList arrayList = new ArrayList();
        if (h2 != null) {
            for (a.b bVar : h2) {
                arrayList.add(new zzaae(bVar.a(), bVar.d(), bVar.c(), bVar.e(), bVar.b()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final float getMediaContentAspectRatio() {
        return this.f10933e.i();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final boolean getOverrideClickHandling() {
        return this.f10933e.j();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final boolean getOverrideImpressionRecording() {
        return this.f10933e.k();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getPrice() {
        return this.f10933e.l();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final double getStarRating() {
        if (this.f10933e.m() != null) {
            return this.f10933e.m().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final String getStore() {
        return this.f10933e.n();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzwk getVideoController() {
        if (this.f10933e.o() != null) {
            return this.f10933e.o().a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void recordImpression() {
        this.f10933e.q();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f10933e.a((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzaas zzqj() {
        a.b g2 = this.f10933e.g();
        if (g2 != null) {
            return new zzaae(g2.a(), g2.d(), g2.c(), g2.e(), g2.b());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzaak zzqk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final IObjectWrapper zzql() {
        Object s = this.f10933e.s();
        if (s == null) {
            return null;
        }
        return ObjectWrapper.wrap(s);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final IObjectWrapper zzru() {
        View a2 = this.f10933e.a();
        if (a2 == null) {
            return null;
        }
        return ObjectWrapper.wrap(a2);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final IObjectWrapper zzrv() {
        View r = this.f10933e.r();
        if (r == null) {
            return null;
        }
        return ObjectWrapper.wrap(r);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzx(IObjectWrapper iObjectWrapper) {
        this.f10933e.a((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzz(IObjectWrapper iObjectWrapper) {
        this.f10933e.b((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
