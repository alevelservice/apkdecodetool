package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbxc extends zzafo implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, d {

    /* renamed from: e, reason: collision with root package name */
    private View f11069e;

    /* renamed from: f, reason: collision with root package name */
    private zzwk f11070f;

    /* renamed from: g, reason: collision with root package name */
    private d10 f11071g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f11072h = false;

    /* renamed from: i, reason: collision with root package name */
    private boolean f11073i = false;

    public zzbxc(d10 d10Var, l10 l10Var) {
        this.f11069e = l10Var.s();
        this.f11070f = l10Var.n();
        this.f11071g = d10Var;
        if (l10Var.t() != null) {
            l10Var.t().zza(this);
        }
    }

    private final void a() {
        View view = this.f11069e;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f11069e);
        }
    }

    private final void b() {
        View view;
        d10 d10Var = this.f11071g;
        if (d10Var == null || (view = this.f11069e) == null) {
            return;
        }
        d10Var.a(view, Collections.emptyMap(), Collections.emptyMap(), d10.d(this.f11069e));
    }

    @Override // com.google.android.gms.internal.ads.zzafl
    public final void destroy() {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        a();
        d10 d10Var = this.f11071g;
        if (d10Var != null) {
            d10Var.a();
        }
        this.f11071g = null;
        this.f11069e = null;
        this.f11070f = null;
        this.f11072h = true;
    }

    @Override // com.google.android.gms.internal.ads.zzafl
    public final zzwk getVideoController() {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        if (this.f11072h) {
            qd.b("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.f11070f;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        b();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        b();
    }

    @Override // com.google.android.gms.internal.ads.zzafl
    public final void zza(IObjectWrapper iObjectWrapper, zzafn zzafnVar) {
        com.google.android.gms.common.internal.m.a("#008 Must be called on the main UI thread.");
        if (this.f11072h) {
            qd.b("Instream ad is destroyed already.");
            a(zzafnVar, 2);
            return;
        }
        if (this.f11069e != null && this.f11070f != null) {
            if (this.f11073i) {
                qd.b("Instream ad should not be used again.");
                a(zzafnVar, 1);
                return;
            }
            this.f11073i = true;
            a();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.f11069e, new ViewGroup.LayoutParams(-1, -1));
            com.google.android.gms.ads.internal.n.z();
            pe.a(this.f11069e, (ViewTreeObserver.OnGlobalLayoutListener) this);
            com.google.android.gms.ads.internal.n.z();
            pe.a(this.f11069e, (ViewTreeObserver.OnScrollChangedListener) this);
            b();
            try {
                zzafnVar.zzqy();
                return;
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
                return;
            }
        }
        String str = this.f11069e == null ? "can not get video view." : "can not get video controller.";
        qd.b(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
        a(zzafnVar, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzaja() {
        try {
            destroy();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.d
    public final void zzqe() {
        wa.f10063h.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.r40

            /* renamed from: e, reason: collision with root package name */
            private final zzbxc f9036e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9036e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9036e.zzaja();
            }
        });
    }

    private static void a(zzafn zzafnVar, int i2) {
        try {
            zzafnVar.zzck(i2);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }
}
