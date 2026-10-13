package io.flutter.plugins.b;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import g.a.c.a.j;
import g.a.c.a.k;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: MethodCallHandlerImpl.java */
/* loaded from: classes2.dex */
class b implements k.c {

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f19342g = new String[0];

    /* renamed from: e, reason: collision with root package name */
    private final ContentResolver f19343e;

    /* renamed from: f, reason: collision with root package name */
    private final PackageManager f19344f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ContentResolver contentResolver, PackageManager packageManager) {
        this.f19343e = contentResolver;
        this.f19344f = packageManager;
    }

    @SuppressLint({"HardwareIds"})
    private String a() {
        return Settings.Secure.getString(this.f19343e, "android_id");
    }

    private String[] b() {
        FeatureInfo[] systemAvailableFeatures = this.f19344f.getSystemAvailableFeatures();
        if (systemAvailableFeatures == null) {
            return f19342g;
        }
        String[] strArr = new String[systemAvailableFeatures.length];
        for (int i2 = 0; i2 < systemAvailableFeatures.length; i2++) {
            strArr[i2] = systemAvailableFeatures[i2].name;
        }
        return strArr;
    }

    private boolean c() {
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.HARDWARE.contains("goldfish") || Build.HARDWARE.contains("ranchu") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || Build.PRODUCT.contains("sdk_google") || Build.PRODUCT.contains("google_sdk") || Build.PRODUCT.contains("sdk") || Build.PRODUCT.contains("sdk_x86") || Build.PRODUCT.contains("vbox86p") || Build.PRODUCT.contains("emulator") || Build.PRODUCT.contains("simulator");
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("getAndroidDeviceInfo")) {
            HashMap hashMap = new HashMap();
            hashMap.put("board", Build.BOARD);
            hashMap.put("bootloader", Build.BOOTLOADER);
            hashMap.put("brand", Build.BRAND);
            hashMap.put("device", Build.DEVICE);
            hashMap.put(Constants$ScionAnalytics$MessageType.DISPLAY_NOTIFICATION, Build.DISPLAY);
            hashMap.put("fingerprint", Build.FINGERPRINT);
            hashMap.put("hardware", Build.HARDWARE);
            hashMap.put("host", Build.HOST);
            hashMap.put("id", Build.ID);
            hashMap.put("manufacturer", Build.MANUFACTURER);
            hashMap.put("model", Build.MODEL);
            hashMap.put("product", Build.PRODUCT);
            if (Build.VERSION.SDK_INT >= 21) {
                hashMap.put("supported32BitAbis", Arrays.asList(Build.SUPPORTED_32_BIT_ABIS));
                hashMap.put("supported64BitAbis", Arrays.asList(Build.SUPPORTED_64_BIT_ABIS));
                hashMap.put("supportedAbis", Arrays.asList(Build.SUPPORTED_ABIS));
            } else {
                hashMap.put("supported32BitAbis", Arrays.asList(f19342g));
                hashMap.put("supported64BitAbis", Arrays.asList(f19342g));
                hashMap.put("supportedAbis", Arrays.asList(f19342g));
            }
            hashMap.put("tags", Build.TAGS);
            hashMap.put("type", Build.TYPE);
            hashMap.put("isPhysicalDevice", Boolean.valueOf(!c()));
            hashMap.put("androidId", a());
            hashMap.put("systemFeatures", Arrays.asList(b()));
            HashMap hashMap2 = new HashMap();
            if (Build.VERSION.SDK_INT >= 23) {
                hashMap2.put("baseOS", Build.VERSION.BASE_OS);
                hashMap2.put("previewSdkInt", Integer.valueOf(Build.VERSION.PREVIEW_SDK_INT));
                hashMap2.put("securityPatch", Build.VERSION.SECURITY_PATCH);
            }
            hashMap2.put("codename", Build.VERSION.CODENAME);
            hashMap2.put("incremental", Build.VERSION.INCREMENTAL);
            hashMap2.put("release", Build.VERSION.RELEASE);
            hashMap2.put("sdkInt", Integer.valueOf(Build.VERSION.SDK_INT));
            hashMap.put("version", hashMap2);
            dVar.a(hashMap);
            return;
        }
        dVar.a();
    }
}
