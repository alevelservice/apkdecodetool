package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class uu1 {

    /* renamed from: a, reason: collision with root package name */
    private final zzaje f9816a;

    /* renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f9817b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.j f9818c;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private final lu1 f9819d;

    /* renamed from: e, reason: collision with root package name */
    private st1 f9820e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.b f9821f;

    /* renamed from: g, reason: collision with root package name */
    private com.google.android.gms.ads.d[] f9822g;

    /* renamed from: h, reason: collision with root package name */
    private com.google.android.gms.ads.doubleclick.a f9823h;

    /* renamed from: i, reason: collision with root package name */
    private zzve f9824i;

    /* renamed from: j, reason: collision with root package name */
    private com.google.android.gms.ads.doubleclick.c f9825j;

    /* renamed from: k, reason: collision with root package name */
    private com.google.android.gms.ads.k f9826k;

    /* renamed from: l, reason: collision with root package name */
    private String f9827l;
    private ViewGroup m;
    private int n;
    private boolean o;

    public uu1(ViewGroup viewGroup) {
        this(viewGroup, null, false, zt1.f10852a, 0);
    }

    private static boolean a(int i2) {
        return i2 == 1;
    }

    public final void a() {
        try {
            if (this.f9824i != null) {
                this.f9824i.destroy();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final com.google.android.gms.ads.b b() {
        return this.f9821f;
    }

    public final com.google.android.gms.ads.d c() {
        zztw zzjo;
        try {
            if (this.f9824i != null && (zzjo = this.f9824i.zzjo()) != null) {
                return com.google.android.gms.ads.r.a(zzjo.f11250i, zzjo.f11247f, zzjo.f11246e);
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
        com.google.android.gms.ads.d[] dVarArr = this.f9822g;
        if (dVarArr != null) {
            return dVarArr[0];
        }
        return null;
    }

    public final com.google.android.gms.ads.d[] d() {
        return this.f9822g;
    }

    public final String e() {
        zzve zzveVar;
        if (this.f9827l == null && (zzveVar = this.f9824i) != null) {
            try {
                this.f9827l = zzveVar.getAdUnitId();
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
        return this.f9827l;
    }

    public final com.google.android.gms.ads.doubleclick.a f() {
        return this.f9823h;
    }

    public final String g() {
        try {
            if (this.f9824i != null) {
                return this.f9824i.zzjp();
            }
            return null;
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final com.google.android.gms.ads.doubleclick.c h() {
        return this.f9825j;
    }

    public final com.google.android.gms.ads.j i() {
        return this.f9818c;
    }

    public final com.google.android.gms.ads.k j() {
        return this.f9826k;
    }

    public final boolean k() {
        try {
            if (this.f9824i != null) {
                return this.f9824i.isLoading();
            }
            return false;
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            return false;
        }
    }

    public final void l() {
        try {
            if (this.f9824i != null) {
                this.f9824i.pause();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final void m() {
        if (this.f9817b.getAndSet(true)) {
            return;
        }
        try {
            if (this.f9824i != null) {
                this.f9824i.zzjn();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final void n() {
        try {
            if (this.f9824i != null) {
                this.f9824i.resume();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final zzwk o() {
        zzve zzveVar = this.f9824i;
        if (zzveVar == null) {
            return null;
        }
        try {
            return zzveVar.getVideoController();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final void b(com.google.android.gms.ads.d... dVarArr) {
        this.f9822g = dVarArr;
        try {
            if (this.f9824i != null) {
                this.f9824i.zza(a(this.m.getContext(), this.f9822g, this.n));
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
        this.m.requestLayout();
    }

    public uu1(ViewGroup viewGroup, int i2) {
        this(viewGroup, null, false, zt1.f10852a, i2);
    }

    public final void a(su1 su1Var) {
        zzve a2;
        try {
            if (this.f9824i == null) {
                if ((this.f9822g != null && this.f9827l != null) || this.f9824i != null) {
                    Context context = this.m.getContext();
                    zztw a3 = a(context, this.f9822g, this.n);
                    if ("search_v2".equals(a3.f11246e)) {
                        a2 = new hu1(mu1.b(), context, a3, this.f9827l).a(context, false);
                    } else {
                        a2 = new du1(mu1.b(), context, a3, this.f9827l, this.f9816a).a(context, false);
                    }
                    this.f9824i = a2;
                    this.f9824i.zza(new zztl(this.f9819d));
                    if (this.f9820e != null) {
                        this.f9824i.zza(new zztk(this.f9820e));
                    }
                    if (this.f9823h != null) {
                        this.f9824i.zza(new zzty(this.f9823h));
                    }
                    if (this.f9825j != null) {
                        this.f9824i.zza(new zzzs(this.f9825j));
                    }
                    if (this.f9826k != null) {
                        this.f9824i.zza(new zzyc(this.f9826k));
                    }
                    this.f9824i.setManualImpressionsEnabled(this.o);
                    try {
                        IObjectWrapper zzjm = this.f9824i.zzjm();
                        if (zzjm != null) {
                            this.m.addView((View) ObjectWrapper.unwrap(zzjm));
                        }
                    } catch (RemoteException e2) {
                        qd.d("#007 Could not call remote method.", e2);
                    }
                } else {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
            }
            if (this.f9824i.zza(zt1.a(this.m.getContext(), su1Var))) {
                this.f9816a.zzf(su1Var.m());
            }
        } catch (RemoteException e3) {
            qd.d("#007 Could not call remote method.", e3);
        }
    }

    public uu1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zt1.f10852a, 0);
    }

    public uu1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i2) {
        this(viewGroup, attributeSet, false, zt1.f10852a, i2);
    }

    @VisibleForTesting
    private uu1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zt1 zt1Var, zzve zzveVar, int i2) {
        zztw zztwVar;
        this.f9816a = new zzaje();
        this.f9818c = new com.google.android.gms.ads.j();
        this.f9819d = new tu1(this);
        this.m = viewGroup;
        this.f9824i = null;
        this.f9817b = new AtomicBoolean(false);
        this.n = i2;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zztz zztzVar = new zztz(context, attributeSet);
                this.f9822g = zztzVar.a(z);
                this.f9827l = zztzVar.a();
                if (viewGroup.isInEditMode()) {
                    gd a2 = mu1.a();
                    com.google.android.gms.ads.d dVar = this.f9822g[0];
                    int i3 = this.n;
                    if (dVar.equals(com.google.android.gms.ads.d.m)) {
                        zztwVar = zztw.k();
                    } else {
                        zztw zztwVar2 = new zztw(context, dVar);
                        zztwVar2.n = a(i3);
                        zztwVar = zztwVar2;
                    }
                    a2.a(viewGroup, zztwVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e2) {
                mu1.a().a(viewGroup, new zztw(context, com.google.android.gms.ads.d.f4470e), e2.getMessage(), e2.getMessage());
            }
        }
    }

    @VisibleForTesting
    private uu1(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zt1 zt1Var, int i2) {
        this(viewGroup, attributeSet, z, zt1Var, null, i2);
    }

    public final void a(com.google.android.gms.ads.b bVar) {
        this.f9821f = bVar;
        this.f9819d.a(bVar);
    }

    public final void a(st1 st1Var) {
        try {
            this.f9820e = st1Var;
            if (this.f9824i != null) {
                this.f9824i.zza(st1Var != null ? new zztk(st1Var) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final void a(com.google.android.gms.ads.d... dVarArr) {
        if (this.f9822g == null) {
            b(dVarArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void a(String str) {
        if (this.f9827l == null) {
            this.f9827l = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void a(com.google.android.gms.ads.doubleclick.a aVar) {
        try {
            this.f9823h = aVar;
            if (this.f9824i != null) {
                this.f9824i.zza(aVar != null ? new zzty(aVar) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final void a(com.google.android.gms.ads.doubleclick.c cVar) {
        this.f9825j = cVar;
        try {
            if (this.f9824i != null) {
                this.f9824i.zza(cVar != null ? new zzzs(cVar) : null);
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final void a(boolean z) {
        this.o = z;
        try {
            if (this.f9824i != null) {
                this.f9824i.setManualImpressionsEnabled(this.o);
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final void a(com.google.android.gms.ads.k kVar) {
        this.f9826k = kVar;
        try {
            if (this.f9824i != null) {
                this.f9824i.zza(kVar == null ? null : new zzyc(kVar));
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    public final boolean a(zzve zzveVar) {
        if (zzveVar == null) {
            return false;
        }
        try {
            IObjectWrapper zzjm = zzveVar.zzjm();
            if (zzjm == null || ((View) ObjectWrapper.unwrap(zzjm)).getParent() != null) {
                return false;
            }
            this.m.addView((View) ObjectWrapper.unwrap(zzjm));
            this.f9824i = zzveVar;
            return true;
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            return false;
        }
    }

    private static zztw a(Context context, com.google.android.gms.ads.d[] dVarArr, int i2) {
        for (com.google.android.gms.ads.d dVar : dVarArr) {
            if (dVar.equals(com.google.android.gms.ads.d.m)) {
                return zztw.k();
            }
        }
        zztw zztwVar = new zztw(context, dVarArr);
        zztwVar.n = a(i2);
        return zztwVar;
    }
}
