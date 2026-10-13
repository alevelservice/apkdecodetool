package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzo;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ti0 implements hz0<po> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ lo f9581a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzclk f9582b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ti0(zzclk zzclkVar, lo loVar) {
        this.f9582b = zzclkVar;
        this.f9581a = loVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        synchronized (this.f9582b) {
            zzclk.zza(this.f9582b, (qz0) null);
            this.f9581a.b().onAdFailedToLoad(t90.zzd(th));
            ct0.a(th, "AppOpenAdManagerShim.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(po poVar) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzo a2;
        RelativeLayout.LayoutParams b2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        zztw b3;
        ViewGroup viewGroup5;
        zztw b4;
        zzqu zzquVar;
        po poVar2 = poVar;
        synchronized (this.f9582b) {
            zzclk.zza(this.f9582b, (qz0) null);
            if (this.f9582b.zzgbo != null) {
                this.f9582b.zzgbo.a();
            }
            this.f9582b.zzgbo = poVar2;
            viewGroup = this.f9582b.f11140g;
            viewGroup.removeAllViews();
            viewGroup2 = this.f9582b.f11140g;
            viewGroup2.addView(poVar2.h(), com.google.android.gms.ads.internal.n.e().b());
            a2 = this.f9582b.a(poVar2);
            zzclk zzclkVar = this.f9582b;
            b2 = zzclk.b(poVar2);
            a2.zzae(poVar2.i());
            viewGroup3 = this.f9582b.f11140g;
            viewGroup3.addView(a2, b2);
            this.f9582b.c(poVar2);
            viewGroup4 = this.f9582b.f11140g;
            b3 = this.f9582b.b();
            viewGroup4.setMinimumHeight(b3.f11248g);
            viewGroup5 = this.f9582b.f11140g;
            b4 = this.f9582b.b();
            viewGroup5.setMinimumWidth(b4.f11251j);
            try {
                zzquVar = this.f9582b.f11142i;
                zzquVar.zza(new zzbhu(poVar2, this.f9582b));
            } catch (RemoteException e2) {
                qd.b("RemoteException when onAppOpenAdLoaded is called", e2);
            }
            poVar2.c();
        }
    }
}
