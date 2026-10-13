package io.flutter.plugins.firebase.messaging;

import android.content.SharedPreferences;
import com.google.firebase.messaging.RemoteMessage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FlutterFirebaseMessagingStore.java */
/* loaded from: classes2.dex */
public class r {

    /* renamed from: b, reason: collision with root package name */
    private static r f19468b;

    /* renamed from: a, reason: collision with root package name */
    private SharedPreferences f19469a;

    public static r a() {
        if (f19468b == null) {
            f19468b = new r();
        }
        return f19468b;
    }

    private SharedPreferences b() {
        if (this.f19469a == null) {
            this.f19469a = n.a().getSharedPreferences("io.flutter.plugins.firebase.messaging", 0);
        }
        return this.f19469a;
    }

    public String a(String str, String str2) {
        return b().getString(str, str2);
    }

    public void a(RemoteMessage remoteMessage) {
        b(remoteMessage.m(), new JSONObject(s.a(remoteMessage)).toString());
        String str = a("notification_ids", "") + remoteMessage.m() + ",";
        ArrayList arrayList = new ArrayList(Arrays.asList(str.split(",")));
        if (arrayList.size() > 20) {
            String str2 = (String) arrayList.get(0);
            b().edit().remove(str2).apply();
            str = str.replace(str2 + ",", "");
        }
        b("notification_ids", str);
    }

    public void b(String str, String str2) {
        b().edit().putString(str, str2).apply();
    }

    public void b(String str) {
        b().edit().remove(str).apply();
        String a2 = a("notification_ids", "");
        if (a2.isEmpty()) {
            return;
        }
        b("notification_ids", a2.replace(str + ",", ""));
    }

    public RemoteMessage a(String str) {
        String a2 = a(str, null);
        if (a2 != null) {
            try {
                HashMap hashMap = new HashMap(1);
                Map<String, Object> a3 = a(new JSONObject(a2));
                a3.put("to", str);
                hashMap.put("message", a3);
                return s.b(hashMap);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private Map<String, Object> a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = a((JSONObject) obj);
            }
            hashMap.put(next, obj);
        }
        return hashMap;
    }

    public List<Object> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            Object obj = jSONArray.get(i2);
            if (obj instanceof JSONArray) {
                obj = a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = a((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }
}
