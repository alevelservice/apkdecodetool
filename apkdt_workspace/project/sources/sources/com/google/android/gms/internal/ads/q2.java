package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class q2 {

    /* renamed from: a, reason: collision with root package name */
    private final Object f8828a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f8829b;

    /* renamed from: c, reason: collision with root package name */
    private final String f8830c;

    /* renamed from: d, reason: collision with root package name */
    private final zzawv f8831d;

    /* renamed from: e, reason: collision with root package name */
    private dc<h2> f8832e;

    /* renamed from: f, reason: collision with root package name */
    private dc<h2> f8833f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private m3 f8834g;

    /* renamed from: h, reason: collision with root package name */
    private int f8835h;

    public q2(Context context, zzawv zzawvVar, String str) {
        this.f8828a = new Object();
        this.f8835h = 1;
        this.f8830c = str;
        this.f8829b = context.getApplicationContext();
        this.f8831d = zzawvVar;
        this.f8832e = new f3();
        this.f8833f = new f3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final m3 a(@Nullable final t11 t11Var) {
        final m3 m3Var = new m3(this.f8833f);
        yd.f10543d.execute(new Runnable(this, t11Var, m3Var) { // from class: com.google.android.gms.internal.ads.t2

            /* renamed from: e, reason: collision with root package name */
            private final q2 f9499e;

            /* renamed from: f, reason: collision with root package name */
            private final t11 f9500f;

            /* renamed from: g, reason: collision with root package name */
            private final m3 f9501g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9499e = this;
                this.f9500f = t11Var;
                this.f9501g = m3Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9499e.a(this.f9500f, this.f9501g);
            }
        });
        m3Var.a(new e3(this, m3Var), new d3(this, m3Var));
        return m3Var;
    }

    public final i3 b(@Nullable t11 t11Var) {
        synchronized (this.f8828a) {
            synchronized (this.f8828a) {
                if (this.f8834g != null && this.f8835h == 0) {
                    if (((Boolean) mu1.e().a(aw1.f5668d)).booleanValue()) {
                        this.f8834g.a(new le(this) { // from class: com.google.android.gms.internal.ads.s2

                            /* renamed from: a, reason: collision with root package name */
                            private final q2 f9264a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f9264a = this;
                            }

                            @Override // com.google.android.gms.internal.ads.le
                            public final void b(Object obj) {
                                this.f9264a.a((h2) obj);
                            }
                        }, v2.f9851a);
                    }
                }
            }
            if (this.f8834g != null && this.f8834g.a() != -1) {
                if (this.f8835h == 0) {
                    return this.f8834g.c();
                }
                if (this.f8835h == 1) {
                    this.f8835h = 2;
                    a((t11) null);
                    return this.f8834g.c();
                }
                if (this.f8835h == 2) {
                    return this.f8834g.c();
                }
                return this.f8834g.c();
            }
            this.f8835h = 2;
            this.f8834g = a((t11) null);
            return this.f8834g.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(h2 h2Var) {
        if (h2Var.isDestroyed()) {
            this.f8835h = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(t11 t11Var, final m3 m3Var) {
        final h2 j2Var;
        try {
            Context context = this.f8829b;
            zzawv zzawvVar = this.f8831d;
            if (((Boolean) mu1.e().a(aw1.z0)).booleanValue()) {
                j2Var = new s1(context, zzawvVar);
            } else {
                j2Var = new j2(context, zzawvVar, t11Var, null);
            }
            j2Var.a(new g2(this, m3Var, j2Var) { // from class: com.google.android.gms.internal.ads.u2

                /* renamed from: a, reason: collision with root package name */
                private final q2 f9666a;

                /* renamed from: b, reason: collision with root package name */
                private final m3 f9667b;

                /* renamed from: c, reason: collision with root package name */
                private final h2 f9668c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9666a = this;
                    this.f9667b = m3Var;
                    this.f9668c = j2Var;
                }

                @Override // com.google.android.gms.internal.ads.g2
                public final void a() {
                    final q2 q2Var = this.f9666a;
                    final m3 m3Var2 = this.f9667b;
                    final h2 h2Var = this.f9668c;
                    wa.f10063h.postDelayed(new Runnable(q2Var, m3Var2, h2Var) { // from class: com.google.android.gms.internal.ads.y2

                        /* renamed from: e, reason: collision with root package name */
                        private final q2 f10458e;

                        /* renamed from: f, reason: collision with root package name */
                        private final m3 f10459f;

                        /* renamed from: g, reason: collision with root package name */
                        private final h2 f10460g;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10458e = q2Var;
                            this.f10459f = m3Var2;
                            this.f10460g = h2Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f10458e.a(this.f10459f, this.f10460g);
                        }
                    }, g3.f6790b);
                }
            });
            j2Var.zza("/jsLoaded", new a3(this, m3Var, j2Var));
            yc ycVar = new yc();
            z2 z2Var = new z2(this, t11Var, j2Var, ycVar);
            ycVar.a(z2Var);
            j2Var.zza("/requestReload", z2Var);
            if (this.f8830c.endsWith(".js")) {
                j2Var.b(this.f8830c);
            } else if (this.f8830c.startsWith("<html>")) {
                j2Var.c(this.f8830c);
            } else {
                j2Var.a(this.f8830c);
            }
            wa.f10063h.postDelayed(new c3(this, m3Var, j2Var), g3.f6789a);
        } catch (Throwable th) {
            qd.b("Error creating webview.", th);
            com.google.android.gms.ads.internal.n.g().a(th, "SdkJavascriptFactory.loadJavascriptEngine");
            m3Var.b();
        }
    }

    public q2(Context context, zzawv zzawvVar, String str, dc<h2> dcVar, dc<h2> dcVar2) {
        this(context, zzawvVar, str);
        this.f8832e = dcVar;
        this.f8833f = dcVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(m3 m3Var, h2 h2Var) {
        synchronized (this.f8828a) {
            if (m3Var.a() != -1 && m3Var.a() != 1) {
                m3Var.b();
                tz0 tz0Var = yd.f10543d;
                h2Var.getClass();
                tz0Var.execute(w2.a(h2Var));
                na.e("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
