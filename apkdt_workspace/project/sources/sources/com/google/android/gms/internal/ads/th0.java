package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class th0<AdT> implements ad0<AdT> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final zzzn f9576a;

    /* renamed from: b, reason: collision with root package name */
    private final tz0 f9577b;

    /* renamed from: c, reason: collision with root package name */
    private final zu0 f9578c;

    /* renamed from: d, reason: collision with root package name */
    private final yh0<AdT> f9579d;

    public th0(zu0 zu0Var, tz0 tz0Var, @Nullable zzzn zzznVar, yh0<AdT> yh0Var) {
        this.f9578c = zu0Var;
        this.f9577b = tz0Var;
        this.f9576a = zzznVar;
        this.f9579d = yh0Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<AdT> a(vs0 vs0Var, ns0 ns0Var) {
        he heVar = new he();
        bi0 bi0Var = new bi0();
        bi0Var.a(new vh0(this, heVar, vs0Var, ns0Var, bi0Var));
        rs0 rs0Var = ns0Var.p;
        final zzzk zzzkVar = new zzzk(bi0Var, rs0Var.f9224b, rs0Var.f9223a);
        return this.f9578c.a((zu0) wu0.CUSTOM_RENDER_SYN).a(new iu0(this, zzzkVar) { // from class: com.google.android.gms.internal.ads.wh0

            /* renamed from: a, reason: collision with root package name */
            private final th0 f10117a;

            /* renamed from: b, reason: collision with root package name */
            private final zzzk f10118b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10117a = this;
                this.f10118b = zzzkVar;
            }

            @Override // com.google.android.gms.internal.ads.iu0
            public final void run() {
                this.f10117a.a(this.f10118b);
            }
        }, this.f9577b).a((ru0<?>) wu0.CUSTOM_RENDER_ACK).a((qz0) heVar).a();
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        rs0 rs0Var;
        return (this.f9576a == null || (rs0Var = ns0Var.p) == null || rs0Var.f9223a == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(zzzk zzzkVar) {
        this.f9576a.zza(zzzkVar);
    }
}
