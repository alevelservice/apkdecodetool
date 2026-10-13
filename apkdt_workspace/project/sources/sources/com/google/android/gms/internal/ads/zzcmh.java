package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.hw;
import com.google.android.gms.internal.ads.rj0;
import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcmh extends zzaso {

    /* renamed from: e, reason: collision with root package name */
    private mk f11167e;

    public zzcmh(mk mkVar) {
        this.f11167e = mkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zza(IObjectWrapper iObjectWrapper, zzasr zzasrVar, zzasn zzasnVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        String str = zzasrVar.f10995e;
        String str2 = zzasrVar.f10996f;
        zztw zztwVar = zzasrVar.f10997g;
        nj0 n = this.f11167e.n();
        ws.a aVar = new ws.a();
        aVar.a(context);
        ys0 ys0Var = new ys0();
        ys0Var.a(str);
        ys0Var.a(new xt1().a());
        ys0Var.a(zztwVar);
        aVar.a(ys0Var.c());
        n.a(aVar.a());
        rj0.a aVar2 = new rj0.a();
        aVar2.a(str2);
        n.a(new rj0(aVar2));
        n.a(new hw.a().a());
        gz0.a(n.a().a(), new pj0(this, zzasnVar), this.f11167e.a());
    }
}
