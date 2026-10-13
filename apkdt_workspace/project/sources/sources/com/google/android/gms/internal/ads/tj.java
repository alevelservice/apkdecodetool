package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.io.File;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class tj extends hk implements oj {

    /* renamed from: d, reason: collision with root package name */
    protected fi f9583d;

    /* renamed from: g, reason: collision with root package name */
    private st1 f9586g;

    /* renamed from: h, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f9587h;

    /* renamed from: i, reason: collision with root package name */
    private rj f9588i;

    /* renamed from: j, reason: collision with root package name */
    private qj f9589j;

    /* renamed from: k, reason: collision with root package name */
    private x f9590k;

    /* renamed from: l, reason: collision with root package name */
    private z f9591l;
    private volatile boolean n;

    @GuardedBy("lock")
    private boolean o;
    private com.google.android.gms.ads.internal.overlay.p p;
    private l6 q;
    private com.google.android.gms.ads.internal.a r;
    private a6 s;

    @Nullable
    private t8 t;
    private boolean u;
    private boolean v;
    private int w;
    private boolean x;
    private View.OnAttachStateChangeListener y;

    /* renamed from: f, reason: collision with root package name */
    private final Object f9585f = new Object();
    private boolean m = false;

    /* renamed from: e, reason: collision with root package name */
    private final c2<fi> f9584e = new c2<>();

    private final void m() {
        if (this.f9588i != null && ((this.u && this.w <= 0) || this.v)) {
            this.f9588i.a(!this.v);
            this.f9588i = null;
        }
        this.f9583d.zzzi();
    }

    private static WebResourceResponse n() {
        if (((Boolean) mu1.e().a(aw1.B0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    private final void o() {
        if (this.y == null) {
            return;
        }
        this.f9583d.getView().removeOnAttachStateChangeListener(this.y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(fi fiVar, boolean z) {
        l6 l6Var = new l6(fiVar, fiVar.zzyt(), new lv1(fiVar.getContext()));
        this.f9583d = fiVar;
        this.n = z;
        this.q = l6Var;
        this.s = null;
        this.f9584e.a((c2<fi>) fiVar);
    }

    public final void b(String str, o0<? super fi> o0Var) {
        this.f9584e.zzb(str, o0Var);
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final boolean c() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void d() {
        this.w--;
        m();
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final com.google.android.gms.ads.internal.a e() {
        return this.r;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void f() {
        synchronized (this.f9585f) {
        }
        this.w++;
        m();
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void g() {
        t8 t8Var = this.t;
        if (t8Var != null) {
            WebView webView = this.f9583d.getWebView();
            if (ViewCompat.C(webView)) {
                a(webView, t8Var, 10);
                return;
            }
            o();
            this.y = new yj(this, t8Var);
            this.f9583d.getView().addOnAttachStateChangeListener(this.y);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final t8 h() {
        return this.t;
    }

    public final void i() {
        t8 t8Var = this.t;
        if (t8Var != null) {
            t8Var.b();
            this.t = null;
        }
        o();
        this.f9584e.b();
        this.f9584e.a((c2<fi>) null);
        synchronized (this.f9585f) {
            this.f9586g = null;
            this.f9587h = null;
            this.f9588i = null;
            this.f9589j = null;
            this.f9590k = null;
            this.f9591l = null;
            this.p = null;
            if (this.s != null) {
                this.s.a(true);
                this.s = null;
            }
        }
    }

    public final boolean j() {
        boolean z;
        synchronized (this.f9585f) {
            z = this.o;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener k() {
        synchronized (this.f9585f) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener l() {
        synchronized (this.f9585f) {
        }
        return null;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        qr1 zzzo = this.f9583d.zzzo();
        if (zzzo != null && webView == zzzo.getWebView()) {
            zzzo.a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f9583d.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e9, code lost:
    
        com.google.android.gms.ads.internal.n.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f0, code lost:
    
        return com.google.android.gms.internal.ads.wa.a(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse e(com.google.android.gms.internal.ads.gk r8) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.tj.e(com.google.android.gms.internal.ads.gk):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.hk
    public final void b(gk gkVar) {
        this.f9584e.a(gkVar.f6887b);
    }

    @Override // com.google.android.gms.internal.ads.hk
    public final boolean c(gk gkVar) {
        String valueOf = String.valueOf(gkVar.f6886a);
        na.e(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uri = gkVar.f6887b;
        if (this.f9584e.a(uri)) {
            return true;
        }
        if (this.m) {
            String scheme = uri.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                st1 st1Var = this.f9586g;
                if (st1Var != null) {
                    st1Var.onAdClicked();
                    t8 t8Var = this.t;
                    if (t8Var != null) {
                        t8Var.a(gkVar.f6886a);
                    }
                    this.f9586g = null;
                }
                return false;
            }
        }
        if (!this.f9583d.getWebView().willNotDraw()) {
            try {
                t11 zzzb = this.f9583d.zzzb();
                if (zzzb != null && zzzb.a(uri)) {
                    uri = zzzb.a(uri, this.f9583d.getContext(), this.f9583d.getView(), this.f9583d.zzxl());
                }
            } catch (w31 unused) {
                String valueOf2 = String.valueOf(gkVar.f6886a);
                qd.d(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
            }
            com.google.android.gms.ads.internal.a aVar = this.r;
            if (aVar != null && !aVar.b()) {
                this.r.a(gkVar.f6886a);
            } else {
                a(new zzb("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
            }
        } else {
            String valueOf3 = String.valueOf(gkVar.f6886a);
            qd.d(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
        }
        return true;
    }

    public final void b(boolean z) {
        this.m = z;
    }

    @Override // com.google.android.gms.internal.ads.hk
    @Nullable
    public final WebResourceResponse d(gk gkVar) {
        String str;
        WebResourceResponse c2;
        zzrg a2;
        t8 t8Var = this.t;
        if (t8Var != null) {
            t8Var.a(gkVar.f6886a, gkVar.f6888c, 1);
        }
        if ("mraid.js".equalsIgnoreCase(new File(gkVar.f6886a).getName())) {
            b();
            if (this.f9583d.zzyw().b()) {
                str = (String) mu1.e().a(aw1.M);
            } else if (this.f9583d.zzzd()) {
                str = (String) mu1.e().a(aw1.L);
            } else {
                str = (String) mu1.e().a(aw1.K);
            }
            com.google.android.gms.ads.internal.n.c();
            c2 = wa.c(this.f9583d.getContext(), this.f9583d.zzxp().f11000e, str);
        } else {
            c2 = null;
        }
        if (c2 != null) {
            return c2;
        }
        try {
            if (!p9.a(gkVar.f6886a, this.f9583d.getContext(), this.x).equals(gkVar.f6886a)) {
                return e(gkVar);
            }
            zzrl b2 = zzrl.b(gkVar.f6886a);
            if (b2 != null && (a2 = com.google.android.gms.ads.internal.n.i().a(b2)) != null && a2.j()) {
                return new WebResourceResponse("", "", a2.k());
            }
            if (kd.a()) {
                if (((Boolean) mu1.e().a(aw1.V0)).booleanValue()) {
                    return e(gkVar);
                }
            }
            return null;
        } catch (Exception | NoClassDefFoundError e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "AdWebViewClient.interceptRequest");
            return n();
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void b() {
        synchronized (this.f9585f) {
            this.m = false;
            this.n = true;
            yd.f10543d.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.wj

                /* renamed from: e, reason: collision with root package name */
                private final tj f10131e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10131e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    tj tjVar = this.f10131e;
                    tjVar.f9583d.zzzh();
                    zze zzyu = tjVar.f9583d.zzyu();
                    if (zzyu != null) {
                        zzyu.zzsm();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(int i2, int i3, boolean z) {
        this.q.a(i2, i3);
        a6 a6Var = this.s;
        if (a6Var != null) {
            a6Var.a(i2, i3, false);
        }
    }

    public final void a(String str, o0<? super fi> o0Var) {
        this.f9584e.zza(str, o0Var);
    }

    public final void a(String str, com.google.android.gms.common.util.p<o0<? super fi>> pVar) {
        this.f9584e.a(str, pVar);
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(st1 st1Var, x xVar, com.google.android.gms.ads.internal.overlay.m mVar, z zVar, com.google.android.gms.ads.internal.overlay.p pVar, boolean z, @Nullable s0 s0Var, com.google.android.gms.ads.internal.a aVar, n6 n6Var, @Nullable t8 t8Var) {
        if (aVar == null) {
            aVar = new com.google.android.gms.ads.internal.a(this.f9583d.getContext(), t8Var, null);
        }
        this.s = new a6(this.f9583d, n6Var);
        this.t = t8Var;
        if (((Boolean) mu1.e().a(aw1.H0)).booleanValue()) {
            a("/adMetadata", new v(xVar));
        }
        a("/appEvent", new w(zVar));
        a("/backButton", b0.f5694j);
        a("/refresh", b0.f5695k);
        a("/canOpenURLs", b0.f5685a);
        a("/canOpenIntents", b0.f5686b);
        a("/click", b0.f5687c);
        a("/close", b0.f5688d);
        a("/customClose", b0.f5689e);
        a("/instrument", b0.n);
        a("/delayPageLoaded", b0.p);
        a("/delayPageClosed", b0.q);
        a("/getLocationInfo", b0.r);
        a("/httpTrack", b0.f5690f);
        a("/log", b0.f5691g);
        a("/mraid", new u0(aVar, this.s, n6Var));
        a("/mraidLoaded", this.q);
        a("/open", new t0(aVar, this.s));
        a("/precache", new oh());
        a("/touch", b0.f5693i);
        a("/video", b0.f5696l);
        a("/videoMeta", b0.m);
        if (com.google.android.gms.ads.internal.n.A().a(this.f9583d.getContext())) {
            a("/logScionEvent", new q0(this.f9583d.getContext()));
        }
        this.f9586g = st1Var;
        this.f9587h = mVar;
        this.f9590k = xVar;
        this.f9591l = zVar;
        this.p = pVar;
        this.r = aVar;
        this.m = z;
    }

    public final void c(boolean z) {
        this.x = z;
    }

    @Override // com.google.android.gms.internal.ads.hk
    public final void a(gk gkVar) {
        this.u = true;
        qj qjVar = this.f9589j;
        if (qjVar != null) {
            qjVar.a();
            this.f9589j = null;
        }
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(View view, t8 t8Var, int i2) {
        if (!t8Var.c() || i2 <= 0) {
            return;
        }
        t8Var.a(view);
        if (t8Var.c()) {
            wa.f10063h.postDelayed(new vj(this, view, t8Var, i2), 100L);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a() {
        this.v = true;
        m();
    }

    public final void a(zzb zzbVar) {
        boolean zzzd = this.f9583d.zzzd();
        a(new AdOverlayInfoParcel(zzbVar, (!zzzd || this.f9583d.zzyw().b()) ? this.f9586g : null, zzzd ? null : this.f9587h, this.p, this.f9583d.zzxp()));
    }

    public final void a(boolean z, int i2) {
        st1 st1Var = (!this.f9583d.zzzd() || this.f9583d.zzyw().b()) ? this.f9586g : null;
        com.google.android.gms.ads.internal.overlay.m mVar = this.f9587h;
        com.google.android.gms.ads.internal.overlay.p pVar = this.p;
        fi fiVar = this.f9583d;
        a(new AdOverlayInfoParcel(st1Var, mVar, pVar, fiVar, z, i2, fiVar.zzxp()));
    }

    public final void a(boolean z, int i2, String str) {
        boolean zzzd = this.f9583d.zzzd();
        st1 st1Var = (!zzzd || this.f9583d.zzyw().b()) ? this.f9586g : null;
        xj xjVar = zzzd ? null : new xj(this.f9583d, this.f9587h);
        x xVar = this.f9590k;
        z zVar = this.f9591l;
        com.google.android.gms.ads.internal.overlay.p pVar = this.p;
        fi fiVar = this.f9583d;
        a(new AdOverlayInfoParcel(st1Var, xjVar, xVar, zVar, pVar, fiVar, z, i2, str, fiVar.zzxp()));
    }

    public final void a(boolean z, int i2, String str, String str2) {
        boolean zzzd = this.f9583d.zzzd();
        st1 st1Var = (!zzzd || this.f9583d.zzyw().b()) ? this.f9586g : null;
        xj xjVar = zzzd ? null : new xj(this.f9583d, this.f9587h);
        x xVar = this.f9590k;
        z zVar = this.f9591l;
        com.google.android.gms.ads.internal.overlay.p pVar = this.p;
        fi fiVar = this.f9583d;
        a(new AdOverlayInfoParcel(st1Var, xjVar, xVar, zVar, pVar, fiVar, z, i2, str, str2, fiVar.zzxp()));
    }

    private final void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzb zzbVar;
        a6 a6Var = this.s;
        boolean a2 = a6Var != null ? a6Var.a() : false;
        com.google.android.gms.ads.internal.n.b();
        com.google.android.gms.ads.internal.overlay.j.a(this.f9583d.getContext(), adOverlayInfoParcel, !a2);
        if (this.t != null) {
            String str = adOverlayInfoParcel.p;
            if (str == null && (zzbVar = adOverlayInfoParcel.f4550e) != null) {
                str = zzbVar.f4574f;
            }
            this.t.a(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(rj rjVar) {
        this.f9588i = rjVar;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(qj qjVar) {
        this.f9589j = qjVar;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(int i2, int i3) {
        a6 a6Var = this.s;
        if (a6Var != null) {
            a6Var.a(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(boolean z) {
        synchronized (this.f9585f) {
            this.o = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(Uri uri) {
        this.f9584e.b(uri);
    }
}
