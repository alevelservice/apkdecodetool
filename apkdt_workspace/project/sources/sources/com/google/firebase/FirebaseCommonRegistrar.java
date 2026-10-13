package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.r.h;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FirebaseCommonRegistrar implements com.google.firebase.components.i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String b(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String c(Context context) {
        return (Build.VERSION.SDK_INT < 16 || !context.getPackageManager().hasSystemFeature("android.hardware.type.television")) ? (Build.VERSION.SDK_INT < 20 || !context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) ? (Build.VERSION.SDK_INT < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (Build.VERSION.SDK_INT < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto" : "watch" : "tv";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String d(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? a(installerPackageName) : "";
    }

    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.d<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.google.firebase.r.c.b());
        arrayList.add(com.google.firebase.o.d.a());
        arrayList.add(com.google.firebase.r.h.a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(com.google.firebase.r.h.a("fire-core", "19.5.0"));
        arrayList.add(com.google.firebase.r.h.a("device-name", a(Build.PRODUCT)));
        arrayList.add(com.google.firebase.r.h.a("device-model", a(Build.DEVICE)));
        arrayList.add(com.google.firebase.r.h.a("device-brand", a(Build.BRAND)));
        arrayList.add(com.google.firebase.r.h.a("android-target-sdk", (h.a<Context>) e.a()));
        arrayList.add(com.google.firebase.r.h.a("android-min-sdk", (h.a<Context>) f.a()));
        arrayList.add(com.google.firebase.r.h.a("android-platform", (h.a<Context>) g.a()));
        arrayList.add(com.google.firebase.r.h.a("android-installer", (h.a<Context>) h.a()));
        String a2 = com.google.firebase.r.e.a();
        if (a2 != null) {
            arrayList.add(com.google.firebase.r.h.a("kotlin", a2));
        }
        return arrayList;
    }

    private static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }
}
