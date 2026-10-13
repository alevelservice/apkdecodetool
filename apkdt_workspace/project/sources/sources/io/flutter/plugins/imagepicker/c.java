package io.flutter.plugins.imagepicker;

import android.app.Activity;
import android.content.SharedPreferences;
import android.net.Uri;
import androidx.annotation.Nullable;
import g.a.c.a.j;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ImagePickerCache.java */
/* loaded from: classes2.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    private static SharedPreferences f19470a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity) {
        f19470a = activity.getApplicationContext().getSharedPreferences("flutter_image_picker_shared_preference", 0);
    }

    private static void b(String str) {
        SharedPreferences sharedPreferences = f19470a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString("flutter_image_picker_type", str).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c() {
        SharedPreferences sharedPreferences = f19470a;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString("flutter_image_picker_pending_image_uri", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        if (str.equals("pickImage")) {
            b("image");
        } else if (str.equals("pickVideo")) {
            b("video");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> b() {
        if (f19470a == null) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap();
        Boolean bool = false;
        if (f19470a.contains("flutter_image_picker_image_path")) {
            hashMap.put("path", f19470a.getString("flutter_image_picker_image_path", ""));
            bool = true;
        }
        if (f19470a.contains("flutter_image_picker_error_code")) {
            hashMap.put("errorCode", f19470a.getString("flutter_image_picker_error_code", ""));
            bool = true;
            if (f19470a.contains("flutter_image_picker_error_message")) {
                hashMap.put("errorMessage", f19470a.getString("flutter_image_picker_error_message", ""));
            }
        }
        if (bool.booleanValue()) {
            if (f19470a.contains("flutter_image_picker_type")) {
                hashMap.put("type", f19470a.getString("flutter_image_picker_type", ""));
            }
            if (f19470a.contains("flutter_image_picker_max_width")) {
                hashMap.put("maxWidth", Double.valueOf(Double.longBitsToDouble(f19470a.getLong("flutter_image_picker_max_width", 0L))));
            }
            if (f19470a.contains("flutter_image_picker_max_height")) {
                hashMap.put("maxHeight", Double.valueOf(Double.longBitsToDouble(f19470a.getLong("flutter_image_picker_max_height", 0L))));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(j jVar) {
        a((Double) jVar.a("maxWidth"), (Double) jVar.a("maxHeight"));
    }

    private static void a(Double d2, Double d3) {
        SharedPreferences sharedPreferences = f19470a;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (d2 != null) {
            edit.putLong("flutter_image_picker_max_width", Double.doubleToRawLongBits(d2.doubleValue()));
        }
        if (d3 != null) {
            edit.putLong("flutter_image_picker_max_height", Double.doubleToRawLongBits(d3.doubleValue()));
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Uri uri) {
        SharedPreferences sharedPreferences = f19470a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString("flutter_image_picker_pending_image_uri", uri.getPath()).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        SharedPreferences sharedPreferences = f19470a;
        if (sharedPreferences == null) {
            return;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (str != null) {
            edit.putString("flutter_image_picker_image_path", str);
        }
        if (str2 != null) {
            edit.putString("flutter_image_picker_error_code", str2);
        }
        if (str3 != null) {
            edit.putString("flutter_image_picker_error_message", str3);
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        SharedPreferences sharedPreferences = f19470a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().clear().apply();
    }
}
