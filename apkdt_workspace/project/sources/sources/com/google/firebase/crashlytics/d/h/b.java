package com.google.firebase.crashlytics.d.h;

import android.content.Context;
import android.content.pm.PackageInfo;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppData.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f14401a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14402b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14403c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14404d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14405e;

    /* renamed from: f, reason: collision with root package name */
    public final String f14406f;

    /* renamed from: g, reason: collision with root package name */
    public final com.google.firebase.crashlytics.d.q.b f14407g;

    public b(String str, String str2, String str3, String str4, String str5, String str6, com.google.firebase.crashlytics.d.q.b bVar) {
        this.f14401a = str;
        this.f14402b = str2;
        this.f14403c = str3;
        this.f14404d = str4;
        this.f14405e = str5;
        this.f14406f = str6;
        this.f14407g = bVar;
    }

    public static b a(Context context, y yVar, String str, String str2, com.google.firebase.crashlytics.d.q.b bVar) {
        String packageName = context.getPackageName();
        String c2 = yVar.c();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String num = Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new b(str, str2, c2, packageName, num, str3, bVar);
    }
}
