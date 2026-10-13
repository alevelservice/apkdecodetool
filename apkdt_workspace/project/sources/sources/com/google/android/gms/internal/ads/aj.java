package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.internal.ads.fj;
import com.google.android.gms.internal.ads.nj;
import com.google.android.gms.internal.ads.pj;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(17)
/* loaded from: classes.dex */
public final class aj<WebViewT extends fj & nj & pj> {

    /* renamed from: a, reason: collision with root package name */
    private final cj f5578a;

    /* renamed from: b, reason: collision with root package name */
    private final WebViewT f5579b;

    private aj(WebViewT webviewt, cj cjVar) {
        this.f5578a = cjVar;
        this.f5579b = webviewt;
    }

    public static aj<fi> a(final fi fiVar) {
        return new aj<>(fiVar, new cj(fiVar) { // from class: com.google.android.gms.internal.ads.zi

            /* renamed from: a, reason: collision with root package name */
            private final fi f10749a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10749a = fiVar;
            }

            @Override // com.google.android.gms.internal.ads.cj
            public final void a(Uri uri) {
                oj zzyy = this.f10749a.zzyy();
                if (zzyy == null) {
                    qd.b("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    zzyy.a(uri);
                }
            }
        });
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            na.e("Click string is empty, not proceeding.");
            return "";
        }
        t11 zzzb = this.f5579b.zzzb();
        if (zzzb == null) {
            na.e("Signal utils is empty, ignoring.");
            return "";
        }
        cz0 a2 = zzzb.a();
        if (a2 == null) {
            na.e("Signals object is empty, ignoring.");
            return "";
        }
        if (this.f5579b.getContext() == null) {
            na.e("Context is null, ignoring.");
            return "";
        }
        return a2.a(this.f5579b.getContext(), str, this.f5579b.getView(), this.f5579b.zzxl());
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            qd.d("URL is empty, ignoring message");
        } else {
            wa.f10063h.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.dj

                /* renamed from: e, reason: collision with root package name */
                private final aj f6228e;

                /* renamed from: f, reason: collision with root package name */
                private final String f6229f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6228e = this;
                    this.f6229f = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6228e.a(this.f6229f);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str) {
        this.f5578a.a(Uri.parse(str));
    }
}
