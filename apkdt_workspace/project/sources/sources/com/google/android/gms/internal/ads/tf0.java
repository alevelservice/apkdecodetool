package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tf0 extends uf0<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final mk f9564a;

    /* renamed from: b, reason: collision with root package name */
    private final ws.a f9565b;

    /* renamed from: c, reason: collision with root package name */
    private final ai0 f9566c;

    /* renamed from: d, reason: collision with root package name */
    private final hw f9567d;

    /* renamed from: e, reason: collision with root package name */
    private final b00 f9568e;

    /* renamed from: f, reason: collision with root package name */
    private final kv f9569f;

    /* renamed from: g, reason: collision with root package name */
    private final ViewGroup f9570g;

    public tf0(mk mkVar, ws.a aVar, ai0 ai0Var, hw hwVar, b00 b00Var, kv kvVar, @Nullable ViewGroup viewGroup) {
        this.f9564a = mkVar;
        this.f9565b = aVar;
        this.f9566c = ai0Var;
        this.f9567d = hwVar;
        this.f9568e = b00Var;
        this.f9569f = kvVar;
        this.f9570g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.uf0
    protected final qz0<uo> a(ws0 ws0Var, Bundle bundle) {
        tp h2 = this.f9564a.h();
        ws.a aVar = this.f9565b;
        aVar.a(ws0Var);
        aVar.a(bundle);
        h2.b(aVar.a());
        h2.e(this.f9567d);
        h2.a(this.f9566c);
        h2.a(this.f9568e);
        h2.a(new lq(this.f9569f));
        h2.b(new qo(this.f9570g));
        return h2.e().a().a();
    }
}
