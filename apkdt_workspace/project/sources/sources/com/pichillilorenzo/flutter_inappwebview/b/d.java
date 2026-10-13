package com.pichillilorenzo.flutter_inappwebview.b;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebResourceResponse;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView;
import com.pichillilorenzo.flutter_inappwebview.r;
import g.a.c.a.k;
import i.b0;
import i.z;
import java.io.ByteArrayInputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;

/* compiled from: ContentBlockerHandler.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    protected List<com.pichillilorenzo.flutter_inappwebview.b.a> f16569a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContentBlockerHandler.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String[] f16570e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ InAppWebView f16571f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f16572g;

        a(d dVar, String[] strArr, InAppWebView inAppWebView, CountDownLatch countDownLatch) {
            this.f16570e = strArr;
            this.f16571f = inAppWebView;
            this.f16572g = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16570e[0] = this.f16571f.getUrl();
            this.f16572g.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContentBlockerHandler.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ InAppWebView f16573e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f16574f;

        b(d dVar, InAppWebView inAppWebView, String str) {
            this.f16573e = inAppWebView;
            this.f16574f = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 19) {
                this.f16573e.evaluateJavascript(this.f16574f, (k.d) null);
                return;
            }
            this.f16573e.loadUrl("javascript:" + this.f16574f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContentBlockerHandler.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f16575a = new int[com.pichillilorenzo.flutter_inappwebview.b.c.values().length];

        static {
            try {
                f16575a[com.pichillilorenzo.flutter_inappwebview.b.c.BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16575a[com.pichillilorenzo.flutter_inappwebview.b.c.CSS_DISPLAY_NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16575a[com.pichillilorenzo.flutter_inappwebview.b.c.MAKE_HTTPS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public List<com.pichillilorenzo.flutter_inappwebview.b.a> a() {
        return this.f16569a;
    }

    public f b(String str) {
        f fVar = f.RAW;
        if (!str.startsWith("http://") && !str.startsWith("https://")) {
            return fVar;
        }
        z.a aVar = new z.a();
        aVar.b(str);
        aVar.b();
        z a2 = aVar.a();
        b0 b0Var = null;
        try {
            b0Var = r.a().a(a2).execute();
            if (b0Var.b("content-type") == null) {
                return fVar;
            }
            String[] split = b0Var.b("content-type").split(";");
            String trim = split[0].trim();
            if (split.length > 1 && split[1].contains("charset=")) {
                split[1].replace("charset=", "").trim();
            }
            b0Var.i().close();
            b0Var.close();
            return a(trim);
        } catch (Exception e2) {
            if (b0Var != null) {
                b0Var.i().close();
                b0Var.close();
            }
            e2.printStackTrace();
            e2.getMessage();
            return fVar;
        }
    }

    public WebResourceResponse a(InAppWebView inAppWebView, String str, f fVar) {
        URI uri;
        Iterator it;
        b0 b0Var;
        ByteArrayInputStream byteArrayInputStream;
        String[] split;
        boolean z;
        boolean z2;
        WebResourceResponse webResourceResponse = null;
        if (inAppWebView.options.o == null) {
            return null;
        }
        try {
            uri = new URI(str);
        } catch (URISyntaxException unused) {
            String str2 = str.split(":")[0];
            URL url = new URL(str.replace(str2, "https"));
            uri = new URI(str2, url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        }
        String host = uri.getHost();
        int port = uri.getPort();
        String scheme = uri.getScheme();
        for (Iterator it2 = new CopyOnWriteArrayList(this.f16569a).iterator(); it2.hasNext(); it2 = it) {
            com.pichillilorenzo.flutter_inappwebview.b.a aVar = (com.pichillilorenzo.flutter_inappwebview.b.a) it2.next();
            e eVar = aVar.f16564a;
            List<f> list = eVar.f16578c;
            if (list.contains(f.IMAGE) && !list.contains(f.SVG_DOCUMENT)) {
                list.add(f.SVG_DOCUMENT);
            }
            com.pichillilorenzo.flutter_inappwebview.b.b bVar = aVar.f16565b;
            if (eVar.f16577b.matcher(str).matches()) {
                if (!list.isEmpty() && !list.contains(fVar)) {
                    return webResourceResponse;
                }
                if (!eVar.f16579d.isEmpty()) {
                    for (String str3 : eVar.f16579d) {
                        if ((str3.startsWith("*") && host.endsWith(str3.replace("*", ""))) || str3.equals(host)) {
                            z2 = true;
                            break;
                        }
                    }
                    z2 = false;
                    if (!z2) {
                        return null;
                    }
                }
                if (!eVar.f16580e.isEmpty()) {
                    for (String str4 : eVar.f16580e) {
                        if ((str4.startsWith("*") && host.endsWith(str4.replace("*", ""))) || str4.equals(host)) {
                            return null;
                        }
                    }
                }
                String[] strArr = new String[1];
                if (!eVar.f16581f.isEmpty() || !eVar.f16582g.isEmpty() || !eVar.f16583h.isEmpty()) {
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    new Handler(Looper.getMainLooper()).post(new a(this, strArr, inAppWebView, countDownLatch));
                    countDownLatch.await();
                }
                if (eVar.f16581f.isEmpty()) {
                    it = it2;
                } else {
                    URI uri2 = new URI(strArr[0]);
                    String host2 = uri2.getHost();
                    int port2 = uri2.getPort();
                    String scheme2 = uri2.getScheme();
                    it = it2;
                    if (eVar.f16581f.contains("first-party") && host2 != null && (!scheme2.equals(scheme) || !host2.equals(host) || port2 != port)) {
                        return null;
                    }
                    if (eVar.f16581f.contains("third-party") && host2 != null && host2.equals(host)) {
                        return null;
                    }
                }
                if (!eVar.f16582g.isEmpty()) {
                    Iterator<String> it3 = eVar.f16582g.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z = false;
                            break;
                        }
                        if (strArr[0].startsWith(it3.next())) {
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        return null;
                    }
                }
                if (!eVar.f16583h.isEmpty()) {
                    Iterator<String> it4 = eVar.f16583h.iterator();
                    while (it4.hasNext()) {
                        if (strArr[0].startsWith(it4.next())) {
                            return null;
                        }
                    }
                }
                int i2 = c.f16575a[bVar.f16566a.ordinal()];
                if (i2 == 1) {
                    return new WebResourceResponse("", "", null);
                }
                if (i2 != 2) {
                    if (i2 == 3) {
                        if (scheme.equals("http")) {
                            if (port == -1 || port == 80) {
                                String replace = str.replace("http://", "https://");
                                z.a aVar2 = new z.a();
                                aVar2.b(replace);
                                try {
                                    b0Var = r.a().a(aVar2.a()).execute();
                                    try {
                                        byteArrayInputStream = new ByteArrayInputStream(b0Var.i().i());
                                        split = b0Var.a("content-type", "text/plain").split(";");
                                    } catch (Exception e2) {
                                        e = e2;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    b0Var = null;
                                }
                                try {
                                    String trim = split[0].trim();
                                    String trim2 = (split.length <= 1 || !split[1].contains("charset=")) ? "utf-8" : split[1].replace("charset=", "").trim();
                                    b0Var.i().close();
                                    b0Var.close();
                                    return new WebResourceResponse(trim, trim2, byteArrayInputStream);
                                } catch (Exception e4) {
                                    e = e4;
                                    e.printStackTrace();
                                    if (b0Var != null) {
                                        b0Var.i().close();
                                        b0Var.close();
                                    }
                                    e.getMessage();
                                    webResourceResponse = null;
                                }
                            }
                        }
                    }
                    webResourceResponse = null;
                } else {
                    new Handler(Looper.getMainLooper()).post(new b(this, inAppWebView, "function hide () { document.querySelectorAll('" + bVar.f16567b + "').forEach(function (item, index) { item.style.display = \"none\"; }); }; hide(); document.addEventListener(\"DOMContentLoaded\", function(event) { hide(); });"));
                }
                webResourceResponse = null;
            } else {
                it = it2;
            }
        }
        return webResourceResponse;
    }

    public WebResourceResponse a(InAppWebView inAppWebView, String str) {
        return a(inAppWebView, str, b(str));
    }

    public WebResourceResponse a(InAppWebView inAppWebView, String str, String str2) {
        return a(inAppWebView, str, a(str2));
    }

    public f a(String str) {
        f fVar = f.RAW;
        if (str.equals("text/css")) {
            return f.STYLE_SHEET;
        }
        if (str.equals("image/svg+xml")) {
            return f.SVG_DOCUMENT;
        }
        if (str.startsWith("image/")) {
            return f.IMAGE;
        }
        if (str.startsWith("font/")) {
            return f.FONT;
        }
        if (!str.startsWith("audio/") && !str.startsWith("video/") && !str.equals("application/ogg")) {
            if (str.endsWith("javascript")) {
                return f.SCRIPT;
            }
            return str.startsWith("text/") ? f.DOCUMENT : fVar;
        }
        return f.MEDIA;
    }
}
