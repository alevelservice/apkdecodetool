package com.google.firebase.installations.r;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.j;
import com.google.firebase.installations.h;
import com.google.firebase.installations.r.d;
import com.google.firebase.installations.r.f;
import com.google.firebase.o.f;
import com.google.firebase.r.i;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FirebaseInstallationServiceClient.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f15120e = Pattern.compile("[0-9]+s");

    /* renamed from: f, reason: collision with root package name */
    private static final Charset f15121f = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    private final Context f15122a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.p.b<i> f15123b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.firebase.p.b<com.google.firebase.o.f> f15124c;

    /* renamed from: d, reason: collision with root package name */
    private final e f15125d = new e();

    public c(@NonNull Context context, @NonNull com.google.firebase.p.b<i> bVar, @NonNull com.google.firebase.p.b<com.google.firebase.o.f> bVar2) {
        this.f15122a = context;
        this.f15123b = bVar;
        this.f15124c = bVar2;
    }

    private static boolean a(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    private String b() {
        try {
            byte[] a2 = com.google.android.gms.common.util.a.a(this.f15122a, this.f15122a.getPackageName());
            if (a2 == null) {
                String str = "Could not get fingerprint hash for package: " + this.f15122a.getPackageName();
                return null;
            }
            return j.a(a2, false);
        } catch (PackageManager.NameNotFoundException unused) {
            String str2 = "No such package: " + this.f15122a.getPackageName();
            return null;
        }
    }

    private f c(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f15121f));
        f.a d2 = f.d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                d2.a(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                d2.a(b(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        d2.a(f.b.OK);
        return d2.a();
    }

    private static void c() {
    }

    private void d(HttpURLConnection httpURLConnection) {
        a(httpURLConnection, a(a()));
    }

    @NonNull
    public d a(@NonNull String str, @Nullable String str2, @NonNull String str3, @NonNull String str4, @Nullable String str5) {
        int responseCode;
        if (this.f15125d.a()) {
            URL a2 = a(String.format("projects/%s/installations", str3));
            for (int i2 = 0; i2 <= 1; i2++) {
                HttpURLConnection a3 = a(a2, str);
                try {
                    try {
                        a3.setRequestMethod("POST");
                        a3.setDoOutput(true);
                        if (str5 != null) {
                            a3.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                        }
                        a(a3, str2, str4);
                        responseCode = a3.getResponseCode();
                        this.f15125d.a(responseCode);
                    } finally {
                        a3.disconnect();
                    }
                } catch (IOException | AssertionError unused) {
                }
                if (a(responseCode)) {
                    return a(a3);
                }
                a(a3, str4, str, str3);
                if (responseCode == 429) {
                    throw new h("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", h.a.TOO_MANY_REQUESTS);
                }
                if (responseCode < 500 || responseCode >= 600) {
                    c();
                    d.a f2 = d.f();
                    f2.a(d.b.BAD_CONFIG);
                    return f2.a();
                }
                a3.disconnect();
            }
            throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
        }
        throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
    }

    @VisibleForTesting
    static long b(String str) {
        m.a(f15120e.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    @Nullable
    private static String b(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f15121f));
        try {
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                String format = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return format;
            } catch (IOException unused2) {
                return null;
            }
        } catch (IOException unused3) {
            bufferedReader.close();
            return null;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }

    private void a(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2) {
        a(httpURLConnection, a(a(str, str2)));
    }

    private static byte[] a(JSONObject jSONObject) {
        return jSONObject.toString().getBytes("UTF-8");
    }

    private static void a(URLConnection uRLConnection, byte[] bArr) {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
                try {
                    return;
                } catch (IOException unused) {
                    return;
                }
            } finally {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException unused2) {
                }
            }
        }
        throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
    }

    private static JSONObject a(@Nullable String str, @NonNull String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:16.3.5");
            return jSONObject;
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:16.3.5");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private URL a(String str) {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e2) {
            throw new h(e2.getMessage(), h.a.UNAVAILABLE);
        }
    }

    @NonNull
    public f a(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
        int responseCode;
        if (this.f15125d.a()) {
            URL a2 = a(String.format("projects/%s/installations/%s/authTokens:generate", str3, str2));
            for (int i2 = 0; i2 <= 1; i2++) {
                HttpURLConnection a3 = a(a2, str);
                try {
                    try {
                        a3.setRequestMethod("POST");
                        a3.addRequestProperty("Authorization", "FIS_v2 " + str4);
                        a3.setDoOutput(true);
                        d(a3);
                        responseCode = a3.getResponseCode();
                        this.f15125d.a(responseCode);
                    } catch (IOException | AssertionError unused) {
                    }
                    if (a(responseCode)) {
                        return c(a3);
                    }
                    a(a3, (String) null, str, str3);
                    if (responseCode != 401 && responseCode != 404) {
                        if (responseCode == 429) {
                            throw new h("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", h.a.TOO_MANY_REQUESTS);
                        }
                        if (responseCode < 500 || responseCode >= 600) {
                            c();
                            f.a d2 = f.d();
                            d2.a(f.b.BAD_CONFIG);
                            return d2.a();
                        }
                        a3.disconnect();
                    }
                    f.a d3 = f.d();
                    d3.a(f.b.AUTH_ERROR);
                    return d3.a();
                } finally {
                    a3.disconnect();
                }
            }
            throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
        }
        throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
    }

    private HttpURLConnection a(URL url, String str) {
        f.a a2;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(e.b.b.a.a.a.c.DEBUG_INT);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(e.b.b.a.a.a.c.DEBUG_INT);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty("X-Android-Package", this.f15122a.getPackageName());
            if (this.f15124c.get() != null && this.f15123b.get() != null && (a2 = this.f15124c.get().a("fire-installations-id")) != f.a.NONE) {
                httpURLConnection.addRequestProperty("x-firebase-client", this.f15123b.get().a());
                httpURLConnection.addRequestProperty("x-firebase-client-log-type", Integer.toString(a2.getCode()));
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", b());
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
        }
    }

    private d a(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f15121f));
        f.a d2 = f.d();
        d.a f2 = d.f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                f2.c(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                f2.a(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                f2.b(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        d2.a(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        d2.a(b(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                f2.a(d2.a());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        f2.a(d.b.OK);
        return f2.a();
    }

    private static void a(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2, @NonNull String str3) {
        if (TextUtils.isEmpty(b(httpURLConnection))) {
            return;
        }
        a(str, str2, str3);
    }

    private static String a(@Nullable String str, @NonNull String str2, @NonNull String str3) {
        String str4;
        Object[] objArr = new Object[3];
        objArr[0] = str2;
        objArr[1] = str3;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        objArr[2] = str4;
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", objArr);
    }
}
