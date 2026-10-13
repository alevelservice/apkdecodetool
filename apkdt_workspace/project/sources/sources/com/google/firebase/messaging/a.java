package com.google.firebase.messaging;

import android.R;
import android.annotation.TargetApi;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f15205a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* renamed from: com.google.firebase.messaging.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0140a {

        /* renamed from: a, reason: collision with root package name */
        public final NotificationCompat.d f15206a;

        /* renamed from: b, reason: collision with root package name */
        public final String f15207b;

        /* renamed from: c, reason: collision with root package name */
        public final int f15208c = 0;

        C0140a(NotificationCompat.d dVar, String str, int i2) {
            this.f15206a = dVar;
            this.f15207b = str;
        }
    }

    @Nullable
    private static PendingIntent a(Context context, v vVar, String str, PackageManager packageManager) {
        Intent a2 = a(str, vVar, packageManager);
        if (a2 == null) {
            return null;
        }
        a2.addFlags(67108864);
        a2.putExtras(vVar.j());
        PendingIntent activity = PendingIntent.getActivity(context, a(), a2, 1073741824);
        return c(vVar) ? a(context, vVar, activity) : activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0140a b(Context context, v vVar) {
        Bundle a2 = a(context.getPackageManager(), context.getPackageName());
        return a(context, context.getPackageName(), vVar, b(context, vVar.c(), a2), context.getResources(), context.getPackageManager(), a2);
    }

    static boolean c(@NonNull v vVar) {
        return vVar.a("google.c.a.e");
    }

    @TargetApi(26)
    @VisibleForTesting
    public static String b(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion >= 26) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
                if (!TextUtils.isEmpty(str)) {
                    if (notificationManager.getNotificationChannel(str) != null) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 122);
                    sb.append("Notification Channel requested (");
                    sb.append(str);
                    sb.append(") has not been created by the app. Manifest configuration, or default, value will be used.");
                    sb.toString();
                }
                String string = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
                if (!TextUtils.isEmpty(string) && notificationManager.getNotificationChannel(string) != null) {
                    return string;
                }
                if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                    int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
                    notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", identifier == 0 ? "Misc" : context.getString(identifier), 3));
                }
                return "fcm_fallback_notification_channel";
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    @Nullable
    private static PendingIntent a(Context context, v vVar) {
        if (c(vVar)) {
            return a(context, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(vVar.i()));
        }
        return null;
    }

    private static PendingIntent a(Context context, Intent intent) {
        return PendingIntent.getBroadcast(context, a(), new Intent("com.google.firebase.MESSAGING_EVENT").setComponent(new ComponentName(context, "com.google.firebase.iid.FirebaseInstanceIdReceiver")).putExtra("wrapped_intent", intent), 1073741824);
    }

    private static Intent a(String str, v vVar, PackageManager packageManager) {
        String g2 = vVar.g("gcm.n.click_action");
        if (!TextUtils.isEmpty(g2)) {
            Intent intent = new Intent(g2);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri b2 = vVar.b();
        if (b2 != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(b2);
            return intent2;
        }
        return packageManager.getLaunchIntentForPackage(str);
    }

    private static String b(v vVar) {
        String g2 = vVar.g("gcm.n.tag");
        if (!TextUtils.isEmpty(g2)) {
            return g2;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        StringBuilder sb = new StringBuilder(37);
        sb.append("FCM-Notification:");
        sb.append(uptimeMillis);
        return sb.toString();
    }

    private static int a() {
        return f15205a.incrementAndGet();
    }

    private static Integer a(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 56);
                sb.append("Color is invalid: ");
                sb.append(str);
                sb.append(". Notification will use default color.");
                sb.toString();
            }
        }
        int i2 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i2 != 0) {
            try {
                return Integer.valueOf(androidx.core.content.a.a(context, i2));
            } catch (Resources.NotFoundException unused2) {
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    private static int a(v vVar) {
        boolean a2 = vVar.a("gcm.n.default_sound");
        ?? r0 = a2;
        if (vVar.a("gcm.n.default_vibrate_timings")) {
            r0 = (a2 ? 1 : 0) | 2;
        }
        return vVar.a("gcm.n.default_light_settings") ? r0 | 4 : r0;
    }

    private static Bundle a(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35);
            sb.append("Couldn't get own application info: ");
            sb.append(valueOf);
            sb.toString();
        }
        return Bundle.EMPTY;
    }

    private static int a(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && a(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && a(resources, identifier2)) {
                return identifier2;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 61);
            sb.append("Icon resource ");
            sb.append(str2);
            sb.append(" not found. Notification will use default icon.");
            sb.toString();
        }
        int i2 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i2 == 0 || !a(resources, i2)) {
            try {
                i2 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 35);
                sb2.append("Couldn't get own application info: ");
                sb2.append(valueOf);
                sb2.toString();
            }
        }
        return (i2 == 0 || !a(resources, i2)) ? R.drawable.sym_def_app_icon : i2;
    }

    private static Uri a(String str, v vVar, Resources resources) {
        String f2 = vVar.f();
        if (TextUtils.isEmpty(f2)) {
            return null;
        }
        if (!"default".equals(f2) && resources.getIdentifier(f2, "raw", str) != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(f2).length());
            sb.append("android.resource://");
            sb.append(str);
            sb.append("/raw/");
            sb.append(f2);
            return Uri.parse(sb.toString());
        }
        return RingtoneManager.getDefaultUri(2);
    }

    @TargetApi(26)
    private static boolean a(Resources resources, int i2) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(i2, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i2);
            sb.toString();
            return false;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Couldn't find resource ");
            sb2.append(i2);
            sb2.append(", treating it as an invalid icon");
            sb2.toString();
            return false;
        }
    }

    private static PendingIntent a(Context context, v vVar, PendingIntent pendingIntent) {
        return a(context, new Intent("com.google.firebase.messaging.NOTIFICATION_OPEN").putExtras(vVar.i()).putExtra("pending_intent", pendingIntent));
    }

    public static C0140a a(Context context, String str, v vVar, String str2, Resources resources, PackageManager packageManager, Bundle bundle) {
        NotificationCompat.d dVar = new NotificationCompat.d(context, str2);
        String b2 = vVar.b(resources, str, "gcm.n.title");
        if (!TextUtils.isEmpty(b2)) {
            dVar.b((CharSequence) b2);
        }
        String b3 = vVar.b(resources, str, "gcm.n.body");
        if (!TextUtils.isEmpty(b3)) {
            dVar.a((CharSequence) b3);
            NotificationCompat.b bVar = new NotificationCompat.b();
            bVar.a(b3);
            dVar.a(bVar);
        }
        dVar.f(a(packageManager, resources, str, vVar.g("gcm.n.icon"), bundle));
        Uri a2 = a(str, vVar, resources);
        if (a2 != null) {
            dVar.a(a2);
        }
        dVar.a(a(context, vVar, str, packageManager));
        PendingIntent a3 = a(context, vVar);
        if (a3 != null) {
            dVar.b(a3);
        }
        Integer a4 = a(context, vVar.g("gcm.n.color"), bundle);
        if (a4 != null) {
            dVar.a(a4.intValue());
        }
        dVar.a(!vVar.a("gcm.n.sticky"));
        dVar.c(vVar.a("gcm.n.local_only"));
        String g2 = vVar.g("gcm.n.ticker");
        if (g2 != null) {
            dVar.d((CharSequence) g2);
        }
        Integer e2 = vVar.e();
        if (e2 != null) {
            dVar.e(e2.intValue());
        }
        Integer h2 = vVar.h();
        if (h2 != null) {
            dVar.g(h2.intValue());
        }
        Integer d2 = vVar.d();
        if (d2 != null) {
            dVar.d(d2.intValue());
        }
        Long f2 = vVar.f("gcm.n.event_time");
        if (f2 != null) {
            dVar.f(true);
            dVar.b(f2.longValue());
        }
        long[] g3 = vVar.g();
        if (g3 != null) {
            dVar.a(g3);
        }
        int[] a5 = vVar.a();
        if (a5 != null) {
            dVar.a(a5[0], a5[1], a5[2]);
        }
        dVar.b(a(vVar));
        return new C0140a(dVar, b(vVar), 0);
    }
}
