package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.ValueCallback;
import android.webkit.WebViewClient;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class zzbdh extends ek implements jk {

    /* renamed from: e, reason: collision with root package name */
    private final hk f11040e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f11041f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f11042g;

    public zzbdh(Context context, hk hkVar) {
        super(context);
        com.google.android.gms.ads.internal.n.g().f();
        this.f11040e = hkVar;
        super.setWebViewClient(hkVar);
    }

    private final synchronized void a() {
        if (!this.f11042g) {
            this.f11042g = true;
            com.google.android.gms.ads.internal.n.g().g();
        }
    }

    @Override // com.google.android.gms.internal.ads.ek, android.webkit.WebView
    public /* bridge */ /* synthetic */ void addJavascriptInterface(Object obj, String str) {
        super.addJavascriptInterface(obj, str);
    }

    @Override // android.webkit.WebView
    public synchronized void destroy() {
        if (this.f11041f) {
            return;
        }
        this.f11041f = true;
        this.f11040e.a(this);
        zzaw(false);
        na.e("Initiating WebView self destruct sequence in 3...");
        na.e("Loading blank page in WebView, 2...");
        try {
            super.loadUrl("about:blank");
        } catch (UnsatisfiedLinkError e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "AdWebViewImpl.loadUrlUnsafe");
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (isDestroyed()) {
            qd.d("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    protected void finalize() {
        try {
            synchronized (this) {
                if (!isDestroyed()) {
                    zzaw(true);
                }
                a();
            }
        } finally {
            super.finalize();
        }
    }

    public final synchronized boolean isDestroyed() {
        return this.f11041f;
    }

    @Override // android.webkit.WebView
    public synchronized void loadData(String str, String str2, String str3) {
        if (!isDestroyed()) {
            super.loadData(str, str2, str3);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView
    public synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ek, android.webkit.WebView
    public synchronized void loadUrl(String str) {
        if (!isDestroyed()) {
            super.loadUrl(str);
        } else {
            qd.d("#004 The webview is destroyed. Ignoring action.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    public void onDraw(Canvas canvas) {
        if (isDestroyed()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public void onPause() {
        if (isDestroyed()) {
            return;
        }
        super.onPause();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.fi
    public void onResume() {
        if (isDestroyed()) {
            return;
        }
        super.onResume();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !isDestroyed() && super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        super.stopLoading();
    }

    @Override // com.google.android.gms.internal.ads.jk
    public final synchronized void zza(gk gkVar) {
        na.e("Blank page loaded, 1...");
        zzze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzaau() {
        super.destroy();
    }

    @GuardedBy("this")
    protected void zzaw(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.ek, com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.r2
    public /* bridge */ /* synthetic */ void zzct(String str) {
        super.zzct(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public synchronized void zzze() {
        na.e("Destroying WebView!");
        a();
        yd.f10543d.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ik

            /* renamed from: e, reason: collision with root package name */
            private final zzbdh f7318e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7318e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7318e.zzaau();
            }
        });
    }
}
