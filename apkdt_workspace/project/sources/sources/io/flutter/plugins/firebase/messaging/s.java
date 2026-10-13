package io.flutter.plugins.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlutterFirebaseMessagingUtils.java */
/* loaded from: classes2.dex */
public class s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> a(RemoteMessage remoteMessage) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (remoteMessage.j() != null) {
            hashMap.put("collapseKey", remoteMessage.j());
        }
        if (remoteMessage.l() != null) {
            hashMap.put("from", remoteMessage.l());
        }
        if (remoteMessage.r() != null) {
            hashMap.put("to", remoteMessage.r());
        }
        if (remoteMessage.m() != null) {
            hashMap.put("messageId", remoteMessage.m());
        }
        if (remoteMessage.o() != null) {
            hashMap.put("messageType", remoteMessage.o());
        }
        if (remoteMessage.k().size() > 0) {
            for (Map.Entry<String, String> entry : remoteMessage.k().entrySet()) {
                hashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        hashMap.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, hashMap2);
        hashMap.put("ttl", Integer.valueOf(remoteMessage.s()));
        hashMap.put("sentTime", Long.valueOf(remoteMessage.q()));
        if (remoteMessage.p() != null) {
            hashMap.put("notification", a(remoteMessage.p()));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RemoteMessage b(Map<String, Object> map) {
        Map map2 = (Map) Objects.requireNonNull(map.get("message"));
        RemoteMessage.b bVar = new RemoteMessage.b((String) Objects.requireNonNull(map2.get("to")));
        String str = (String) map2.get("collapseKey");
        String str2 = (String) map2.get("messageId");
        String str3 = (String) map2.get("messageType");
        Integer num = (Integer) map2.get("ttl");
        Map<String, String> map3 = (Map) map2.get(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
        if (str != null) {
            bVar.a(str);
        }
        if (str3 != null) {
            bVar.c(str3);
        }
        if (str2 != null) {
            bVar.b(str2);
        }
        if (num != null) {
            bVar.a(num.intValue());
        }
        if (map3 != null) {
            bVar.a(map3);
        }
        return bVar.a();
    }

    private static Map<String, Object> a(RemoteMessage.c cVar) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (cVar.n() != null) {
            hashMap.put("title", cVar.n());
        }
        if (cVar.p() != null) {
            hashMap.put("titleLocKey", cVar.p());
        }
        if (cVar.o() != null) {
            hashMap.put("titleLocArgs", Arrays.asList(cVar.o()));
        }
        if (cVar.a() != null) {
            hashMap.put("body", cVar.a());
        }
        if (cVar.c() != null) {
            hashMap.put("bodyLocKey", cVar.c());
        }
        if (cVar.b() != null) {
            hashMap.put("bodyLocArgs", Arrays.asList(cVar.b()));
        }
        if (cVar.d() != null) {
            hashMap2.put("channelId", cVar.d());
        }
        if (cVar.e() != null) {
            hashMap2.put("clickAction", cVar.e());
        }
        if (cVar.f() != null) {
            hashMap2.put("color", cVar.f());
        }
        if (cVar.g() != null) {
            hashMap2.put("smallIcon", cVar.g());
        }
        if (cVar.h() != null) {
            hashMap2.put("imageUrl", cVar.h().toString());
        }
        if (cVar.i() != null) {
            hashMap2.put("link", cVar.i().toString());
        }
        if (cVar.j() != null) {
            hashMap2.put("count", cVar.j());
        }
        if (cVar.k() != null) {
            hashMap2.put("priority", cVar.k());
        }
        if (cVar.l() != null) {
            hashMap2.put("sound", cVar.l());
        }
        if (cVar.m() != null) {
            hashMap2.put("ticker", cVar.m());
        }
        if (cVar.q() != null) {
            hashMap2.put("visibility", cVar.q());
        }
        hashMap.put("android", hashMap2);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        if ((keyguardManager != null && keyguardManager.isKeyguardLocked()) || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FirebaseMessaging a(Map<String, Object> map) {
        return FirebaseMessaging.b();
    }
}
