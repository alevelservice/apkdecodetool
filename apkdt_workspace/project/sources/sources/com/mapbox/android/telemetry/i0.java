package com.mapbox.android.telemetry;

import android.content.Context;
import i.s;
import i.w;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelemetryClientSettings.java */
/* loaded from: classes2.dex */
public class i0 {

    /* renamed from: i, reason: collision with root package name */
    private static final Map<o, String> f15593i = new a();

    /* renamed from: a, reason: collision with root package name */
    private final Context f15594a;

    /* renamed from: b, reason: collision with root package name */
    private o f15595b;

    /* renamed from: c, reason: collision with root package name */
    private final i.w f15596c;

    /* renamed from: d, reason: collision with root package name */
    private final i.s f15597d;

    /* renamed from: e, reason: collision with root package name */
    private final SSLSocketFactory f15598e;

    /* renamed from: f, reason: collision with root package name */
    private final X509TrustManager f15599f;

    /* renamed from: g, reason: collision with root package name */
    private final HostnameVerifier f15600g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f15601h;

    /* compiled from: TelemetryClientSettings.java */
    /* loaded from: classes2.dex */
    static class a extends HashMap<o, String> {
        a() {
            put(o.STAGING, "api-events-staging.tilestream.net");
            put(o.COM, "events.mapbox.com");
            put(o.CHINA, "events.mapbox.cn");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TelemetryClientSettings.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        Context f15602a;

        /* renamed from: b, reason: collision with root package name */
        o f15603b = o.COM;

        /* renamed from: c, reason: collision with root package name */
        i.w f15604c = new i.w();

        /* renamed from: d, reason: collision with root package name */
        i.s f15605d = null;

        /* renamed from: e, reason: collision with root package name */
        SSLSocketFactory f15606e = null;

        /* renamed from: f, reason: collision with root package name */
        X509TrustManager f15607f = null;

        /* renamed from: g, reason: collision with root package name */
        HostnameVerifier f15608g = null;

        /* renamed from: h, reason: collision with root package name */
        boolean f15609h = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Context context) {
            this.f15602a = context;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b a(o oVar) {
            this.f15603b = oVar;
            return this;
        }

        b a(i.w wVar) {
            if (wVar != null) {
                this.f15604c = wVar;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b a(i.s sVar) {
            if (sVar != null) {
                this.f15605d = sVar;
            }
            return this;
        }

        b a(SSLSocketFactory sSLSocketFactory) {
            this.f15606e = sSLSocketFactory;
            return this;
        }

        b a(X509TrustManager x509TrustManager) {
            this.f15607f = x509TrustManager;
            return this;
        }

        b a(HostnameVerifier hostnameVerifier) {
            this.f15608g = hostnameVerifier;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b a(boolean z) {
            this.f15609h = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public i0 a() {
            if (this.f15605d == null) {
                this.f15605d = i0.a((String) i0.f15593i.get(this.f15603b));
            }
            return new i0(this);
        }
    }

    i0(b bVar) {
        this.f15594a = bVar.f15602a;
        this.f15595b = bVar.f15603b;
        this.f15596c = bVar.f15604c;
        this.f15597d = bVar.f15605d;
        this.f15598e = bVar.f15606e;
        this.f15599f = bVar.f15607f;
        this.f15600g = bVar.f15608g;
        this.f15601h = bVar.f15609h;
    }

    private boolean a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
        return (sSLSocketFactory == null || x509TrustManager == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i.w a(e eVar, int i2) {
        return a(eVar, new i.t[]{new v()});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o b() {
        return this.f15595b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f15601h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b d() {
        b bVar = new b(this.f15594a);
        bVar.a(this.f15595b);
        bVar.a(this.f15596c);
        bVar.a(this.f15597d);
        bVar.a(this.f15598e);
        bVar.a(this.f15599f);
        bVar.a(this.f15600g);
        bVar.a(this.f15601h);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i.w a(e eVar) {
        return a(eVar, (i.t[]) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i.s a() {
        return this.f15597d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.s a(String str) {
        s.a aVar = new s.a();
        aVar.e("https");
        aVar.c(str);
        return aVar.a();
    }

    private i.w a(e eVar, i.t[] tVarArr) {
        f fVar = new f();
        w.b D = this.f15596c.D();
        D.a(true);
        D.a(fVar.a(this.f15595b, eVar));
        D.a(Arrays.asList(i.k.f18740g, i.k.f18741h));
        if (tVarArr != null) {
            for (i.t tVar : tVarArr) {
                D.a(tVar);
            }
        }
        if (a(this.f15598e, this.f15599f)) {
            D.a(this.f15598e, this.f15599f);
            D.a(this.f15600g);
        }
        return D.a();
    }
}
