package com.google.firebase.crashlytics.d.h;

import android.content.Context;

/* compiled from: InstallerPackageNameProvider.java */
/* loaded from: classes.dex */
class a0 {

    /* renamed from: a, reason: collision with root package name */
    private String f14400a;

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? "" : installerPackageName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a(Context context) {
        if (this.f14400a == null) {
            this.f14400a = b(context);
        }
        return "".equals(this.f14400a) ? null : this.f14400a;
    }
}
