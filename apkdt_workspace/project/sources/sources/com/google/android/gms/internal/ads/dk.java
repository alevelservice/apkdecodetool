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
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
final class dk extends zzbdh implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, y1, fi {

    @GuardedBy("this")
    private zzbbu A;

    @GuardedBy("this")
    private boolean B;

    @GuardedBy("this")
    private boolean C;

    @GuardedBy("this")
    private g D;

    @GuardedBy("this")
    private d E;

    @GuardedBy("this")
    private nr1 F;

    @GuardedBy("this")
    private int G;

    @GuardedBy("this")
    private int H;
    private nw1 I;
    private nw1 J;
    private nw1 K;
    private qw1 L;

    @GuardedBy("this")
    private zze M;
    private hd N;
    private final AtomicReference<IObjectWrapper> O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private Map<String, jh> T;
    private final WindowManager U;

    /* renamed from: h, reason: collision with root package name */
    private final sj f6233h;

    /* renamed from: i, reason: collision with root package name */
    private final tj f6234i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private final t11 f6235j;

    /* renamed from: k, reason: collision with root package name */
    private final zzawv f6236k;

    /* renamed from: l, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.i f6237l;
    private final com.google.android.gms.ads.internal.b m;
    private final DisplayMetrics n;
    private final ks1 o;

    @Nullable
    private final qr1 p;
    private final boolean q;

    @GuardedBy("this")
    private zze r;

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
    private int x;

    @GuardedBy("this")
    private boolean y;

    @GuardedBy("this")
    private String z;

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public dk(sj sjVar, tj tjVar, uj ujVar, String str, boolean z, boolean z2, @Nullable t11 t11Var, zzawv zzawvVar, pw1 pw1Var, com.google.android.gms.ads.internal.i iVar, com.google.android.gms.ads.internal.b bVar, ks1 ks1Var, qr1 qr1Var, boolean z3) {
        super(sjVar, tjVar);
        this.y = true;
        this.z = "";
        this.O = new AtomicReference<>();
        this.P = -1;
        this.Q = -1;
        this.R = -1;
        this.S = -1;
        this.f6233h = sjVar;
        this.f6234i = tjVar;
        this.s = ujVar;
        this.t = str;
        this.v = z;
        this.x = -1;
        this.f6235j = t11Var;
        this.f6236k = zzawvVar;
        this.f6237l = iVar;
        this.m = bVar;
        this.U = (WindowManager) getContext().getSystemService("window");
        com.google.android.gms.ads.internal.n.c();
        this.n = wa.a(this.U);
        this.o = ks1Var;
        this.p = qr1Var;
        this.q = z3;
        this.N = new hd(this.f6233h.a(), this, this, null);
        com.google.android.gms.ads.internal.n.c().a(sjVar, zzawvVar.f11000e, getSettings());
        setDownloadListener(this);
        c();
        if (com.google.android.gms.common.util.o.d()) {
            addJavascriptInterface(aj.a(this), "googleAdsJsInterface");
        }
        g();
        this.L = new qw1(new pw1(true, "make_wv", this.t));
        this.L.a().a(pw1Var);
        this.J = kw1.a(this.L.a());
        this.L.a("native:view_create", this.J);
        this.K = null;
        this.I = null;
        com.google.android.gms.ads.internal.n.e().b(sjVar);
    }

    private final boolean a() {
        int i2;
        int i3;
        if (!this.f6234i.c() && !this.f6234i.j()) {
            return false;
        }
        mu1.a();
        DisplayMetrics displayMetrics = this.n;
        int b2 = gd.b(displayMetrics, displayMetrics.widthPixels);
        mu1.a();
        DisplayMetrics displayMetrics2 = this.n;
        int b3 = gd.b(displayMetrics2, displayMetrics2.heightPixels);
        Activity a2 = this.f6233h.a();
        if (a2 == null || a2.getWindow() == null) {
            i2 = b2;
            i3 = b3;
        } else {
            com.google.android.gms.ads.internal.n.c();
            int[] c2 = wa.c(a2);
            mu1.a();
            int b4 = gd.b(this.n, c2[0]);
            mu1.a();
            i3 = gd.b(this.n, c2[1]);
            i2 = b4;
        }
        if (this.Q == b2 && this.P == b3 && this.R == i2 && this.S == i3) {
            return false;
        }
        boolean z = (this.Q == b2 && this.P == b3) ? false : true;
        this.Q = b2;
        this.P = b3;
        this.R = i2;
        this.S = i3;
        new k6(this).a(b2, b3, i2, i3, this.n.density, this.U.getDefaultDisplay().getRotation());
        return z;
    }

    private final void b() {
        kw1.a(this.L.a(), this.J, "aeh2");
    }

    private final synchronized void c() {
        if (!this.v && !this.s.b()) {
            if (Build.VERSION.SDK_INT < 18) {
                qd.a("Disabling hardware acceleration on an AdView.");
                d();
                return;
            } else {
                qd.a("Enabling hardware acceleration on an AdView.");
                e();
                return;
            }
        }
        qd.a("Enabling hardware acceleration on an overlay.");
        e();
    }

    private final synchronized void d() {
        if (!this.w) {
            com.google.android.gms.ads.internal.n.e();
            setLayerType(1, null);
        }
        this.w = true;
    }

    private final synchronized void e() {
        if (this.w) {
            com.google.android.gms.ads.internal.n.e();
            setLayerType(0, null);
        }
        this.w = false;
    }

    private final synchronized void f() {
        if (this.T != null) {
            Iterator<jh> it = this.T.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
        this.T = null;
    }

    private final void g() {
        pw1 a2;
        qw1 qw1Var = this.L;
        if (qw1Var == null || (a2 = qw1Var.a()) == null || com.google.android.gms.ads.internal.n.g().c() == null) {
            return;
        }
        com.google.android.gms.ads.internal.n.g().c().a(a2);
    }

    @Override // com.google.android.gms.internal.ads.y1
    public final void a(String str, String str2) {
        b2.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.pj
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final WebView getWebView() {
        return this;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.N.a();
        }
        boolean z = this.B;
        if (this.f6234i != null && this.f6234i.j()) {
            if (!this.C) {
                this.f6234i.k();
                this.f6234i.l();
                this.C = true;
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
                this.N.b();
            }
            super.onDetachedFromWindow();
            if (this.C && this.f6234i != null && this.f6234i.j() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.f6234i.k();
                this.f6234i.l();
                this.C = false;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbdh, android.webkit.WebView, android.view.View
    @TargetApi(21)
    public final void onDraw(Canvas canvas) {
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

    /* JADX WARN: Removed duplicated region for block: B:100:0x01d8 A[Catch: all -> 0x01f3, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:21:0x002e, B:23:0x0036, B:25:0x0048, B:28:0x004d, B:30:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:40:0x0084, B:45:0x0080, B:47:0x0091, B:49:0x0099, B:51:0x00ab, B:54:0x00b2, B:56:0x00ca, B:57:0x00d9, B:60:0x00d5, B:61:0x00de, B:64:0x00e3, B:66:0x00eb, B:69:0x00f8, B:76:0x011e, B:78:0x0125, B:82:0x012f, B:84:0x0141, B:86:0x0155, B:94:0x0172, B:96:0x01cf, B:97:0x01d3, B:100:0x01d8, B:102:0x01de, B:103:0x01e1, B:109:0x01ee), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0141 A[Catch: all -> 0x01f3, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:21:0x002e, B:23:0x0036, B:25:0x0048, B:28:0x004d, B:30:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:40:0x0084, B:45:0x0080, B:47:0x0091, B:49:0x0099, B:51:0x00ab, B:54:0x00b2, B:56:0x00ca, B:57:0x00d9, B:60:0x00d5, B:61:0x00de, B:64:0x00e3, B:66:0x00eb, B:69:0x00f8, B:76:0x011e, B:78:0x0125, B:82:0x012f, B:84:0x0141, B:86:0x0155, B:94:0x0172, B:96:0x01cf, B:97:0x01d3, B:100:0x01d8, B:102:0x01de, B:103:0x01e1, B:109:0x01ee), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0172 A[Catch: all -> 0x01f3, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:21:0x002e, B:23:0x0036, B:25:0x0048, B:28:0x004d, B:30:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0076, B:40:0x0084, B:45:0x0080, B:47:0x0091, B:49:0x0099, B:51:0x00ab, B:54:0x00b2, B:56:0x00ca, B:57:0x00d9, B:60:0x00d5, B:61:0x00de, B:64:0x00e3, B:66:0x00eb, B:69:0x00f8, B:76:0x011e, B:78:0x0125, B:82:0x012f, B:84:0x0141, B:86:0x0155, B:94:0x0172, B:96:0x01cf, B:97:0x01d3, B:100:0x01d8, B:102:0x01de, B:103:0x01e1, B:109:0x01ee), top: B:2:0x0001 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dk.onMeasure(int, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbdh, android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception e2) {
            qd.b("Could not pause webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdh, android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception e2) {
            qd.b("Could not resume webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdh, android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f6234i.j()) {
            synchronized (this) {
                if (this.D != null) {
                    this.D.a(motionEvent);
                }
            }
        } else {
            t11 t11Var = this.f6235j;
            if (t11Var != null) {
                t11Var.a(motionEvent);
            }
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
        this.x = i2;
        if (this.r != null) {
            this.r.setRequestedOrientation(this.x);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdh, android.webkit.WebView
    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Exception e2) {
            qd.b("Could not stop loading webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, Map map) {
        b2.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.p1
    public final void zza(String str, JSONObject jSONObject) {
        b2.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zza(boolean z, long j2) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", z ? "1" : ZimPlatform.REASON_0);
        hashMap.put("duration", Long.toString(j2));
        b2.a(this, "onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzae(boolean z) {
        if (this.r != null) {
            this.r.zza(this.f6234i.c(), z);
        } else {
            this.u = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final void zzao(boolean z) {
        this.f6234i.b(z);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzaq(IObjectWrapper iObjectWrapper) {
        this.O.set(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzar(boolean z) {
        this.y = z;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzas(boolean z) {
        this.G += z ? 1 : -1;
        if (this.G <= 0 && this.r != null) {
            this.r.zzss();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzat(boolean z) {
        this.f6234i.c(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdh
    protected final synchronized void zzaw(boolean z) {
        if (!z) {
            g();
            this.N.d();
            if (this.r != null) {
                this.r.close();
                this.r.onDestroy();
                this.r = null;
            }
        }
        this.O.set(null);
        this.f6234i.i();
        com.google.android.gms.ads.internal.n.y();
        gh.a(this);
        f();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzb(String str, String str2, @Nullable String str3) {
        super.loadDataWithBaseURL(str, lj.a(str2, lj.a()), "text/html", "UTF-8", str3);
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzb(String str, JSONObject jSONObject) {
        b2.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzbq(Context context) {
        this.f6233h.setBaseContext(context);
        this.N.a(this.f6233h.a());
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zzc(boolean z, int i2) {
        this.f6234i.a(z, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbdh, com.google.android.gms.internal.ads.ek, com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.r2
    public final synchronized void zzct(String str) {
        if (!isDestroyed()) {
            super.zzct(str);
        } else {
            qd.d("The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzdc(int i2) {
        if (i2 == 0) {
            kw1.a(this.L.a(), this.J, "aebb2");
        }
        b();
        if (this.L.a() != null) {
            this.L.a().a("close_type", String.valueOf(i2));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i2));
        hashMap.put("version", this.f6236k.f11000e);
        b2.a(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final synchronized jh zzez(String str) {
        if (this.T == null) {
            return null;
        }
        return this.T.get(str);
    }

    @Override // com.google.android.gms.ads.internal.i
    public final synchronized void zzju() {
        if (this.f6237l != null) {
            this.f6237l.zzju();
        }
    }

    @Override // com.google.android.gms.ads.internal.i
    public final synchronized void zzjv() {
        if (this.f6237l != null) {
            this.f6237l.zzjv();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzsq() {
        if (this.I == null) {
            kw1.a(this.L.a(), this.J, "aes2");
            this.I = kw1.a(this.L.a());
            this.L.a("native:view_show", this.I);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f6236k.f11000e);
        b2.a(this, "onshow", hashMap);
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
        return this.A;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final nw1 zzxk() {
        return this.J;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.fj
    public final Activity zzxl() {
        return this.f6233h.a();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final com.google.android.gms.ads.internal.b zzxm() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final synchronized String zzxn() {
        return this.z;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final qw1 zzxo() {
        return this.L;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf, com.google.android.gms.internal.ads.mj
    public final zzawv zzxp() {
        return this.f6236k;
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
        if (this.E != null) {
            this.E.zzqe();
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzyr() {
        b();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f6236k.f11000e);
        b2.a(this, "onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzys() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.n.h().b()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.n.h().a()));
        hashMap.put("device_volume", String.valueOf(mb.a(getContext())));
        b2.a(this, "volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final Context zzyt() {
        return this.f6233h.b();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized zze zzyu() {
        return this.r;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized zze zzyv() {
        return this.M;
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
        return this.f6234i;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final WebViewClient zzyz() {
        return this.f6234i;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean zzza() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.nj
    public final t11 zzzb() {
        return this.f6235j;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final IObjectWrapper zzzc() {
        return this.O.get();
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.ej
    public final synchronized boolean zzzd() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zzbdh, com.google.android.gms.internal.ads.fi
    public final void zzze() {
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean zzzf() {
        return this.y;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized boolean zzzg() {
        return this.G > 0;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzh() {
        this.N.c();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzzi() {
        if (this.K == null) {
            this.K = kw1.a(this.L.a());
            this.L.a("native:view_load", this.K);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized g zzzj() {
        return this.D;
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
        return this.F;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzn() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final qr1 zzzo() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzzp() {
        return ((Boolean) mu1.e().a(aw1.I3)).booleanValue() && this.p != null && this.q;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzaq(boolean z) {
        boolean z2 = z != this.v;
        this.v = z;
        c();
        if (z2) {
            if (!((Boolean) mu1.e().a(aw1.O)).booleanValue() || !this.s.b()) {
                new k6(this).c(z ? "expanded" : "default");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zzb(zze zzeVar) {
        this.M = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(zze zzeVar) {
        this.r = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zzb(String str, o0<? super fi> o0Var) {
        tj tjVar = this.f6234i;
        if (tjVar != null) {
            tjVar.b(str, o0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(uj ujVar) {
        this.s = ujVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final boolean zzb(final boolean z, final int i2) {
        destroy();
        this.o.a(new js1(z, i2) { // from class: com.google.android.gms.internal.ads.ck

            /* renamed from: a, reason: collision with root package name */
            private final boolean f6043a;

            /* renamed from: b, reason: collision with root package name */
            private final int f6044b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6043a = z;
                this.f6044b = i2;
            }

            @Override // com.google.android.gms.internal.ads.js1
            public final void a(pt1 pt1Var) {
                dk.a(this.f6043a, this.f6044b, pt1Var);
            }
        });
        this.o.a(ms1.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final synchronized void zza(String str, jh jhVar) {
        if (this.T == null) {
            this.T = new HashMap();
        }
        this.T.put(str, jhVar);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(g gVar) {
        this.D = gVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(d dVar) {
        this.E = dVar;
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final synchronized void zza(nr1 nr1Var) {
        this.F = nr1Var;
    }

    @Override // com.google.android.gms.internal.ads.fi, com.google.android.gms.internal.ads.tf
    public final synchronized void zza(zzbbu zzbbuVar) {
        if (this.A != null) {
            qd.b("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.A = zzbbuVar;
        }
    }

    private final void a(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : ZimPlatform.REASON_0);
        b2.a(this, "onAdVisibilityChanged", hashMap);
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
        this.f6234i.a(zzbVar);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(boolean z, int i2, String str) {
        this.f6234i.a(z, i2, str);
    }

    @Override // com.google.android.gms.internal.ads.ij
    public final void zza(boolean z, int i2, String str, String str2) {
        this.f6234i.a(z, i2, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final void zza(cq1 cq1Var) {
        synchronized (this) {
            this.B = cq1Var.f6096j;
        }
        a(cq1Var.f6096j);
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(String str, o0<? super fi> o0Var) {
        tj tjVar = this.f6234i;
        if (tjVar != null) {
            tjVar.a(str, o0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.fi
    public final void zza(String str, com.google.android.gms.common.util.p<o0<? super fi>> pVar) {
        tj tjVar = this.f6234i;
        if (tjVar != null) {
            tjVar.a(str, pVar);
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
        this.p.a(activity, this);
        this.p.a(str, str2);
        if (viewGroup != null) {
            viewGroup.addView(this.p.getView());
        } else {
            qd.b("The FrameLayout object cannot be null.");
        }
    }
}
