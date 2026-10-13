package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oh0 implements ad0<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8525a;

    /* renamed from: b, reason: collision with root package name */
    private final qp f8526b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private final zzzn f8527c;

    /* renamed from: d, reason: collision with root package name */
    private final tz0 f8528d;

    /* renamed from: e, reason: collision with root package name */
    private final zu0 f8529e;

    public oh0(Context context, qp qpVar, zu0 zu0Var, tz0 tz0Var, @Nullable zzzn zzznVar) {
        this.f8525a = context;
        this.f8526b = qpVar;
        this.f8529e = zu0Var;
        this.f8528d = tz0Var;
        this.f8527c = zzznVar;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<uo> a(vs0 vs0Var, ns0 ns0Var) {
        to a2 = this.f8526b.a(new lr(vs0Var, ns0Var, null), new ph0(this, new View(this.f8525a), null, nh0.f8350a, ns0Var.r.get(0)));
        sh0 j2 = a2.j();
        rs0 rs0Var = ns0Var.p;
        final zzzk zzzkVar = new zzzk(j2, rs0Var.f9224b, rs0Var.f9223a);
        return this.f8529e.a((zu0) wu0.CUSTOM_RENDER_SYN).a(new iu0(this, zzzkVar) { // from class: com.google.android.gms.internal.ads.qh0

            /* renamed from: a, reason: collision with root package name */
            private final oh0 f8909a;

            /* renamed from: b, reason: collision with root package name */
            private final zzzk f8910b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8909a = this;
                this.f8910b = zzzkVar;
            }

            @Override // com.google.android.gms.internal.ads.iu0
            public final void run() {
                this.f8909a.a(this.f8910b);
            }
        }, this.f8528d).a((ru0<?>) wu0.CUSTOM_RENDER_ACK).a((qz0) gz0.a(a2.h())).a();
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        rs0 rs0Var;
        return (this.f8527c == null || (rs0Var = ns0Var.p) == null || rs0Var.f9223a == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(zzzk zzzkVar) {
        this.f8527c.zza(zzzkVar);
    }
}
