package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class oi {
    public static qz0<fi> a(final Context context, final zzawv zzawvVar, final String str, final t11 t11Var, final com.google.android.gms.ads.internal.b bVar) {
        return gz0.a(gz0.a((Object) null), new qy0(context, t11Var, zzawvVar, bVar, str) { // from class: com.google.android.gms.internal.ads.ni

            /* renamed from: a, reason: collision with root package name */
            private final Context f8351a;

            /* renamed from: b, reason: collision with root package name */
            private final t11 f8352b;

            /* renamed from: c, reason: collision with root package name */
            private final zzawv f8353c;

            /* renamed from: d, reason: collision with root package name */
            private final com.google.android.gms.ads.internal.b f8354d;

            /* renamed from: e, reason: collision with root package name */
            private final String f8355e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8351a = context;
                this.f8352b = t11Var;
                this.f8353c = zzawvVar;
                this.f8354d = bVar;
                this.f8355e = str;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                Context context2 = this.f8351a;
                t11 t11Var2 = this.f8352b;
                zzawv zzawvVar2 = this.f8353c;
                com.google.android.gms.ads.internal.b bVar2 = this.f8354d;
                String str2 = this.f8355e;
                com.google.android.gms.ads.internal.n.d();
                fi a2 = oi.a(context2, uj.f(), "", false, false, t11Var2, zzawvVar2, null, null, bVar2, ks1.a(), null, false);
                final ee c2 = ee.c(a2);
                a2.zzyy().a(new rj(c2) { // from class: com.google.android.gms.internal.ads.pi

                    /* renamed from: a, reason: collision with root package name */
                    private final ee f8709a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8709a = c2;
                    }

                    @Override // com.google.android.gms.internal.ads.rj
                    public final void a(boolean z) {
                        this.f8709a.a();
                    }
                });
                a2.loadUrl(str2);
                return c2;
            }
        }, yd.f10543d);
    }

    public static fi a(final Context context, final uj ujVar, final String str, final boolean z, final boolean z2, @Nullable final t11 t11Var, final zzawv zzawvVar, pw1 pw1Var, final com.google.android.gms.ads.internal.i iVar, final com.google.android.gms.ads.internal.b bVar, final ks1 ks1Var, final qr1 qr1Var, final boolean z3) {
        aw1.a(context);
        if (((Boolean) mu1.e().a(aw1.y0)).booleanValue()) {
            return ak.a(context, ujVar, str, z, z2, t11Var, zzawvVar, null, iVar, bVar, ks1Var, qr1Var, z3);
        }
        try {
            final pw1 pw1Var2 = null;
            return (fi) xc.a(new Callable(context, ujVar, str, z, z2, t11Var, zzawvVar, pw1Var2, iVar, bVar, ks1Var, qr1Var, z3) { // from class: com.google.android.gms.internal.ads.qi

                /* renamed from: e, reason: collision with root package name */
                private final Context f8915e;

                /* renamed from: f, reason: collision with root package name */
                private final uj f8916f;

                /* renamed from: g, reason: collision with root package name */
                private final String f8917g;

                /* renamed from: h, reason: collision with root package name */
                private final boolean f8918h;

                /* renamed from: i, reason: collision with root package name */
                private final boolean f8919i;

                /* renamed from: j, reason: collision with root package name */
                private final t11 f8920j;

                /* renamed from: k, reason: collision with root package name */
                private final zzawv f8921k;

                /* renamed from: l, reason: collision with root package name */
                private final pw1 f8922l = null;
                private final com.google.android.gms.ads.internal.i m;
                private final com.google.android.gms.ads.internal.b n;
                private final ks1 o;
                private final qr1 p;
                private final boolean q;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8915e = context;
                    this.f8916f = ujVar;
                    this.f8917g = str;
                    this.f8918h = z;
                    this.f8919i = z2;
                    this.f8920j = t11Var;
                    this.f8921k = zzawvVar;
                    this.m = iVar;
                    this.n = bVar;
                    this.o = ks1Var;
                    this.p = qr1Var;
                    this.q = z3;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context2 = this.f8915e;
                    uj ujVar2 = this.f8916f;
                    String str2 = this.f8917g;
                    boolean z4 = this.f8918h;
                    boolean z5 = this.f8919i;
                    t11 t11Var2 = this.f8920j;
                    zzawv zzawvVar2 = this.f8921k;
                    pw1 pw1Var3 = this.f8922l;
                    com.google.android.gms.ads.internal.i iVar2 = this.m;
                    com.google.android.gms.ads.internal.b bVar2 = this.n;
                    ks1 ks1Var2 = this.o;
                    zzbbo zzbboVar = new zzbbo(si.a(context2, ujVar2, str2, z4, z5, t11Var2, zzawvVar2, pw1Var3, iVar2, bVar2, ks1Var2, this.p, this.q));
                    zzbboVar.setWebViewClient(com.google.android.gms.ads.internal.n.e().a(zzbboVar, ks1Var2, z5));
                    zzbboVar.setWebChromeClient(new wh(zzbboVar));
                    return zzbboVar;
                }
            });
        } catch (Throwable th) {
            throw new ri("Webview initialization failed.", th);
        }
    }
}
