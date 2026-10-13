package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xo extends uo {

    /* renamed from: f, reason: collision with root package name */
    private final Context f10402f;

    /* renamed from: g, reason: collision with root package name */
    private final View f10403g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private final fi f10404h;

    /* renamed from: i, reason: collision with root package name */
    private final ms0 f10405i;

    /* renamed from: j, reason: collision with root package name */
    private final pq f10406j;

    /* renamed from: k, reason: collision with root package name */
    private final x10 f10407k;

    /* renamed from: l, reason: collision with root package name */
    private final sx f10408l;
    private final ie1<zzclg> m;
    private final Executor n;
    private zztw o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xo(rq rqVar, Context context, ms0 ms0Var, View view, @Nullable fi fiVar, pq pqVar, x10 x10Var, sx sxVar, ie1<zzclg> ie1Var, Executor executor) {
        super(rqVar);
        this.f10402f = context;
        this.f10403g = view;
        this.f10404h = fiVar;
        this.f10405i = ms0Var;
        this.f10406j = pqVar;
        this.f10407k = x10Var;
        this.f10408l = sxVar;
        this.m = ie1Var;
        this.n = executor;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final void a(ViewGroup viewGroup, zztw zztwVar) {
        fi fiVar;
        if (viewGroup == null || (fiVar = this.f10404h) == null) {
            return;
        }
        fiVar.zza(uj.a(zztwVar));
        viewGroup.setMinimumHeight(zztwVar.f11248g);
        viewGroup.setMinimumWidth(zztwVar.f11251j);
        this.o = zztwVar;
    }

    @Override // com.google.android.gms.internal.ads.sq
    public final void c() {
        this.n.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.vo

            /* renamed from: e, reason: collision with root package name */
            private final xo f9960e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9960e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9960e.k();
            }
        });
        super.c();
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final zzwk f() {
        try {
            return this.f10406j.getVideoController();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final ms0 g() {
        zztw zztwVar = this.o;
        if (zztwVar != null) {
            return at0.a(zztwVar);
        }
        return at0.a(this.f9422b.o, this.f10405i);
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final View h() {
        return this.f10403g;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final int i() {
        return this.f9421a.f9986b.f9630b.f8770c;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final void j() {
        this.f10408l.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void k() {
        if (this.f10407k.d() != null) {
            try {
                this.f10407k.d().zza(this.m.get(), ObjectWrapper.wrap(this.f10402f));
            } catch (RemoteException e2) {
                qd.b("RemoteException when notifyAdLoad is called", e2);
            }
        }
    }
}
