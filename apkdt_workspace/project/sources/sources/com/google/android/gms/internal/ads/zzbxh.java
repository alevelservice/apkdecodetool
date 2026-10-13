package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbxh extends zzabn {

    /* renamed from: e, reason: collision with root package name */
    private final Context f11080e;

    /* renamed from: f, reason: collision with root package name */
    private final l10 f11081f;

    /* renamed from: g, reason: collision with root package name */
    private final c20 f11082g;

    /* renamed from: h, reason: collision with root package name */
    private final d10 f11083h;

    public zzbxh(Context context, l10 l10Var, c20 c20Var, d10 d10Var) {
        this.f11080e = context;
        this.f11081f = l10Var;
        this.f11082g = c20Var;
        this.f11083h = d10Var;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void destroy() {
        this.f11083h.a();
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final List<String> getAvailableAssetNames() {
        a.e.g<String, zzaae> w = this.f11081f.w();
        a.e.g<String, String> y = this.f11081f.y();
        String[] strArr = new String[w.size() + y.size()];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < w.size()) {
            strArr[i4] = w.b(i3);
            i3++;
            i4++;
        }
        while (i2 < y.size()) {
            strArr[i4] = y.b(i2);
            i2++;
            i4++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final String getCustomTemplateId() {
        return this.f11081f.e();
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final zzwk getVideoController() {
        return this.f11081f.n();
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void performClick(String str) {
        this.f11083h.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void recordImpression() {
        this.f11083h.i();
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final String zzco(String str) {
        return this.f11081f.y().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final zzaas zzcp(String str) {
        return this.f11081f.w().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final IObjectWrapper zzqi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final IObjectWrapper zzqn() {
        return ObjectWrapper.wrap(this.f11080e);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final boolean zzqo() {
        return this.f11083h.k() && this.f11081f.u() != null && this.f11081f.t() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final boolean zzqp() {
        IObjectWrapper v = this.f11081f.v();
        if (v != null) {
            com.google.android.gms.ads.internal.n.r().a(v);
            return true;
        }
        qd.d("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void zzqq() {
        String x = this.f11081f.x();
        if ("Google".equals(x)) {
            qd.d("Illegal argument specified for omid partner name.");
        } else {
            this.f11083h.a(x, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final boolean zzt(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof ViewGroup) || !this.f11082g.a((ViewGroup) unwrap)) {
            return false;
        }
        this.f11081f.t().zza(new w40(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final void zzu(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof View) && this.f11081f.v() != null) {
            this.f11083h.b((View) unwrap);
        }
    }
}
