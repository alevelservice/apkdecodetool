package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d10 extends sq {

    /* renamed from: f, reason: collision with root package name */
    private final Executor f6133f;

    /* renamed from: g, reason: collision with root package name */
    private final l10 f6134g;

    /* renamed from: h, reason: collision with root package name */
    private final u10 f6135h;

    /* renamed from: i, reason: collision with root package name */
    private final c20 f6136i;

    /* renamed from: j, reason: collision with root package name */
    private final q10 f6137j;

    /* renamed from: k, reason: collision with root package name */
    private final x10 f6138k;

    /* renamed from: l, reason: collision with root package name */
    private final ie1<zzbxf> f6139l;
    private final ie1<zzbxd> m;
    private final ie1<zzbxm> n;
    private final ie1<zzbxc> o;
    private final ie1<zzbxh> p;
    private t20 q;
    private boolean r;
    private final x8 s;
    private final t11 t;
    private final zzawv u;
    private final Context v;
    private final j10 w;

    public d10(rq rqVar, Executor executor, l10 l10Var, u10 u10Var, c20 c20Var, q10 q10Var, x10 x10Var, ie1<zzbxf> ie1Var, ie1<zzbxd> ie1Var2, ie1<zzbxm> ie1Var3, ie1<zzbxc> ie1Var4, ie1<zzbxh> ie1Var5, x8 x8Var, t11 t11Var, zzawv zzawvVar, Context context, j10 j10Var) {
        super(rqVar);
        this.f6133f = executor;
        this.f6134g = l10Var;
        this.f6135h = u10Var;
        this.f6136i = c20Var;
        this.f6137j = q10Var;
        this.f6138k = x10Var;
        this.f6139l = ie1Var;
        this.m = ie1Var2;
        this.n = ie1Var3;
        this.o = ie1Var4;
        this.p = ie1Var5;
        this.s = x8Var;
        this.t = t11Var;
        this.u = zzawvVar;
        this.v = context;
        this.w = j10Var;
    }

    public static boolean d(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    public final synchronized void a(String str) {
        this.f6135h.a(str);
    }

    public final synchronized void b(Bundle bundle) {
        this.f6135h.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.sq
    @AnyThread
    public final void c() {
        this.f6133f.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.g10

            /* renamed from: e, reason: collision with root package name */
            private final d10 f6772e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6772e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6772e.n();
            }
        });
        if (this.f6134g.o() != 7) {
            Executor executor = this.f6133f;
            u10 u10Var = this.f6135h;
            u10Var.getClass();
            executor.execute(f10.a(u10Var));
        }
        super.c();
    }

    public final synchronized void f() {
        this.f6135h.cancelUnconfirmedClick();
    }

    public final synchronized boolean g() {
        return this.f6135h.isCustomClickGestureEnabled();
    }

    public final synchronized void h() {
        if (this.q == null) {
            qd.a("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = this.q instanceof zzbuo;
            this.f6133f.execute(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.h10

                /* renamed from: e, reason: collision with root package name */
                private final d10 f6982e;

                /* renamed from: f, reason: collision with root package name */
                private final boolean f6983f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6982e = this;
                    this.f6983f = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6982e.a(this.f6983f);
                }
            });
        }
    }

    public final synchronized void i() {
        if (this.r) {
            return;
        }
        this.f6135h.c();
    }

    public final boolean j() {
        return this.f6137j.d();
    }

    public final boolean k() {
        return this.f6137j.a();
    }

    public final j10 l() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void m() {
        this.f6135h.destroy();
        this.f6134g.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void n() {
        try {
            int o = this.f6134g.o();
            if (o == 1) {
                if (this.f6138k.a() != null) {
                    a("Google", true);
                    this.f6138k.a().zza(this.f6139l.get());
                    return;
                }
                return;
            }
            if (o == 2) {
                if (this.f6138k.b() != null) {
                    a("Google", true);
                    this.f6138k.b().zza(this.m.get());
                    return;
                }
                return;
            }
            if (o == 3) {
                if (this.f6138k.a(this.f6134g.e()) != null) {
                    if (this.f6134g.t() != null) {
                        a("Google", true);
                    }
                    this.f6138k.a(this.f6134g.e()).zzb(this.p.get());
                    return;
                }
                return;
            }
            if (o == 6) {
                if (this.f6138k.c() != null) {
                    a("Google", true);
                    this.f6138k.c().zza(this.n.get());
                    return;
                }
                return;
            }
            if (o != 7) {
                qd.b("Wrong native template id!");
            } else if (this.f6138k.e() != null) {
                this.f6138k.e().zza(this.o.get());
            }
        } catch (RemoteException e2) {
            qd.b("RemoteException when notifyAdLoad is called", e2);
        }
    }

    public final synchronized void o() {
        this.f6135h.zzqs();
    }

    public final synchronized void a(Bundle bundle) {
        this.f6135h.b(bundle);
    }

    public final synchronized void b(t20 t20Var) {
        this.f6135h.a(t20Var.zzaer(), t20Var.zzaik());
        if (t20Var.zzaio() != null) {
            t20Var.zzaio().setClickable(false);
            t20Var.zzaio().removeAllViews();
        }
        if (t20Var.zzaip() != null) {
            t20Var.zzaip().b(this.s);
        }
        this.q = null;
    }

    @Override // com.google.android.gms.internal.ads.sq
    public final synchronized void a() {
        this.f6133f.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.i10

            /* renamed from: e, reason: collision with root package name */
            private final d10 f7207e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7207e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7207e.m();
            }
        });
        super.a();
    }

    public final synchronized boolean c(Bundle bundle) {
        if (this.r) {
            return true;
        }
        boolean c2 = this.f6135h.c(bundle);
        this.r = c2;
        return c2;
    }

    public final synchronized void a(t20 t20Var) {
        cz0 a2;
        this.q = t20Var;
        this.f6136i.a(t20Var);
        this.f6135h.a(t20Var.zzaer(), t20Var.zzail(), t20Var.zzaim(), t20Var, t20Var);
        if (((Boolean) mu1.e().a(aw1.v1)).booleanValue() && (a2 = this.t.a()) != null) {
            a2.a(t20Var.zzaer());
        }
        if (t20Var.zzaip() != null) {
            t20Var.zzaip().a(this.s);
        }
    }

    public final void c(View view) {
        IObjectWrapper v = this.f6134g.v();
        if (!this.f6137j.a() || v == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.n.r().b(v, view);
    }

    public final void b(View view) {
        IObjectWrapper v = this.f6134g.v();
        boolean z = this.f6134g.u() != null;
        if (!this.f6137j.a() || v == null || !z || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.n.r().a(v, view);
    }

    public final synchronized void a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (((Boolean) mu1.e().a(aw1.z3)).booleanValue()) {
            this.f6136i.b(this.q);
        }
        this.f6135h.a(view, view2, map, map2, z);
    }

    public final synchronized void a(View view, MotionEvent motionEvent, View view2) {
        this.f6135h.a(view, motionEvent, view2);
    }

    public final synchronized void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.r) {
            return;
        }
        if (z) {
            this.f6135h.a(view, map, map2);
            this.r = true;
            return;
        }
        if (!z) {
            if (((Boolean) mu1.e().a(aw1.W1)).booleanValue() && map != null) {
                Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    View view2 = it.next().getValue().get();
                    if (view2 != null && d(view2)) {
                        this.f6135h.a(view, map, map2);
                        this.r = true;
                        return;
                    }
                }
            }
        }
    }

    public final synchronized void a(View view) {
        this.f6135h.a(view);
    }

    public final synchronized void a(zzacl zzaclVar) {
        this.f6135h.zza(zzaclVar);
    }

    public final synchronized void a(@Nullable zzwb zzwbVar) {
        this.f6135h.zza(zzwbVar);
    }

    public final synchronized void a(zzvx zzvxVar) {
        this.f6135h.zza(zzvxVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r11, boolean r12) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.q10 r0 = r10.f6137j
            boolean r0 = r0.a()
            if (r0 != 0) goto L9
            return
        L9:
            com.google.android.gms.internal.ads.l10 r0 = r10.f6134g
            com.google.android.gms.internal.ads.fi r0 = r0.u()
            com.google.android.gms.internal.ads.l10 r1 = r10.f6134g
            com.google.android.gms.internal.ads.fi r1 = r1.t()
            if (r0 != 0) goto L1a
            if (r1 != 0) goto L1a
            return
        L1a:
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L20
            r4 = 1
            goto L21
        L20:
            r4 = 0
        L21:
            if (r1 == 0) goto L24
            goto L25
        L24:
            r2 = 0
        L25:
            r3 = 0
            if (r4 == 0) goto L2a
        L28:
            r8 = r3
            goto L32
        L2a:
            if (r2 == 0) goto L30
            java.lang.String r3 = "javascript"
            r0 = r1
            goto L28
        L30:
            r0 = r3
            r8 = r0
        L32:
            android.webkit.WebView r3 = r0.getWebView()
            if (r3 != 0) goto L39
            return
        L39:
            com.google.android.gms.internal.ads.m6 r3 = com.google.android.gms.ads.internal.n.r()
            android.content.Context r4 = r10.v
            boolean r3 = r3.b(r4)
            if (r3 == 0) goto L95
            com.google.android.gms.internal.ads.zzawv r3 = r10.u
            int r4 = r3.f11001f
            int r3 = r3.f11002g
            r5 = 23
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r5)
            r6.append(r4)
            java.lang.String r4 = "."
            r6.append(r4)
            r6.append(r3)
            java.lang.String r4 = r6.toString()
            com.google.android.gms.internal.ads.m6 r3 = com.google.android.gms.ads.internal.n.r()
            android.webkit.WebView r5 = r0.getWebView()
            java.lang.String r6 = ""
            java.lang.String r7 = "javascript"
            r9 = r11
            com.google.android.gms.dynamic.IObjectWrapper r11 = r3.a(r4, r5, r6, r7, r8, r9)
            if (r11 != 0) goto L75
            return
        L75:
            com.google.android.gms.internal.ads.l10 r3 = r10.f6134g
            r3.a(r11)
            r0.zzaq(r11)
            if (r2 == 0) goto L8c
            android.view.View r0 = r1.getView()
            if (r0 == 0) goto L8c
            com.google.android.gms.internal.ads.m6 r1 = com.google.android.gms.ads.internal.n.r()
            r1.a(r11, r0)
        L8c:
            if (r12 == 0) goto L95
            com.google.android.gms.internal.ads.m6 r12 = com.google.android.gms.ads.internal.n.r()
            r12.a(r11)
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.d10.a(java.lang.String, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(boolean z) {
        this.f6135h.a(this.q.zzaer(), this.q.zzaik(), this.q.zzail(), z);
    }
}
