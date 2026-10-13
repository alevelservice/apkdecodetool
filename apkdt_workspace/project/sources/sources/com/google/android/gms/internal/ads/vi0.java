package com.google.android.gms.internal.ads;

import android.view.ViewGroup;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vi0 implements hz0<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ qp f9935a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzclo f9936b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vi0(zzclo zzcloVar, qp qpVar) {
        this.f9936b = zzcloVar;
        this.f9935a = qpVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        kv kvVar;
        synchronized (this.f9936b) {
            zzclo.zza(this.f9936b, (qz0) null);
            this.f9935a.b().onAdFailedToLoad(t90.zzd(th));
            kvVar = this.f9936b.f11152k;
            kvVar.a(60);
            ct0.a(th, "BannerAdManagerShim.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(uo uoVar) {
        uo uoVar2;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        kv kvVar;
        uo uoVar3;
        uo uoVar4 = uoVar;
        synchronized (this.f9936b) {
            zzclo.zza(this.f9936b, (qz0) null);
            uoVar2 = this.f9936b.n;
            if (uoVar2 != null) {
                uoVar3 = this.f9936b.n;
                uoVar3.a();
            }
            this.f9936b.n = uoVar4;
            viewGroup = this.f9936b.f11148g;
            viewGroup.removeAllViews();
            viewGroup2 = this.f9936b.f11148g;
            viewGroup2.addView(uoVar4.h());
            uoVar4.c();
            kvVar = this.f9936b.f11152k;
            kvVar.a(uoVar4.i());
        }
    }
}
