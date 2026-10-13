package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
class x {

    /* renamed from: a, reason: collision with root package name */
    final SharedPreferences f15030a;

    /* renamed from: b, reason: collision with root package name */
    final Context f15031b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<String, Long> f15032c = new a.e.a();

    public x(Context context) {
        this.f15031b = context;
        this.f15030a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        b("com.google.android.gms.appid-no-backup");
    }

    static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
        sb.append(str);
        sb.append("|S|");
        sb.append("cre");
        return sb.toString();
    }

    private void b(String str) {
        File file = new File(androidx.core.content.a.c(this.f15031b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || b()) {
                return;
            }
            a();
        } catch (IOException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e2.getMessage());
                if (valueOf.length() != 0) {
                    "Error creating file in no backup dir: ".concat(valueOf);
                } else {
                    new String("Error creating file in no backup dir: ");
                }
            }
        }
    }

    private String c(String str, String str2, String str3) {
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    private long d(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!this.f15030a.contains(a(str, "cre"))) {
            SharedPreferences.Editor edit = this.f15030a.edit();
            edit.putString(a(str, "cre"), String.valueOf(currentTimeMillis));
            edit.commit();
            return currentTimeMillis;
        }
        return c(str);
    }

    private long c(String str) {
        String string = this.f15030a.getString(a(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public synchronized void a() {
        this.f15032c.clear();
        this.f15030a.edit().clear().commit();
    }

    public synchronized void a(String str, String str2, String str3) {
        String c2 = c(str, str2, str3);
        SharedPreferences.Editor edit = this.f15030a.edit();
        edit.remove(c2);
        edit.commit();
    }

    /* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
    /* loaded from: classes.dex */
    static class a {

        /* renamed from: d, reason: collision with root package name */
        private static final long f15033d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a, reason: collision with root package name */
        final String f15034a;

        /* renamed from: b, reason: collision with root package name */
        final String f15035b;

        /* renamed from: c, reason: collision with root package name */
        final long f15036c;

        private a(String str, String str2, long j2) {
            this.f15034a = str;
            this.f15035b = str2;
            this.f15036c = j2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String a(@Nullable a aVar) {
            if (aVar == null) {
                return null;
            }
            return aVar.f15034a;
        }

        static String a(String str, String str2, long j2) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j2);
                return jSONObject.toString();
            } catch (JSONException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb.append("Failed to encode token: ");
                sb.append(valueOf);
                sb.toString();
                return null;
            }
        }

        static a b(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
                } catch (JSONException e2) {
                    String valueOf = String.valueOf(e2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                    sb.append("Failed to parse token: ");
                    sb.append(valueOf);
                    sb.toString();
                    return null;
                }
            }
            return new a(str, null, 0L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(String str) {
            return System.currentTimeMillis() > this.f15036c + f15033d || !str.equals(this.f15035b);
        }
    }

    public synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String a2 = a.a(str4, str5, System.currentTimeMillis());
        if (a2 == null) {
            return;
        }
        SharedPreferences.Editor edit = this.f15030a.edit();
        edit.putString(c(str, str2, str3), a2);
        edit.commit();
    }

    public synchronized a b(String str, String str2, String str3) {
        return a.b(this.f15030a.getString(c(str, str2, str3), null));
    }

    public synchronized boolean b() {
        return this.f15030a.getAll().isEmpty();
    }

    public synchronized long a(String str) {
        long d2;
        d2 = d(str);
        this.f15032c.put(str, Long.valueOf(d2));
        return d2;
    }
}
