package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.zzi;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class te0 implements sz {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9559a;

    /* renamed from: b, reason: collision with root package name */
    private final zzawv f9560b;

    /* renamed from: c, reason: collision with root package name */
    private final qz0<ry> f9561c;

    /* renamed from: d, reason: collision with root package name */
    private final ns0 f9562d;

    /* renamed from: e, reason: collision with root package name */
    private final fi f9563e;

    private te0(Context context, zzawv zzawvVar, qz0<ry> qz0Var, ns0 ns0Var, fi fiVar) {
        this.f9559a = context;
        this.f9560b = zzawvVar;
        this.f9561c = qz0Var;
        this.f9562d = ns0Var;
        this.f9563e = fiVar;
    }

    @Override // com.google.android.gms.internal.ads.sz
    public final void a(boolean z, Context context) {
        ry ryVar = (ry) gz0.b(this.f9561c);
        this.f9563e.zzaq(true);
        com.google.android.gms.ads.internal.n.c();
        zzi zziVar = new zzi(false, wa.n(this.f9559a), false, 0.0f, -1, z, this.f9562d.F, false);
        com.google.android.gms.ads.internal.n.b();
        jz j2 = ryVar.j();
        fi fiVar = this.f9563e;
        ns0 ns0Var = this.f9562d;
        int i2 = ns0Var.H;
        zzawv zzawvVar = this.f9560b;
        String str = ns0Var.y;
        rs0 rs0Var = ns0Var.p;
        com.google.android.gms.ads.internal.overlay.j.a(context, new AdOverlayInfoParcel((st1) null, j2, (com.google.android.gms.ads.internal.overlay.p) null, fiVar, i2, zzawvVar, str, zziVar, rs0Var.f9224b, rs0Var.f9223a), true);
    }
}
