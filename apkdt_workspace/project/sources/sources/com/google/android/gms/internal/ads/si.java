package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.ws1;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
final class si extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, fi {

    @GuardedBy("this")
    private boolean A;

    @GuardedBy("this")
    private String B;

    @GuardedBy("this")
    private zzbbu C;

    @GuardedBy("this")
    private boolean D;

    @GuardedBy("this")
    private boolean E;

    @GuardedBy("this")
    private g F;

    @GuardedBy("this")
    private d G;

    @GuardedBy("this")
    private nr1 H;

    @GuardedBy("this")
    private int I;

    @GuardedBy("this")
    private int J;
    private nw1 K;
    private nw1 L;
    private nw1 M;
    private qw1 N;

    @GuardedBy("this")
    private zze O;

    @GuardedBy("this")
    private boolean P;
    private hd Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private Map<String, jh> V;
    private final WindowManager W;
    private final ks1 a0;

    /* renamed from: e, reason: collision with root package name */
    private final sj f9360e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final t11 f9361f;

    /* renamed from: g, reason: collision with root package name */
    private final zzawv f9362g;

    /* renamed from: h, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.i f9363h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.b f9364i;

    /* renamed from: j, reason: collision with root package name */
    private final DisplayMetrics f9365j;

    /* renamed from: k, reason: collision with root package name */
    private final float f9366k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    private final qr1 f9367l;
    private final boolean m;
    private boolean n;
    private boolean o;
    private ii p;

    @GuardedBy("this")
    private zze q;

    @GuardedBy("this")
    private IObjectWrapper r;

    @GuardedBy("this")
    private uj s;

    @GuardedBy("this")
    private String t;

    @GuardedBy("this")
    private boolean u;

    @GuardedBy("this")
    private boolean v;

    @GuardedBy("this")
    private boolean w;

    @GuardedBy("this")
    private boolean x;

    @GuardedBy("this")
    private Boolean y;

    @GuardedBy("this")
    private int z;

    @VisibleForTesting
    private si(sj sjVar, uj ujVar, String str, boolean z, boolean z2, @Nullable t11 t11Var, zzawv zzawvVar, pw1 pw1Var, com.google.android.gms.ads.internal.i iVar, com.google.android.gms.ads.internal.b bVar, ks1 ks1Var, qr1 qr1Var, boolean z3) {
        super(sjVar);
        this.n = false;
        this.o = false;
        this.A = true;
        this.B = "";
        this.R = -1;
        this.S = -1;
        this.T = -1;
        this.U = -1;
        this.f9360e = sjVar;
        this.s = ujVar;
        this.t = str;
        this.w = z;
        this.z = -1;
        this.f9361f = t11Var;
        this.f9362g = zzawvVar;
        this.f9363h = iVar;
        this.f9364i = bVar;
        this.W = (WindowManager) getContext().getSystemService("window");
        com.google.android.gms.ads.internal.n.c();
        this.f9365j = wa.a(this.W);
        this.f9366k = this.f9365j.density;
        this.a0 = ks1Var;
        this.f9367l = qr1Var;
        this.m = z3;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e2) {
            qd.b("Unable to enable Javascript.", e2);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        com.google.android.gms.ads.internal.n.c().a(sjVar, zzawvVar.f11000e, settings);
        com.google.android.gms.ads.internal.n.e().a(getContext(), settings);
        setDownloadListener(this);
        d();
        if (com.google.android.gms.common.util.o.d()) {
            addJavascriptInterface(aj.a(this), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.Q = new hd(this.f9360e.a(), this, this, null);
        h();
        this.N = new qw1(new pw1(true, "make_wv", this.t));
        this.N.a().a(pw1Var);
        this.L = kw1.a(this.N.a());
        this.N.a("native:view_create", this.L);
        this.M = null;
        this.K = null;
        com.google.android.gms.ads.internal.n.e().b(sjVar);
        com.google.android.gms.ads.internal.n.g().f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static si a(Context context, uj ujVar, String str, boolean z, boolean z2, @Nullable t11 t11Var, zzawv zzawvVar, pw1 pw1Var, com.google.android.gms.ads.internal.i iVar, com.google.android.gms.ads.internal.b bVar, ks1 ks1Var, qr1 qr1Var, boolean z3) {
        return new si(new sj(context), ujVar, str, z, z2, t11Var, zzawvVar, pw1Var, iVar, bVar, ks1Var, qr1Var, z3);
    }

    private final synchronized void b(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "AdWebViewImpl.loadUrlUnsafe");
            qd.c("Could not call loadUrl. ", e2);
        }
    }

    private final void c(String str) {
        if (com.google.android.gms.common.util.o.f()) {
            if (i() == null) {
                b();
            }
            if (i().booleanValue()) {
                a(str, (ValueCallback<String>) null);
                return;
            } else {
                String valueOf = String.valueOf(str);
                a(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
                return;
            }
        }
        String valueOf2 = String.valueOf(str);
        a(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    private final synchronized void d() {
        if (!this.w && !this.s.b()) {
            if (Build.VERSION.SDK_INT < 18) {
                qd.a("Disabling hardware acceleration on an AdView.");
                e();
                return;
            } else {
                qd.a("Enabling hardware acceleration on an AdView.");
                f();
                return;
            }
        }
        qd.a("Enabling hardware acceleration on an overlay.");
        f();
    }

    private final synchronized void e() {
        if (!this.x) {
            com.google.android.gms.ads.internal.n.e();
            setLayerType(1, null);
        }
        this.x = true;
    }

    private final synchronized void f() {
        if (this.x) {
            com.google.android.gms.ads.internal.n.e();
            setLayerType(0, null);
        }
        this.x = false;
    }

    private final synchronized void g() {
        if (this.V != null) {
            Iterator<jh> it = this.V.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
        this.V = null;
    }

    private final void h() {
        pw1 a2;
        qw1 qw1Var = this.N;
        if (qw1Var == null || (a2 = qw1Var.a()) == null || com.google.android.gms.ads.internal.n.g().c() == null) {
            return;
        }
        com.google.android.gms.ads.internal.n.g().c().a(a2);
    }

    @VisibleForTesting
    private final synchronized Boolean i() {
        return this.y;
    }

    private final synchronized void j() {
        if (!this.P) {
            this.P = true;
            com.google.android.gms.ads.internal.n.g().g();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final synchronized void destroy() {
        h();
        this.Q.d();
        if (this.q != null) {
            this.q.close();
            this.q.onDestroy();
            this.q = null;
        }
        this.r = null;
        this.p.i();
        if (this.v) {
            return;
        }
        com.google.android.gms.ads.internal.n.y();
        gh.a(this);
        g();
        this.v = true;
        na.e("Initiating WebView self destruct sequence in 3...");
        na.e("Loading blank page in WebView, 2...");
        b("about:blank");
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (isDestroyed()) {
            qd.f("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    protected final void finalize() {
        try {
            synchronized (this) {
                if (!this.v) {
                    this.p.i();
                    com.google.android.gms.ads.internal.n.y();
                    gh.a(this);
                    g();
                    j();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.pj
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean isDestroyed() {
        return this.v;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!isDestroyed()) {
            super.loadData(str, str2, str3);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final synchronized void loadUrl(String str) {
        if (!isDestroyed()) {
            try {
                super.loadUrl(str);
                return;
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e2) {
                com.google.android.gms.ads.internal.n.g().a(e2, "AdWebViewImpl.loadUrl");
                qd.c("Could not call loadUrl. ", e2);
                return;
            }
        }
        qd.d("#004 The webview is destroyed. Ignoring action.");
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.Q.a();
        }
        boolean z = this.D;
        if (this.p != null && this.p.j()) {
            if (!this.E) {
                this.p.k();
                this.p.l();
                this.E = true;
            }
            a();
            z = true;
        }
        a(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.Q.b();
            }
            super.onDetachedFromWindow();
            if (this.E && this.p != null && this.p.j() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.p.k();
                this.p.l();
                this.E = false;
            }
        }
        a(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.n.c();
            wa.a(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            qd.a(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (isDestroyed()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean a2 = a();
        zze zzyu = zzyu();
        if (zzyu == null || !a2) {
            return;
        }
        zzyu.zzsp();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01d7 A[Catch: all -> 0x01ff, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:21:0x002e, B:23:0x0036, B:25:0x0048, B:28:0x004d, B:30:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:40:0x0084, B:45:0x0080, B:47:0x0091, B:49:0x0099, B:51:0x00ab, B:54:0x00b2, B:56:0x00ce, B:57:0x00d9, B:60:0x00d5, B:61:0x00de, B:64:0x00e3, B:66:0x00eb, B:69:0x00f8, B:76:0x011e, B:78:0x0125, B:82:0x012f, B:84:0x0141, B:86:0x0151, B:93:0x016c, B:95:0x01c1, B:96:0x01c5, B:98:0x01cc, B:103:0x01d7, B:105:0x01dd, B:106:0x01e0, B:108:0x01e4, B:109:0x01ed, B:115:0x01fa), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0141 A[Catch: all -> 0x01ff, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:21:0x002e, B:23:0x0036, B:25:0x0048, B:28:0x004d, B:30:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:40:0x0084, B:45:0x0080, B:47:0x0091, B:49:0x0099, B:51:0x00ab, B:54:0x00b2, B:56:0x00ce, B:57:0x00d9, B:60:0x00d5, B:61:0x00de, B:64:0x00e3, B:66:0x00eb, B:69:0x00f8, B:76:0x011e, B:78:0x0125, B:82:0x012f, B:84:0x0141, B:86:0x0151, B:93:0x016c, B:95:0x01c1, B:96:0x01c5, B:98:0x01cc, B:103:0x01d7, B:105:0x01dd, B:106:0x01e0, B:108:0x01e4, B:109:0x01ed, B:115:0x01fa), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x016c A[Catch: all -> 0x01ff, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:21:0x002e, B:23:0x0036, B:25:0x0048, B:28:0x004d, B:30:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:40:0x0084, B:45:0x0080, B:47:0x0091, B:49:0x0099, B:51:0x00ab, B:54:0x00b2, B:56:0x00ce, B:57:0x00d9, B:60:0x00d5, B:61:0x00de, B:64:0x00e3, B:66:0x00eb, B:69:0x00f8, B:76:0x011e, B:78:0x0125, B:82:0x012f, B:84:0x0141, B:86:0x0151, B:93:0x016c, B:95:0x01c1, B:96:0x01c5, B:98:0x01cc, B:103:0x01d7, B:105:0x01dd, B:106:0x01e0, B:108:0x01e4, B:109:0x01ed, B:115:0x01fa), top: B:2:0x0001 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.si.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final void onPause() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e2) {
            qd.b("Could not pause webview.", e2);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final void onResume() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e2) {
            qd.b("Could not resume webview.", e2);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.p.j()) {
            synchronized (this) {
                if (this.F != null) {
                    this.F.a(motionEvent);
                }
            }
        } else {
            t11 t11Var = this.f9361f;
            if (t11Var != null) {
                t11Var.a(motionEvent);
            }
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.fi
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void setRequestedOrientation(int i2) {
        this.z = i2;
        if (this.q != null) {
            this.q.setRequestedOrientation(this.z);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof ii) {
            this.p = (ii) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e2) {
            qd.b("Could not stop loading webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, Map<String, ?> map) {
        try {
            zza(str, com.google.android.gms.ads.internal.n.c().a(map));
        } catch (JSONException unused) {
            qd.d("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzae(boolean z) {
        if (this.q != null) {
            this.q.zza(this.p.c(), z);
        } else {
            this.u = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zzao(boolean z) {
        this.p.b(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzaq(IObjectWrapper iObjectWrapper) {
        this.r = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzar(boolean z) {
        this.A = z;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzas(boolean z) {
        this.I += z ? 1 : -1;
        if (this.I <= 0 && this.q != null) {
            this.q.zzss();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzat(boolean z) {
        this.p.c(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzb(String str, String str2, @Nullable String str3) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, lj.a(str2, lj.a()), "text/html", "UTF-8", str3);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzbq(Context context) {
        this.f9360e.setBaseContext(context);
        this.Q.a(this.f9360e.a());
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zzc(boolean z, int i2) {
        this.p.a(z, i2);
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzct(String str) {
        c(str);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzdc(int i2) {
        if (i2 == 0) {
            kw1.a(this.N.a(), this.L, "aebb2");
        }
        c();
        if (this.N.a() != null) {
            this.N.a().a("close_type", String.valueOf(i2));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i2));
        hashMap.put("version", this.f9362g.f11000e);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final synchronized jh zzez(String str) {
        if (this.V == null) {
            return null;
        }
        return this.V.get(str);
    }

    @Override // com.google.android.gms.ads.internal.i
    public final synchronized void zzju() {
        if (this.f9363h != null) {
            this.f9363h.zzju();
        }
    }

    @Override // com.google.android.gms.ads.internal.i
    public final synchronized void zzjv() {
        if (this.f9363h != null) {
            this.f9363h.zzjv();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzsq() {
        if (this.K == null) {
            kw1.a(this.N.a(), this.L, "aes2");
            this.K = kw1.a(this.N.a());
            this.N.a("native:view_show", this.K);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f9362g.f11000e);
        zza("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zzsr() {
        zze zzyu = zzyu();
        if (zzyu != null) {
            zzyu.zzsr();
        }
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final Cif zzxi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final synchronized zzbbu zzxj() {
        return this.C;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final nw1 zzxk() {
        return this.L;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.fj
    public final Activity zzxl() {
        return this.f9360e.a();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final com.google.android.gms.ads.internal.b zzxm() {
        return this.f9364i;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final synchronized String zzxn() {
        return this.B;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final qw1 zzxo() {
        return this.N;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.mj
    public final zzawv zzxp() {
        return this.f9362g;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final int zzxq() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final int zzxr() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final synchronized void zzxs() {
        if (this.G != null) {
            this.G.zzqe();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzyr() {
        c();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f9362g.f11000e);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzys() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.n.h().b()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.n.h().a()));
        hashMap.put("device_volume", String.valueOf(mb.a(getContext())));
        zza("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final Context zzyt() {
        return this.f9360e.b();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized zze zzyu() {
        return this.q;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized zze zzyv() {
        return this.O;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.kj
    public final synchronized uj zzyw() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized String zzyx() {
        return this.t;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final /* synthetic */ oj zzyy() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final WebViewClient zzyz() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean zzza() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.nj
    public final t11 zzzb() {
        return this.f9361f;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized IObjectWrapper zzzc() {
        return this.r;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.ej
    public final synchronized boolean zzzd() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzze() {
        na.e("Destroying WebView!");
        j();
        wa.f10063h.post(new wi(this));
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean zzzf() {
        return this.A;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean zzzg() {
        return this.I > 0;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzh() {
        this.Q.c();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzi() {
        if (this.M == null) {
            this.M = kw1.a(this.N.a());
            this.N.a("native:view_load", this.M);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized g zzzj() {
        return this.F;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzk() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzl() {
        na.e("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized nr1 zzzm() {
        return this.H;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzn() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final qr1 zzzo() {
        return this.f9367l;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzp() {
        return ((Boolean) mu1.e().a(aw1.I3)).booleanValue() && this.f9367l != null && this.m;
    }

    private final boolean a() {
        int i2;
        int i3;
        if (!this.p.c() && !this.p.j()) {
            return false;
        }
        mu1.a();
        DisplayMetrics displayMetrics = this.f9365j;
        int b2 = gd.b(displayMetrics, displayMetrics.widthPixels);
        mu1.a();
        DisplayMetrics displayMetrics2 = this.f9365j;
        int b3 = gd.b(displayMetrics2, displayMetrics2.heightPixels);
        Activity a2 = this.f9360e.a();
        if (a2 == null || a2.getWindow() == null) {
            i2 = b2;
            i3 = b3;
        } else {
            com.google.android.gms.ads.internal.n.c();
            int[] c2 = wa.c(a2);
            mu1.a();
            int b4 = gd.b(this.f9365j, c2[0]);
            mu1.a();
            i3 = gd.b(this.f9365j, c2[1]);
            i2 = b4;
        }
        if (this.S == b2 && this.R == b3 && this.T == i2 && this.U == i3) {
            return false;
        }
        boolean z = (this.S == b2 && this.R == b3) ? false : true;
        this.S = b2;
        this.R = b3;
        this.T = i2;
        this.U = i3;
        new k6(this).a(b2, b3, i2, i3, this.f9365j.density, this.W.getDefaultDisplay().getRotation());
        return z;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzaq(boolean z) {
        boolean z2 = z != this.w;
        this.w = z;
        d();
        if (z2) {
            if (!((Boolean) mu1.e().a(aw1.O)).booleanValue() || !this.s.b()) {
                new k6(this).c(z ? "expanded" : "default");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        qd.a(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        c(sb.toString());
    }

    private final synchronized void b() {
        this.y = com.google.android.gms.ads.internal.n.g().d();
        if (this.y == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                a((Boolean) true);
            } catch (IllegalStateException unused) {
                a((Boolean) false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(jSONObject2).length());
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject2);
        sb.append(");");
        c(sb.toString());
    }

    private final void c() {
        kw1.a(this.N.a(), this.L, "aeh2");
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzb(zze zzeVar) {
        this.O = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzb(String str, o0<? super fi> o0Var) {
        ii iiVar = this.p;
        if (iiVar != null) {
            iiVar.b(str, o0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzb(final boolean z, final int i2) {
        destroy();
        this.a0.a(new js1(z, i2) { // from class: com.google.android.gms.internal.ads.vi

            /* renamed from: a, reason: collision with root package name */
            private final boolean f9933a;

            /* renamed from: b, reason: collision with root package name */
            private final int f9934b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9933a = z;
                this.f9934b = i2;
            }

            @Override // com.google.android.gms.internal.ads.js1
            public final void a(pt1 pt1Var) {
                si.a(this.f9933a, this.f9934b, pt1Var);
            }
        });
        this.a0.a(ms1.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zza(boolean z, long j2) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : ZimPlatform.REASON_0);
        hashMap.put("duration", Long.toString(j2));
        zza("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(zze zzeVar) {
        this.q = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(uj ujVar) {
        this.s = ujVar;
        requestLayout();
    }

    private final synchronized void a(String str) {
        if (!isDestroyed()) {
            loadUrl(str);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final synchronized void zza(String str, jh jhVar) {
        if (this.V == null) {
            this.V = new HashMap();
        }
        this.V.put(str, jhVar);
    }

    @TargetApi(19)
    private final synchronized void a(String str, ValueCallback<String> valueCallback) {
        if (!isDestroyed()) {
            evaluateJavascript(str, null);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(d dVar) {
        this.G = dVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(nr1 nr1Var) {
        this.H = nr1Var;
    }

    @VisibleForTesting
    private final void a(Boolean bool) {
        synchronized (this) {
            this.y = bool;
        }
        com.google.android.gms.ads.internal.n.g().a(bool);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(g gVar) {
        this.F = gVar;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final synchronized void zza(zzbbu zzbbuVar) {
        if (this.C != null) {
            qd.b("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.C = zzbbuVar;
        }
    }

    private final void a(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : ZimPlatform.REASON_0);
        zza("onAdVisibilityChanged", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(boolean z, int i2, pt1 pt1Var) {
        ws1.a m = ws1.m();
        if (m.j() != z) {
            m.a(z);
        }
        m.a(i2);
        pt1Var.f8786h = (ws1) m.s();
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(zzb zzbVar) {
        this.p.a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(boolean z, int i2, String str) {
        this.p.a(z, i2, str);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(boolean z, int i2, String str, String str2) {
        this.p.a(z, i2, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final void zza(cq1 cq1Var) {
        synchronized (this) {
            this.D = cq1Var.f6096j;
        }
        a(cq1Var.f6096j);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(String str, o0<? super fi> o0Var) {
        ii iiVar = this.p;
        if (iiVar != null) {
            iiVar.a(str, o0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(String str, com.google.android.gms.common.util.p<o0<? super fi>> pVar) {
        ii iiVar = this.p;
        if (iiVar != null) {
            iiVar.a(str, pVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(ViewGroup viewGroup, Activity activity, String str, String str2) {
        if (!zzzp()) {
            na.e("AR ad is not enabled or the ad from the server is not an AR ad.");
            return;
        }
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
        na.e("Initializing ArWebView object.");
        this.f9367l.a(activity, this);
        this.f9367l.a(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.f9367l.getView());
        } else {
            qd.b("The FrameLayout object cannot be null.");
        }
    }
}
