package com.pichillilorenzo.flutter_inappwebview;

import android.net.http.SslCertificate;
import android.os.Handler;
import android.os.Looper;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.k;
import g.a.c.a.m;
import i.w;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* compiled from: Util.java */
/* loaded from: classes2.dex */
public class r {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ g.a.c.a.k f16644e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f16645f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Object f16646g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ Map f16647h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f16648i;

        a(g.a.c.a.k kVar, String str, Object obj, Map map, CountDownLatch countDownLatch) {
            this.f16644e = kVar;
            this.f16645f = str;
            this.f16646g = obj;
            this.f16647h = map;
            this.f16648i = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16644e.a(this.f16645f, this.f16646g, new C0174a());
        }

        /* compiled from: Util.java */
        /* renamed from: com.pichillilorenzo.flutter_inappwebview.r$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0174a implements k.d {
            C0174a() {
            }

            @Override // g.a.c.a.k.d
            public void a(Object obj) {
                a.this.f16647h.put("result", obj);
                a.this.f16648i.countDown();
            }

            @Override // g.a.c.a.k.d
            public void a(String str, String str2, Object obj) {
                a.this.f16647h.put(HummerConstants.HUMMER_ERROR, "ERROR: " + str + HanziToPinyin.Token.SEPARATOR + str2);
                a.this.f16647h.put("result", obj);
                a.this.f16648i.countDown();
            }

            @Override // g.a.c.a.k.d
            public void a() {
                a.this.f16648i.countDown();
            }
        }
    }

    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    static class b implements X509TrustManager {
        b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    static class c implements HostnameVerifier {
        c() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public X509Certificate[] f16650a;

        /* renamed from: b, reason: collision with root package name */
        public PrivateKey f16651b;

        public d(PrivateKey privateKey, X509Certificate[] x509CertificateArr) {
            this.f16651b = privateKey;
            this.f16650a = x509CertificateArr;
        }
    }

    /* compiled from: Util.java */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public Object f16652a;

        /* renamed from: b, reason: collision with root package name */
        public String f16653b;

        public e(Object obj, String str) {
            this.f16652a = obj;
            this.f16653b = str;
        }
    }

    public static InputStream a(String str) {
        m.d dVar = q.f16639b;
        return q.f16638a.getResources().getAssets().open(dVar != null ? dVar.a(str) : q.f16641d.a(str));
    }

    public static String b(String str) {
        m.d dVar = q.f16639b;
        String a2 = dVar != null ? dVar.a(str) : q.f16641d.a(str);
        IOException e2 = null;
        try {
            InputStream a3 = a(str);
            if (a3 != null) {
                a3.close();
            }
        } catch (IOException e3) {
            e2 = e3;
        }
        if (e2 == null) {
            return "file:///android_asset/" + a2;
        }
        throw e2;
    }

    public static e a(g.a.c.a.k kVar, String str, Object obj) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        HashMap hashMap = new HashMap();
        hashMap.put("result", null);
        hashMap.put(HummerConstants.HUMMER_ERROR, null);
        new Handler(Looper.getMainLooper()).post(new a(kVar, str, obj, hashMap, countDownLatch));
        countDownLatch.await();
        return new e(hashMap.get("result"), (String) hashMap.get(HummerConstants.HUMMER_ERROR));
    }

    public static d a(String str, String str2, String str3) {
        try {
            InputStream a2 = a(str);
            KeyStore keyStore = KeyStore.getInstance(str3);
            keyStore.load(a2, str2 != null ? str2.toCharArray() : null);
            String nextElement = keyStore.aliases().nextElement();
            Key key = keyStore.getKey(nextElement, str2.toCharArray());
            r0 = key instanceof PrivateKey ? new d((PrivateKey) key, new X509Certificate[]{(X509Certificate) keyStore.getCertificate(nextElement)}) : null;
            a2.close();
        } catch (Exception e2) {
            e2.printStackTrace();
            e2.getMessage();
        }
        return r0;
    }

    public static w a() {
        try {
            TrustManager[] trustManagerArr = {new b()};
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            w.b bVar = new w.b();
            bVar.a(socketFactory, (X509TrustManager) trustManagerArr[0]);
            bVar.a(new c());
            bVar.b(15L, TimeUnit.SECONDS);
            bVar.d(15L, TimeUnit.SECONDS);
            bVar.c(15L, TimeUnit.SECONDS);
            return bVar.a();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static X509Certificate a(SslCertificate sslCertificate) {
        byte[] byteArray = SslCertificate.saveState(sslCertificate).getByteArray("x509-certificate");
        if (byteArray != null) {
            try {
            } catch (CertificateException unused) {
                return null;
            }
        }
        return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(byteArray));
    }
}
