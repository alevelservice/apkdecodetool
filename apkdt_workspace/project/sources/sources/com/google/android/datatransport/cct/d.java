package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.alipay.mobile.security.bio.api.BioError;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.google.android.datatransport.cct.f.a;
import com.google.android.datatransport.cct.f.j;
import com.google.android.datatransport.cct.f.k;
import com.google.android.datatransport.cct.f.l;
import com.google.android.datatransport.cct.f.m;
import com.google.android.datatransport.cct.f.o;
import com.google.android.datatransport.cct.f.p;
import com.google.android.datatransport.runtime.backends.g;
import com.google.android.datatransport.runtime.backends.n;
import e.i.b.a.i.h;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CctTransportBackend.java */
/* loaded from: classes.dex */
public final class d implements n {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.firebase.m.a f4243a;

    /* renamed from: b, reason: collision with root package name */
    private final ConnectivityManager f4244b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f4245c;

    /* renamed from: d, reason: collision with root package name */
    final URL f4246d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4247e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4248f;

    /* renamed from: g, reason: collision with root package name */
    private final int f4249g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final URL f4250a;

        /* renamed from: b, reason: collision with root package name */
        final j f4251b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        final String f4252c;

        a(URL url, j jVar, @Nullable String str) {
            this.f4250a = url;
            this.f4251b = jVar;
            this.f4252c = str;
        }

        a a(URL url) {
            return new a(url, this.f4251b, this.f4252c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final int f4253a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        final URL f4254b;

        /* renamed from: c, reason: collision with root package name */
        final long f4255c;

        b(int i2, @Nullable URL url, long j2) {
            this.f4253a = i2;
            this.f4254b = url;
            this.f4255c = j2;
        }
    }

    d(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, int i2) {
        this.f4243a = j.b();
        this.f4245c = context;
        this.f4244b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f4246d = a(com.google.android.datatransport.cct.a.f4234c);
        this.f4247e = aVar2;
        this.f4248f = aVar;
        this.f4249g = i2;
    }

    private static URL a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException("Invalid url: " + str, e2);
        }
    }

    private static TelephonyManager b(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    private static int b(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.c.NONE.getValue();
        }
        return networkInfo.getType();
    }

    private static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e.i.b.a.i.u.a.a("CctTransportBackend", "Unable to find version code for package", (Throwable) e2);
            return -1;
        }
    }

    private j b(g gVar) {
        l.a a2;
        HashMap hashMap = new HashMap();
        for (h hVar : gVar.a()) {
            String f2 = hVar.f();
            if (!hashMap.containsKey(f2)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(hVar);
                hashMap.put(f2, arrayList);
            } else {
                ((List) hashMap.get(f2)).add(hVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            h hVar2 = (h) ((List) entry.getValue()).get(0);
            m.a h2 = m.h();
            h2.a(p.DEFAULT);
            h2.a(this.f4248f.a());
            h2.b(this.f4247e.a());
            k.a c2 = k.c();
            c2.a(k.b.ANDROID_FIREBASE);
            a.AbstractC0073a m = com.google.android.datatransport.cct.f.a.m();
            m.a(Integer.valueOf(hVar2.b("sdk-version")));
            m.i(hVar2.a("model"));
            m.e(hVar2.a("hardware"));
            m.c(hVar2.a("device"));
            m.k(hVar2.a("product"));
            m.j(hVar2.a("os-uild"));
            m.g(hVar2.a("manufacturer"));
            m.d(hVar2.a("fingerprint"));
            m.b(hVar2.a("country"));
            m.f(hVar2.a(ZIMFacade.KEY_LOCALE));
            m.h(hVar2.a("mcc_mnc"));
            m.a(hVar2.a("application_build"));
            c2.a(m.a());
            h2.a(c2.a());
            try {
                h2.a(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                h2.b((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (h hVar3 : (List) entry.getValue()) {
                e.i.b.a.i.g c3 = hVar3.c();
                e.i.b.a.b b2 = c3.b();
                if (b2.equals(e.i.b.a.b.a("proto"))) {
                    a2 = l.a(c3.a());
                } else if (b2.equals(e.i.b.a.b.a("json"))) {
                    a2 = l.a(new String(c3.a(), Charset.forName("UTF-8")));
                } else {
                    e.i.b.a.i.u.a.b("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b2);
                }
                a2.a(hVar3.d());
                a2.b(hVar3.g());
                a2.c(hVar3.c("tz-offset"));
                o.a c4 = o.c();
                c4.a(o.c.forNumber(hVar3.b("net-type")));
                c4.a(o.b.forNumber(hVar3.b("mobile-subtype")));
                a2.a(c4.a());
                if (hVar3.b() != null) {
                    a2.a(hVar3.b());
                }
                arrayList3.add(a2.a());
            }
            h2.a(arrayList3);
            arrayList2.add(h2.a());
        }
        return j.a(arrayList2);
    }

    @Override // com.google.android.datatransport.runtime.backends.n
    public h a(h hVar) {
        NetworkInfo activeNetworkInfo = this.f4244b.getActiveNetworkInfo();
        h.a h2 = hVar.h();
        h2.a("sdk-version", Build.VERSION.SDK_INT);
        h2.a("model", Build.MODEL);
        h2.a("hardware", Build.HARDWARE);
        h2.a("device", Build.DEVICE);
        h2.a("product", Build.PRODUCT);
        h2.a("os-uild", Build.ID);
        h2.a("manufacturer", Build.MANUFACTURER);
        h2.a("fingerprint", Build.FINGERPRINT);
        h2.a("tz-offset", a());
        h2.a("net-type", b(activeNetworkInfo));
        h2.a("mobile-subtype", a(activeNetworkInfo));
        h2.a("country", Locale.getDefault().getCountry());
        h2.a(ZIMFacade.KEY_LOCALE, Locale.getDefault().getLanguage());
        h2.a("mcc_mnc", b(this.f4245c).getSimOperator());
        h2.a("application_build", Integer.toString(a(this.f4245c)));
        return h2.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        this(context, aVar, aVar2, e.b.b.a.a.a.c.ERROR_INT);
    }

    private static int a(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.b.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return o.b.COMBINED.getValue();
        }
        if (o.b.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(a aVar) {
        e.i.b.a.i.u.a.a("CctTransportBackend", "Making request to: %s", aVar.f4250a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f4250a.openConnection();
        httpURLConnection.setConnectTimeout(e.b.b.a.a.a.c.WARN_INT);
        httpURLConnection.setReadTimeout(this.f4249g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f4252c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f4243a.a(aVar.f4251b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    e.i.b.a.i.u.a.a("CctTransportBackend", "Status Code: " + responseCode);
                    e.i.b.a.i.u.a.a("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                    e.i.b.a.i.u.a.a("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream a2 = a(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, com.google.android.datatransport.cct.f.n.a(new BufferedReader(new InputStreamReader(a2))).a());
                            if (a2 != null) {
                                a2.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th) {
                            if (a2 != null) {
                                try {
                                    a2.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th3) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable unused3) {
                    }
                    throw th3;
                }
            } catch (Throwable th4) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th4;
            }
        } catch (com.google.firebase.m.c e2) {
            e = e2;
            e.i.b.a.i.u.a.a("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(BioError.ERROR_SINGLETON_BUSY, null, 0L);
        } catch (ConnectException e3) {
            e = e3;
            e.i.b.a.i.u.a.a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e4) {
            e = e4;
            e.i.b.a.i.u.a.a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e5) {
            e = e5;
            e.i.b.a.i.u.a.a("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(BioError.ERROR_SINGLETON_BUSY, null, 0L);
        }
    }

    private static InputStream a(InputStream inputStream, String str) {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    @Override // com.google.android.datatransport.runtime.backends.n
    public com.google.android.datatransport.runtime.backends.h a(g gVar) {
        j b2 = b(gVar);
        URL url = this.f4246d;
        if (gVar.b() != null) {
            try {
                com.google.android.datatransport.cct.a a2 = com.google.android.datatransport.cct.a.a(gVar.b());
                r3 = a2.c() != null ? a2.c() : null;
                if (a2.d() != null) {
                    url = a(a2.d());
                }
            } catch (IllegalArgumentException unused) {
                return com.google.android.datatransport.runtime.backends.h.c();
            }
        }
        try {
            b bVar = (b) e.i.b.a.i.v.b.a(5, new a(url, b2, r3), com.google.android.datatransport.cct.b.a(this), c.a());
            if (bVar.f4253a == 200) {
                return com.google.android.datatransport.runtime.backends.h.a(bVar.f4255c);
            }
            if (bVar.f4253a < 500 && bVar.f4253a != 404) {
                return com.google.android.datatransport.runtime.backends.h.c();
            }
            return com.google.android.datatransport.runtime.backends.h.d();
        } catch (IOException e2) {
            e.i.b.a.i.u.a.a("CctTransportBackend", "Could not make request to the backend", (Throwable) e2);
            return com.google.android.datatransport.runtime.backends.h.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ a a(a aVar, b bVar) {
        URL url = bVar.f4254b;
        if (url == null) {
            return null;
        }
        e.i.b.a.i.u.a.a("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.f4254b);
    }

    @VisibleForTesting
    static long a() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }
}
