package com.zoloz.webcontainer.p;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/* compiled from: H5Utils.java */
/* loaded from: classes2.dex */
public class b {
    public static String a(JSONObject jSONObject, String str) {
        return a(jSONObject, str, "");
    }

    public static int b(JSONObject jSONObject, String str) {
        return a(jSONObject, str, 0);
    }

    public static String a(JSONObject jSONObject, String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return (String) a(jSONObject, str, str2);
    }

    public static boolean a(JSONObject jSONObject, String str, boolean z) {
        return ((Boolean) a(jSONObject, str, Boolean.valueOf(z))).booleanValue();
    }

    public static int a(JSONObject jSONObject, String str, int i2) {
        return ((Integer) a(jSONObject, str, Integer.valueOf(i2))).intValue();
    }

    public static JSONObject a(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return (JSONObject) a(jSONObject, str, jSONObject2);
    }

    public static <T> T a(JSONObject jSONObject, String str, T t) {
        if (jSONObject == null || jSONObject.isEmpty() || t == null || !jSONObject.containsKey(str)) {
            return t;
        }
        T t2 = (T) jSONObject.get(str);
        if (t2 != null && t.getClass().isAssignableFrom(t2.getClass())) {
            return t2;
        }
        com.zoloz.webcontainer.b.b("H5Utils", "[key] " + str + " [value] " + t2);
        return t;
    }

    public static final JSONObject a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return JSON.parseObject(str);
        } catch (Exception e2) {
            com.zoloz.webcontainer.b.a("H5Utils", e2);
            return null;
        }
    }

    public static boolean a() {
        try {
            return (com.zoloz.webcontainer.i.a.a().getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }
}
