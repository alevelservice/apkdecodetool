package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xf0 extends uf0<r50> {

    /* renamed from: a, reason: collision with root package name */
    private final mk f10334a;

    /* renamed from: b, reason: collision with root package name */
    private final ws.a f10335b;

    /* renamed from: c, reason: collision with root package name */
    private final hw f10336c;

    public xf0(mk mkVar, ws.a aVar, hw hwVar) {
        this.f10334a = mkVar;
        this.f10335b = aVar;
        this.f10336c = hwVar;
    }

    @Override // com.google.android.gms.internal.ads.uf0
    protected final qz0<r50> a(ws0 ws0Var, Bundle bundle) {
        x50 l2 = this.f10334a.l();
        ws.a aVar = this.f10335b;
        aVar.a(ws0Var);
        aVar.a(bundle);
        l2.e(aVar.a());
        l2.c(this.f10336c);
        return l2.f().a().a();
    }
}
