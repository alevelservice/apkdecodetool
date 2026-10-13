package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class ii extends WebViewClient implements oj {
    private static final String[] x = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] y = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};

    /* renamed from: a, reason: collision with root package name */
    protected fi f7302a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final ks1 f7303b;

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<String, List<o0<? super fi>>> f7304c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f7305d;

    /* renamed from: e, reason: collision with root package name */
    private st1 f7306e;

    /* renamed from: f, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.m f7307f;

    /* renamed from: g, reason: collision with root package name */
    private rj f7308g;

    /* renamed from: h, reason: collision with root package name */
    private qj f7309h;

    /* renamed from: i, reason: collision with root package name */
    private x f7310i;

    /* renamed from: j, reason: collision with root package name */
    private z f7311j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f7312k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f7313l;

    @GuardedBy("lock")
    private boolean m;
    private com.google.android.gms.ads.internal.overlay.p n;
    private final l6 o;
    private com.google.android.gms.ads.internal.a p;
    private a6 q;

    @Nullable
    protected t8 r;
    private boolean s;
    private boolean t;
    private int u;
    private boolean v;
    private View.OnAttachStateChangeListener w;

    public ii(fi fiVar, ks1 ks1Var, boolean z) {
        this(fiVar, ks1Var, z, new l6(fiVar, fiVar.zzyt(), new lv1(fiVar.getContext())), null);
    }

    private final void m() {
        if (this.f7308g != null && ((this.s && this.u <= 0) || this.t)) {
            this.f7308g.a(!this.t);
            this.f7308g = null;
        }
        this.f7302a.zzzi();
    }

    private static WebResourceResponse n() {
        if (((Boolean) mu1.e().a(aw1.B0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    private final void o() {
        if (this.w == null) {
            return;
        }
        this.f7302a.getView().removeOnAttachStateChangeListener(this.w);
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(int i2, int i3, boolean z) {
        this.o.a(i2, i3);
        a6 a6Var = this.q;
        if (a6Var != null) {
            a6Var.a(i2, i3, false);
        }
    }

    public final void b(String str, o0<? super fi> o0Var) {
        synchronized (this.f7305d) {
            List<o0<? super fi>> list = this.f7304c.get(str);
            if (list == null) {
                return;
            }
            list.remove(o0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final boolean c() {
        boolean z;
        synchronized (this.f7305d) {
            z = this.f7313l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void d() {
        this.u--;
        m();
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final com.google.android.gms.ads.internal.a e() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void f() {
        synchronized (this.f7305d) {
        }
        this.u++;
        m();
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void g() {
        t8 t8Var = this.r;
        if (t8Var != null) {
            WebView webView = this.f7302a.getWebView();
            if (ViewCompat.C(webView)) {
                a(webView, t8Var, 10);
                return;
            }
            o();
            this.w = new mi(this, t8Var);
            this.f7302a.getView().addOnAttachStateChangeListener(this.w);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final t8 h() {
        return this.r;
    }

    public final void i() {
        t8 t8Var = this.r;
        if (t8Var != null) {
            t8Var.b();
            this.r = null;
        }
        o();
        synchronized (this.f7305d) {
            this.f7304c.clear();
            this.f7306e = null;
            this.f7307f = null;
            this.f7308g = null;
            this.f7309h = null;
            this.f7310i = null;
            this.f7311j = null;
            this.f7312k = false;
            this.f7313l = false;
            this.m = false;
            this.n = null;
            if (this.q != null) {
                this.q.a(true);
                this.q = null;
            }
        }
    }

    public final boolean j() {
        boolean z;
        synchronized (this.f7305d) {
            z = this.m;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener k() {
        synchronized (this.f7305d) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener l() {
        synchronized (this.f7305d) {
        }
        return null;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        na.e(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f7305d) {
            if (this.f7302a.isDestroyed()) {
                na.e("Blank page loaded, 1...");
                this.f7302a.zzze();
                return;
            }
            this.s = true;
            qj qjVar = this.f7309h;
            if (qjVar != null) {
                qjVar.a();
                this.f7309h = null;
            }
            m();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        qr1 zzzo = this.f7302a.zzzo();
        if (zzzo != null && webView == zzzo.getWebView()) {
            zzzo.a(webView, str, bitmap);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i2, String str, String str2) {
        String valueOf;
        if (i2 < 0) {
            int i3 = (-i2) - 1;
            String[] strArr = x;
            if (i3 < strArr.length) {
                valueOf = strArr[i3];
                a(this.f7302a.getContext(), "http_err", valueOf, str2);
                super.onReceivedError(webView, i2, str, str2);
            }
        }
        valueOf = String.valueOf(i2);
        a(this.f7302a.getContext(), "http_err", valueOf, str2);
        super.onReceivedError(webView, i2, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        String valueOf;
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            if (primaryError >= 0) {
                String[] strArr = y;
                if (primaryError < strArr.length) {
                    valueOf = strArr[primaryError];
                    Context context = this.f7302a.getContext();
                    com.google.android.gms.ads.internal.n.e();
                    a(context, "ssl_err", valueOf, sslError.getUrl());
                }
            }
            valueOf = String.valueOf(primaryError);
            Context context2 = this.f7302a.getContext();
            com.google.android.gms.ads.internal.n.e();
            a(context2, "ssl_err", valueOf, sslError.getUrl());
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f7302a.zzb(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        na.e(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        } else {
            if (this.f7312k && webView == this.f7302a.getWebView()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    st1 st1Var = this.f7306e;
                    if (st1Var != null) {
                        st1Var.onAdClicked();
                        t8 t8Var = this.r;
                        if (t8Var != null) {
                            t8Var.a(str);
                        }
                        this.f7306e = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.f7302a.getWebView().willNotDraw()) {
                try {
                    t11 zzzb = this.f7302a.zzzb();
                    if (zzzb != null && zzzb.a(parse)) {
                        parse = zzzb.a(parse, this.f7302a.getContext(), this.f7302a.getView(), this.f7302a.zzxl());
                    }
                } catch (w31 unused) {
                    String valueOf2 = String.valueOf(str);
                    qd.d(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                }
                com.google.android.gms.ads.internal.a aVar = this.p;
                if (aVar != null && !aVar.b()) {
                    this.p.a(str);
                } else {
                    a(new zzb("android.intent.action.VIEW", parse.toString(), null, null, null, null, null));
                }
            } else {
                String valueOf3 = String.valueOf(str);
                qd.d(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(st1 st1Var, x xVar, com.google.android.gms.ads.internal.overlay.m mVar, z zVar, com.google.android.gms.ads.internal.overlay.p pVar, boolean z, @Nullable s0 s0Var, com.google.android.gms.ads.internal.a aVar, n6 n6Var, @Nullable t8 t8Var) {
        if (aVar == null) {
            aVar = new com.google.android.gms.ads.internal.a(this.f7302a.getContext(), t8Var, null);
        }
        this.q = new a6(this.f7302a, n6Var);
        this.r = t8Var;
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
        a("/mraid", new u0(aVar, this.q, n6Var));
        a("/mraidLoaded", this.o);
        a("/open", new t0(aVar, this.q));
        a("/precache", new oh());
        a("/touch", b0.f5693i);
        a("/video", b0.f5696l);
        a("/videoMeta", b0.m);
        if (com.google.android.gms.ads.internal.n.A().a(this.f7302a.getContext())) {
            a("/logScionEvent", new q0(this.f7302a.getContext()));
        }
        this.f7306e = st1Var;
        this.f7307f = mVar;
        this.f7310i = xVar;
        this.f7311j = zVar;
        this.n = pVar;
        this.p = aVar;
        this.f7312k = z;
    }

    public final void c(boolean z) {
        this.v = z;
    }

    @VisibleForTesting
    private ii(fi fiVar, ks1 ks1Var, boolean z, l6 l6Var, a6 a6Var) {
        this.f7304c = new HashMap<>();
        this.f7305d = new Object();
        this.f7312k = false;
        this.f7303b = ks1Var;
        this.f7302a = fiVar;
        this.f7313l = z;
        this.o = l6Var;
        this.q = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e5, code lost:
    
        com.google.android.gms.ads.internal.n.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ec, code lost:
    
        return com.google.android.gms.internal.ads.wa.a(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse b(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ii.b(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    public final void b(boolean z) {
        this.f7312k = z;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void b() {
        synchronized (this.f7305d) {
            this.f7312k = false;
            this.f7313l = true;
            yd.f10543d.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.hi

                /* renamed from: e, reason: collision with root package name */
                private final ii f7084e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7084e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ii iiVar = this.f7084e;
                    iiVar.f7302a.zzzh();
                    zze zzyu = iiVar.f7302a.zzyu();
                    if (zzyu != null) {
                        zzyu.zzsm();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(View view, t8 t8Var, int i2) {
        if (!t8Var.c() || i2 <= 0) {
            return;
        }
        t8Var.a(view);
        if (t8Var.c()) {
            wa.f10063h.postDelayed(new ji(this, view, t8Var, i2), 100L);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a() {
        ks1 ks1Var = this.f7303b;
        if (ks1Var != null) {
            ks1Var.a(ms1.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.t = true;
        m();
        if (((Boolean) mu1.e().a(aw1.f3)).booleanValue()) {
            this.f7302a.destroy();
        }
    }

    public final void a(zzb zzbVar) {
        boolean zzzd = this.f7302a.zzzd();
        a(new AdOverlayInfoParcel(zzbVar, (!zzzd || this.f7302a.zzyw().b()) ? this.f7306e : null, zzzd ? null : this.f7307f, this.n, this.f7302a.zzxp()));
    }

    public final void a(boolean z, int i2) {
        st1 st1Var = (!this.f7302a.zzzd() || this.f7302a.zzyw().b()) ? this.f7306e : null;
        com.google.android.gms.ads.internal.overlay.m mVar = this.f7307f;
        com.google.android.gms.ads.internal.overlay.p pVar = this.n;
        fi fiVar = this.f7302a;
        a(new AdOverlayInfoParcel(st1Var, mVar, pVar, fiVar, z, i2, fiVar.zzxp()));
    }

    public final void a(boolean z, int i2, String str) {
        boolean zzzd = this.f7302a.zzzd();
        st1 st1Var = (!zzzd || this.f7302a.zzyw().b()) ? this.f7306e : null;
        li liVar = zzzd ? null : new li(this.f7302a, this.f7307f);
        x xVar = this.f7310i;
        z zVar = this.f7311j;
        com.google.android.gms.ads.internal.overlay.p pVar = this.n;
        fi fiVar = this.f7302a;
        a(new AdOverlayInfoParcel(st1Var, liVar, xVar, zVar, pVar, fiVar, z, i2, str, fiVar.zzxp()));
    }

    public final void a(boolean z, int i2, String str, String str2) {
        boolean zzzd = this.f7302a.zzzd();
        st1 st1Var = (!zzzd || this.f7302a.zzyw().b()) ? this.f7306e : null;
        li liVar = zzzd ? null : new li(this.f7302a, this.f7307f);
        x xVar = this.f7310i;
        z zVar = this.f7311j;
        com.google.android.gms.ads.internal.overlay.p pVar = this.n;
        fi fiVar = this.f7302a;
        a(new AdOverlayInfoParcel(st1Var, liVar, xVar, zVar, pVar, fiVar, z, i2, str, str2, fiVar.zzxp()));
    }

    private final void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzb zzbVar;
        a6 a6Var = this.q;
        boolean a2 = a6Var != null ? a6Var.a() : false;
        com.google.android.gms.ads.internal.n.b();
        com.google.android.gms.ads.internal.overlay.j.a(this.f7302a.getContext(), adOverlayInfoParcel, !a2);
        if (this.r != null) {
            String str = adOverlayInfoParcel.p;
            if (str == null && (zzbVar = adOverlayInfoParcel.f4550e) != null) {
                str = zzbVar.f4574f;
            }
            this.r.a(str);
        }
    }

    public final void a(String str, o0<? super fi> o0Var) {
        synchronized (this.f7305d) {
            List<o0<? super fi>> list = this.f7304c.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList<>();
                this.f7304c.put(str, list);
            }
            list.add(o0Var);
        }
    }

    public final void a(String str, com.google.android.gms.common.util.p<o0<? super fi>> pVar) {
        synchronized (this.f7305d) {
            List<o0<? super fi>> list = this.f7304c.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (o0<? super fi> o0Var : list) {
                if (pVar.apply(o0Var)) {
                    arrayList.add(o0Var);
                }
            }
            list.removeAll(arrayList);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(rj rjVar) {
        this.f7308g = rjVar;
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(qj qjVar) {
        this.f7309h = qjVar;
    }

    private final void a(Context context, String str, String str2, String str3) {
        String str4;
        if (((Boolean) mu1.e().a(aw1.f1)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("err", str);
            bundle.putString(HummerConstants.CODE, str2);
            if (!TextUtils.isEmpty(str3)) {
                Uri parse = Uri.parse(str3);
                if (parse.getHost() != null) {
                    str4 = parse.getHost();
                    bundle.putString("host", str4);
                    com.google.android.gms.ads.internal.n.c().a(context, this.f7302a.zzxp().f11000e, "gmob-apps", bundle, true);
                }
            }
            str4 = "";
            bundle.putString("host", str4);
            com.google.android.gms.ads.internal.n.c().a(context, this.f7302a.zzxp().f11000e, "gmob-apps", bundle, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final WebResourceResponse a(String str, Map<String, String> map) {
        zzrg a2;
        try {
            String a3 = p9.a(str, this.f7302a.getContext(), this.v);
            if (!a3.equals(str)) {
                return b(a3, map);
            }
            zzrl b2 = zzrl.b(str);
            if (b2 != null && (a2 = com.google.android.gms.ads.internal.n.i().a(b2)) != null && a2.j()) {
                return new WebResourceResponse("", "", a2.k());
            }
            if (!kd.a()) {
                return null;
            }
            if (((Boolean) mu1.e().a(aw1.V0)).booleanValue()) {
                return b(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "AdWebViewClient.interceptRequest");
            return n();
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(int i2, int i3) {
        a6 a6Var = this.q;
        if (a6Var != null) {
            a6Var.a(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(Uri uri) {
        final String path = uri.getPath();
        List<o0<? super fi>> list = this.f7304c.get(path);
        if (list != null) {
            com.google.android.gms.ads.internal.n.c();
            Map<String, String> a2 = wa.a(uri);
            if (qd.a(2)) {
                String valueOf = String.valueOf(path);
                na.e(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
                for (String str : a2.keySet()) {
                    String str2 = a2.get(str);
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length());
                    sb.append("  ");
                    sb.append(str);
                    sb.append(": ");
                    sb.append(str2);
                    na.e(sb.toString());
                }
            }
            Iterator<o0<? super fi>> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(this.f7302a, a2);
            }
            return;
        }
        String valueOf2 = String.valueOf(uri);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
        sb2.append("No GMSG handler found for GMSG: ");
        sb2.append(valueOf2);
        na.e(sb2.toString());
        if (!((Boolean) mu1.e().a(aw1.K3)).booleanValue() || com.google.android.gms.ads.internal.n.g().c() == null) {
            return;
        }
        yd.f10540a.execute(new Runnable(path) { // from class: com.google.android.gms.internal.ads.ki

            /* renamed from: e, reason: collision with root package name */
            private final String f7699e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7699e = path;
            }

            @Override // java.lang.Runnable
            public final void run() {
                com.google.android.gms.ads.internal.n.g().c().b(this.f7699e.substring(1));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.oj
    public final void a(boolean z) {
        synchronized (this.f7305d) {
            this.m = true;
        }
    }
}
