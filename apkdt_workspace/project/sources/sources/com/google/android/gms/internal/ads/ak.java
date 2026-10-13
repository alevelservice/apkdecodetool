package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class ak {
    public static fi a(final Context context, final uj ujVar, final String str, final boolean z, final boolean z2, @Nullable final t11 t11Var, final zzawv zzawvVar, pw1 pw1Var, final com.google.android.gms.ads.internal.i iVar, final com.google.android.gms.ads.internal.b bVar, final ks1 ks1Var, final qr1 qr1Var, final boolean z3) {
        try {
            final pw1 pw1Var2 = null;
            return (fi) xc.a(new Callable(context, ujVar, str, z, z2, t11Var, zzawvVar, pw1Var2, iVar, bVar, ks1Var, qr1Var, z3) { // from class: com.google.android.gms.internal.ads.zj

                /* renamed from: e, reason: collision with root package name */
                private final Context f10763e;

                /* renamed from: f, reason: collision with root package name */
                private final uj f10764f;

                /* renamed from: g, reason: collision with root package name */
                private final String f10765g;

                /* renamed from: h, reason: collision with root package name */
                private final boolean f10766h;

                /* renamed from: i, reason: collision with root package name */
                private final boolean f10767i;

                /* renamed from: j, reason: collision with root package name */
                private final t11 f10768j;

                /* renamed from: k, reason: collision with root package name */
                private final zzawv f10769k;

                /* renamed from: l, reason: collision with root package name */
                private final pw1 f10770l;
                private final com.google.android.gms.ads.internal.i m;
                private final com.google.android.gms.ads.internal.b n;
                private final ks1 o;
                private final qr1 p;
                private final boolean q;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10763e = context;
                    this.f10764f = ujVar;
                    this.f10765g = str;
                    this.f10766h = z;
                    this.f10767i = z2;
                    this.f10768j = t11Var;
                    this.f10769k = zzawvVar;
                    this.f10770l = pw1Var2;
                    this.m = iVar;
                    this.n = bVar;
                    this.o = ks1Var;
                    this.p = qr1Var;
                    this.q = z3;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context2 = this.f10763e;
                    uj ujVar2 = this.f10764f;
                    String str2 = this.f10765g;
                    boolean z4 = this.f10766h;
                    boolean z5 = this.f10767i;
                    t11 t11Var2 = this.f10768j;
                    zzawv zzawvVar2 = this.f10769k;
                    pw1 pw1Var3 = this.f10770l;
                    com.google.android.gms.ads.internal.i iVar2 = this.m;
                    com.google.android.gms.ads.internal.b bVar2 = this.n;
                    ks1 ks1Var2 = this.o;
                    qr1 qr1Var2 = this.p;
                    boolean z6 = this.q;
                    tj tjVar = new tj();
                    dk dkVar = new dk(new sj(context2), tjVar, ujVar2, str2, z4, z5, t11Var2, zzawvVar2, pw1Var3, iVar2, bVar2, ks1Var2, qr1Var2, z6);
                    zzbbo zzbboVar = new zzbbo(dkVar);
                    dkVar.setWebChromeClient(new wh(zzbboVar));
                    tjVar.a(zzbboVar, z5);
                    return zzbboVar;
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.g().a(th, "AdWebViewFactory.newAdWebView2");
            throw new ri("Webview initialization failed.", th);
        }
    }
}
