package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vf0 extends uf0<py> {

    /* renamed from: a, reason: collision with root package name */
    private final mk f9905a;

    /* renamed from: b, reason: collision with root package name */
    private final ws.a f9906b;

    /* renamed from: c, reason: collision with root package name */
    private final ai0 f9907c;

    /* renamed from: d, reason: collision with root package name */
    private final hw f9908d;

    public vf0(mk mkVar, ws.a aVar, ai0 ai0Var, hw hwVar) {
        this.f9905a = mkVar;
        this.f9906b = aVar;
        this.f9907c = ai0Var;
        this.f9908d = hwVar;
    }

    @Override // com.google.android.gms.internal.ads.uf0
    protected final qz0<py> a(ws0 ws0Var, Bundle bundle) {
        kz j2 = this.f9905a.j();
        ws.a aVar = this.f9906b;
        aVar.a(ws0Var);
        aVar.a(bundle);
        j2.a(aVar.a());
        j2.d(this.f9908d);
        j2.b(this.f9907c);
        return j2.b().a().a();
    }
}
