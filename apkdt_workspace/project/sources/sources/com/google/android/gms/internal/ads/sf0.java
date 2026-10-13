package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sf0 extends uf0<br> {

    /* renamed from: a, reason: collision with root package name */
    private final mk f9338a;

    /* renamed from: b, reason: collision with root package name */
    private final b00 f9339b;

    /* renamed from: c, reason: collision with root package name */
    private final ws.a f9340c;

    /* renamed from: d, reason: collision with root package name */
    private final hw f9341d;

    public sf0(mk mkVar, b00 b00Var, ws.a aVar, hw hwVar) {
        this.f9338a = mkVar;
        this.f9339b = b00Var;
        this.f9340c = aVar;
        this.f9341d = hwVar;
    }

    @Override // com.google.android.gms.internal.ads.uf0
    protected final qz0<br> a(ws0 ws0Var, Bundle bundle) {
        i00 k2 = this.f9338a.k();
        ws.a aVar = this.f9340c;
        aVar.a(ws0Var);
        aVar.a(bundle);
        k2.d(aVar.a());
        k2.b(this.f9341d);
        k2.b(this.f9339b);
        return k2.d().a().a();
    }
}
