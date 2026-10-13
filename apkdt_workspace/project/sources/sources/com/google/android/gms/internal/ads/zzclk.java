package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.hw;
import com.google.android.gms.internal.ads.ws;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzclk extends zzvd implements com.google.android.gms.ads.internal.overlay.q, zu, nr1 {

    /* renamed from: e, reason: collision with root package name */
    private final mk f11138e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f11139f;

    /* renamed from: g, reason: collision with root package name */
    private final ViewGroup f11140g;

    /* renamed from: i, reason: collision with root package name */
    private zzqu f11142i;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private eo f11144k;

    @Nullable
    @GuardedBy("this")
    private qz0<po> m;

    @Nullable
    @GuardedBy("this")
    protected po zzgbo;

    /* renamed from: h, reason: collision with root package name */
    private AtomicBoolean f11141h = new AtomicBoolean();

    /* renamed from: j, reason: collision with root package name */
    private final xi0 f11143j = new xi0();

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private final ys0 f11145l = new ys0();

    public zzclk(mk mkVar, Context context, zztw zztwVar, String str) {
        this.f11140g = new FrameLayout(context);
        this.f11138e = mkVar;
        this.f11139f = context;
        ys0 ys0Var = this.f11145l;
        ys0Var.a(zztwVar);
        ys0Var.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzo a(po poVar) {
        boolean k2 = poVar.k();
        int intValue = ((Integer) mu1.e().a(aw1.H2)).intValue();
        com.google.android.gms.ads.internal.overlay.n nVar = new com.google.android.gms.ads.internal.overlay.n();
        nVar.f4572d = 50;
        nVar.f4569a = k2 ? intValue : 0;
        nVar.f4570b = k2 ? 0 : intValue;
        nVar.f4571c = intValue;
        return new zzo(this.f11139f, nVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RelativeLayout.LayoutParams b(po poVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(poVar.k() ? 11 : 9);
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(po poVar) {
        poVar.a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void destroy() {
        com.google.android.gms.common.internal.m.a("destroy must be called on the main UI thread.");
        if (this.zzgbo != null) {
            this.zzgbo.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String getAdUnitId() {
        return this.f11145l.b();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized zzwk getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean isLoading() {
        boolean z;
        if (this.m != null) {
            z = this.m.isDone() ? false : true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void pause() {
        com.google.android.gms.common.internal.m.a("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void resume() {
        com.google.android.gms.common.internal.m.a("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzand zzandVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzanj zzanjVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzapo zzapoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zztx zztxVar) {
        this.f11145l.a(zztxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzuq zzuqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzur zzurVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvh zzvhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzvm zzvmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzwq zzwqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zu
    public final void zzafv() {
        int f2;
        po poVar = this.zzgbo;
        if (poVar != null && (f2 = poVar.f()) > 0) {
            this.f11144k = new eo(this.f11138e.b(), com.google.android.gms.ads.internal.n.j());
            this.f11144k.a(f2, new Runnable(this) { // from class: com.google.android.gms.internal.ads.ui0

                /* renamed from: e, reason: collision with root package name */
                private final zzclk f9742e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9742e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f9742e.zzalb();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzalb() {
        this.f11138e.a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.si0

            /* renamed from: e, reason: collision with root package name */
            private final zzclk f9368e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9368e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9368e.zzalc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzbm(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final IObjectWrapper zzjm() {
        com.google.android.gms.common.internal.m.a("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.f11140g);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zzjn() {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized zztw zzjo() {
        com.google.android.gms.common.internal.m.a("getAdSize must be called on the main UI thread.");
        if (this.zzgbo == null) {
            return null;
        }
        return at0.a(this.f11139f, (List<ms0>) Collections.singletonList(this.zzgbo.g()));
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized String zzjp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzvm zzjq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzur zzjr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.nr1
    public final void zzmd() {
        zzalc();
    }

    @Override // com.google.android.gms.ads.internal.overlay.q
    public final void zzsk() {
        zzalc();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized boolean zza(zztp zztpVar) {
        com.google.android.gms.common.internal.m.a("loadAd must be called on the main UI thread.");
        if (this.m != null) {
            return false;
        }
        this.f11141h = new AtomicBoolean();
        ct0.a(this.f11139f, zztpVar.f11242j);
        ys0 ys0Var = this.f11145l;
        ys0Var.a(zztpVar);
        lo a2 = a(ys0Var.c());
        this.m = a2.a().a();
        gz0.a(this.m, new ti0(this, a2), this.f11138e.a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zztw b() {
        return at0.a(this.f11139f, (List<ms0>) Collections.singletonList(this.zzgbo.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void zzalc() {
        if (this.f11141h.compareAndSet(false, true)) {
            po poVar = this.zzgbo;
            zzqz j2 = poVar != null ? poVar.j() : null;
            if (j2 != null) {
                try {
                    j2.zzme();
                } catch (RemoteException e2) {
                    qd.b("", e2);
                }
            }
            this.f11140g.removeAllViews();
            eo eoVar = this.f11144k;
            if (eoVar != null) {
                com.google.android.gms.ads.internal.n.f().b(eoVar);
            }
            destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzqu zzquVar) {
        this.f11142i = zzquVar;
        this.f11143j.a(zzquVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zztw zztwVar) {
        com.google.android.gms.common.internal.m.a("setAdSize must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzvs zzvsVar) {
    }

    private final synchronized lo a(ws0 ws0Var) {
        ko i2;
        i2 = this.f11138e.i();
        ws.a aVar = new ws.a();
        aVar.a(this.f11139f);
        aVar.a(ws0Var);
        i2.c(aVar.a());
        hw.a aVar2 = new hw.a();
        aVar2.a(this.f11143j, this.f11138e.a());
        aVar2.a(this, this.f11138e.a());
        i2.a(aVar2.a());
        i2.a(new qo(this.f11140g));
        return i2.a();
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzyc zzycVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final synchronized void zza(zzzn zzznVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ qz0 zza(zzclk zzclkVar, qz0 qz0Var) {
        zzclkVar.m = null;
        return null;
    }
}
