package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.q;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    private static final com.google.firebase.m.a f15269a;

    static {
        com.google.firebase.m.j.d dVar = new com.google.firebase.m.j.d();
        dVar.a2(q.b.class, (com.google.firebase.m.e) new q.c());
        dVar.a2(q.class, (com.google.firebase.m.e) new q.a());
        f15269a = dVar.a();
    }

    static boolean a() {
        Context b2;
        SharedPreferences sharedPreferences;
        ApplicationInfo applicationInfo;
        try {
            com.google.firebase.c.k();
            b2 = com.google.firebase.c.k().b();
            sharedPreferences = b2.getSharedPreferences("com.google.firebase.messaging", 0);
        } catch (PackageManager.NameNotFoundException | IllegalStateException unused) {
        }
        if (sharedPreferences.contains("export_to_big_query")) {
            return sharedPreferences.getBoolean("export_to_big_query", false);
        }
        PackageManager packageManager = b2.getPackageManager();
        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(b2.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
            return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
        }
        return false;
    }

    @Nullable
    static String b(Intent intent) {
        return intent.getStringExtra("google.c.a.c_id");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String c(Intent intent) {
        return intent.getStringExtra("google.c.a.c_l");
    }

    @Nullable
    static String d(Intent intent) {
        return intent.getStringExtra("google.c.a.m_c");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String e(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String f(Intent intent) {
        return intent.getStringExtra("google.c.a.m_l");
    }

    @Nullable
    static String g(Intent intent) {
        return intent.getStringExtra("google.c.a.ts");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @Constants$FirelogAnalytics$MessageType
    public static String h(Intent intent) {
        return (intent.getExtras() == null || !v.a(intent.getExtras())) ? Constants$FirelogAnalytics$MessageType.DATA_MESSAGE : Constants$FirelogAnalytics$MessageType.DISPLAY_NOTIFICATION;
    }

    @NonNull
    static String i(Intent intent) {
        return (intent.getExtras() == null || !v.a(intent.getExtras())) ? Constants$ScionAnalytics$MessageType.DATA_MESSAGE : Constants$ScionAnalytics$MessageType.DISPLAY_NOTIFICATION;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static int j(Intent intent) {
        String stringExtra = intent.getStringExtra("google.delivered_priority");
        if (stringExtra == null) {
            if ("1".equals(intent.getStringExtra("google.priority_reduced"))) {
                return 2;
            }
            stringExtra = intent.getStringExtra("google.priority");
        }
        return a(stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String k(Intent intent) {
        String stringExtra = intent.getStringExtra("from");
        if (stringExtra == null || !stringExtra.startsWith("/topics/")) {
            return null;
        }
        return stringExtra;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static int l(Intent intent) {
        Object obj = intent.getExtras().get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            sb.toString();
            return 0;
        }
    }

    @Nullable
    static String m(Intent intent) {
        if (intent.hasExtra("google.c.a.udt")) {
            return intent.getStringExtra("google.c.a.udt");
        }
        return null;
    }

    private static boolean n(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    public static void o(Intent intent) {
        a("_nd", intent);
    }

    public static void p(Intent intent) {
        a("_nf", intent);
    }

    public static void q(Intent intent) {
        s(intent);
        a("_no", intent);
    }

    public static void r(Intent intent) {
        e.i.b.a.g c2;
        if (u(intent)) {
            a("_nr", intent);
        }
        if (!t(intent) || (c2 = FirebaseMessaging.c()) == null) {
            return;
        }
        a(Constants$FirelogAnalytics$EventType.MESSAGE_DELIVERED, intent, c2.a("FCM_CLIENT_EVENT_LOGGING", String.class, e.i.b.a.b.a("json"), t.f15268a));
    }

    private static void s(Intent intent) {
        if (intent == null) {
            return;
        }
        if ("1".equals(intent.getStringExtra("google.c.a.tc"))) {
            com.google.firebase.k.a.a aVar = (com.google.firebase.k.a.a) com.google.firebase.c.k().a(com.google.firebase.k.a.a.class);
            Log.isLoggable("FirebaseMessaging", 3);
            if (aVar != null) {
                String stringExtra = intent.getStringExtra("google.c.a.c_id");
                aVar.a("fcm", "_ln", stringExtra);
                Bundle bundle = new Bundle();
                bundle.putString("source", "Firebase");
                bundle.putString("medium", "notification");
                bundle.putString("campaign", stringExtra);
                aVar.logEvent("fcm", "_cmp", bundle);
                return;
            }
            return;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
        }
    }

    public static boolean t(Intent intent) {
        if (intent == null || n(intent)) {
            return false;
        }
        return a();
    }

    public static boolean u(Intent intent) {
        if (intent == null || n(intent)) {
            return false;
        }
        return "1".equals(intent.getStringExtra("google.c.a.e"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String b() {
        return FirebaseInstanceId.getInstance(com.google.firebase.c.k()).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String c() {
        return com.google.firebase.c.k().b().getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String d() {
        com.google.firebase.c k2 = com.google.firebase.c.k();
        String e2 = k2.d().e();
        if (e2 != null) {
            return e2;
        }
        String b2 = k2.d().b();
        if (!b2.startsWith("1:")) {
            return b2;
        }
        String[] split = b2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String a(Intent intent) {
        return intent.getStringExtra("collapse_key");
    }

    @NonNull
    private static int a(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    private static void a(@Constants$FirelogAnalytics$EventType String str, Intent intent, e.i.b.a.f<String> fVar) {
        try {
            fVar.a(e.i.b.a.c.a(f15269a.a(new q.b(new q(Constants$FirelogAnalytics$EventType.MESSAGE_DELIVERED, intent)))));
        } catch (com.google.firebase.m.c unused) {
        }
    }

    @VisibleForTesting
    static void a(String str, Intent intent) {
        Bundle bundle = new Bundle();
        String b2 = b(intent);
        if (b2 != null) {
            bundle.putString("_nmid", b2);
        }
        String c2 = c(intent);
        if (c2 != null) {
            bundle.putString("_nmn", c2);
        }
        String f2 = f(intent);
        if (!TextUtils.isEmpty(f2)) {
            bundle.putString("label", f2);
        }
        String d2 = d(intent);
        if (!TextUtils.isEmpty(d2)) {
            bundle.putString("message_channel", d2);
        }
        String k2 = k(intent);
        if (k2 != null) {
            bundle.putString("_nt", k2);
        }
        String g2 = g(intent);
        if (g2 != null) {
            try {
                bundle.putInt("_nmt", Integer.parseInt(g2));
            } catch (NumberFormatException unused) {
            }
        }
        String m = m(intent);
        if (m != null) {
            try {
                bundle.putInt("_ndt", Integer.parseInt(m));
            } catch (NumberFormatException unused2) {
            }
        }
        String i2 = i(intent);
        if ("_nr".equals(str) || "_nf".equals(str)) {
            bundle.putString("_nmc", i2);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(str.length() + 37 + String.valueOf(valueOf).length());
            sb.append("Logging to scion event=");
            sb.append(str);
            sb.append(" scionPayload=");
            sb.append(valueOf);
            sb.toString();
        }
        com.google.firebase.k.a.a aVar = (com.google.firebase.k.a.a) com.google.firebase.c.k().a(com.google.firebase.k.a.a.class);
        if (aVar != null) {
            aVar.logEvent("fcm", str, bundle);
        }
    }
}
