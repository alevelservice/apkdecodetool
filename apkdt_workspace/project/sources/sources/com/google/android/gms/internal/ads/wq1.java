package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
@TargetApi(14)
/* loaded from: classes.dex */
public final class wq1 extends Thread {

    /* renamed from: e, reason: collision with root package name */
    private boolean f10173e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f10174f;

    /* renamed from: g, reason: collision with root package name */
    private final Object f10175g;

    /* renamed from: h, reason: collision with root package name */
    private final oq1 f10176h;

    /* renamed from: i, reason: collision with root package name */
    private final int f10177i;

    /* renamed from: j, reason: collision with root package name */
    private final int f10178j;

    /* renamed from: k, reason: collision with root package name */
    private final int f10179k;

    /* renamed from: l, reason: collision with root package name */
    private final int f10180l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final String q;
    private final boolean r;
    private final boolean s;
    private final boolean t;

    public wq1() {
        this(new oq1());
    }

    @VisibleForTesting
    private static boolean e() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            Context b2 = com.google.android.gms.ads.internal.n.f().b();
            if (b2 == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) b2.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) b2.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return false;
                    }
                    PowerManager powerManager = (PowerManager) b2.getSystemService("power");
                    return powerManager == null ? false : powerManager.isScreenOn();
                }
            }
            return false;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.g().a(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    private final void f() {
        synchronized (this.f10175g) {
            this.f10174f = true;
            boolean z = this.f10174f;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(z);
            qd.a(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void a(View view) {
        try {
            pq1 pq1Var = new pq1(this.f10178j, this.f10179k, this.f10180l, this.m, this.n, this.o, this.p, this.s);
            Context b2 = com.google.android.gms.ads.internal.n.f().b();
            if (b2 != null && !TextUtils.isEmpty(this.q)) {
                String str = (String) view.getTag(b2.getResources().getIdentifier((String) mu1.e().a(aw1.c0), "id", b2.getPackageName()));
                if (str != null && str.equals(this.q)) {
                    return;
                }
            }
            ar1 a2 = a(view, pq1Var);
            pq1Var.j();
            if (a2.f5654a == 0 && a2.f5655b == 0) {
                return;
            }
            if (a2.f5655b == 0 && pq1Var.k() == 0) {
                return;
            }
            if (a2.f5655b == 0 && this.f10176h.a(pq1Var)) {
                return;
            }
            this.f10176h.c(pq1Var);
        } catch (Exception e2) {
            qd.b("Exception in fetchContentOnUIThread", e2);
            com.google.android.gms.ads.internal.n.g().a(e2, "ContentFetchTask.fetchContent");
        }
    }

    public final void b() {
        synchronized (this.f10175g) {
            if (this.f10173e) {
                qd.a("Content hash thread already started, quiting...");
            } else {
                this.f10173e = true;
                start();
            }
        }
    }

    public final pq1 c() {
        return this.f10176h.a(this.t);
    }

    public final boolean d() {
        return this.f10174f;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                if (e()) {
                    Activity a2 = com.google.android.gms.ads.internal.n.f().a();
                    if (a2 == null) {
                        qd.a("ContentFetchThread: no activity. Sleeping.");
                        f();
                    } else if (a2 != null) {
                        View view = null;
                        try {
                            if (a2.getWindow() != null && a2.getWindow().getDecorView() != null) {
                                view = a2.getWindow().getDecorView().findViewById(R.id.content);
                            }
                        } catch (Exception e2) {
                            com.google.android.gms.ads.internal.n.g().a(e2, "ContentFetchTask.extractContent");
                            qd.a("Failed getting root view of activity. Content not extracted.");
                        }
                        if (view != null && view != null) {
                            view.post(new vq1(this, view));
                        }
                    }
                } else {
                    qd.a("ContentFetchTask: sleeping");
                    f();
                }
                Thread.sleep(this.f10177i * 1000);
            } catch (InterruptedException e3) {
                qd.b("Error in ContentFetchTask", e3);
            } catch (Exception e4) {
                qd.b("Error in ContentFetchTask", e4);
                com.google.android.gms.ads.internal.n.g().a(e4, "ContentFetchTask.run");
            }
            synchronized (this.f10175g) {
                while (this.f10174f) {
                    try {
                        qd.a("ContentFetchTask: waiting");
                        this.f10175g.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    @VisibleForTesting
    private wq1(oq1 oq1Var) {
        this.f10173e = false;
        this.f10174f = false;
        this.f10176h = oq1Var;
        this.f10175g = new Object();
        this.f10178j = ((Integer) mu1.e().a(aw1.U)).intValue();
        this.f10179k = ((Integer) mu1.e().a(aw1.V)).intValue();
        this.f10180l = ((Integer) mu1.e().a(aw1.W)).intValue();
        this.m = ((Integer) mu1.e().a(aw1.X)).intValue();
        this.n = ((Integer) mu1.e().a(aw1.Z)).intValue();
        this.o = ((Integer) mu1.e().a(aw1.a0)).intValue();
        this.p = ((Integer) mu1.e().a(aw1.b0)).intValue();
        this.f10177i = ((Integer) mu1.e().a(aw1.Y)).intValue();
        this.q = (String) mu1.e().a(aw1.d0);
        this.r = ((Boolean) mu1.e().a(aw1.e0)).booleanValue();
        this.s = ((Boolean) mu1.e().a(aw1.f0)).booleanValue();
        this.t = ((Boolean) mu1.e().a(aw1.g0)).booleanValue();
        setName("ContentFetchTask");
    }

    @VisibleForTesting
    private final ar1 a(@Nullable View view, pq1 pq1Var) {
        boolean z;
        if (view == null) {
            return new ar1(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (!TextUtils.isEmpty(text)) {
                pq1Var.b(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                return new ar1(this, 1, 0);
            }
            return new ar1(this, 0, 0);
        }
        if ((view instanceof WebView) && !(view instanceof fi)) {
            WebView webView = (WebView) view;
            if (com.google.android.gms.common.util.o.f()) {
                pq1Var.h();
                webView.post(new yq1(this, pq1Var, webView, globalVisibleRect));
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return new ar1(this, 0, 1);
            }
            return new ar1(this, 0, 0);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                ar1 a2 = a(viewGroup.getChildAt(i4), pq1Var);
                i2 += a2.f5654a;
                i3 += a2.f5655b;
            }
            return new ar1(this, i2, i3);
        }
        return new ar1(this, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void a(pq1 pq1Var, WebView webView, String str, boolean z) {
        pq1Var.g();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (!this.r && !TextUtils.isEmpty(webView.getTitle())) {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    pq1Var.a(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    pq1Var.a(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (pq1Var.b()) {
                this.f10176h.b(pq1Var);
            }
        } catch (JSONException unused) {
            qd.a("Json string may be malformed.");
        } catch (Throwable th) {
            qd.a("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.n.g().a(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void a() {
        synchronized (this.f10175g) {
            this.f10174f = false;
            this.f10175g.notifyAll();
            qd.a("ContentFetchThread: wakeup");
        }
    }
}
