package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15014a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private String f15015b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private String f15016c;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private int f15017d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private int f15018e = 0;

    public r(Context context) {
        this.f15014a = context;
    }

    private synchronized void f() {
        PackageInfo a2 = a(this.f15014a.getPackageName());
        if (a2 != null) {
            this.f15015b = Integer.toString(a2.versionCode);
            this.f15016c = a2.versionName;
        }
    }

    public synchronized String a() {
        if (this.f15015b == null) {
            f();
        }
        return this.f15015b;
    }

    public synchronized String b() {
        if (this.f15016c == null) {
            f();
        }
        return this.f15016c;
    }

    public synchronized int c() {
        PackageInfo a2;
        if (this.f15017d == 0 && (a2 = a("com.google.android.gms")) != null) {
            this.f15017d = a2.versionCode;
        }
        return this.f15017d;
    }

    public synchronized int d() {
        int i2 = this.f15018e;
        if (i2 != 0) {
            return i2;
        }
        PackageManager packageManager = this.f15014a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            return 0;
        }
        if (!com.google.android.gms.common.util.o.k()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.f15018e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        int i3 = 2;
        if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
            this.f15018e = 2;
            return 2;
        }
        if (com.google.android.gms.common.util.o.k()) {
            this.f15018e = 2;
        } else {
            this.f15018e = 1;
            i3 = 1;
        }
        return i3;
    }

    @KeepForSdk
    public boolean e() {
        return d() != 0;
    }

    public static String a(com.google.firebase.c cVar) {
        String e2 = cVar.d().e();
        if (e2 != null) {
            return e2;
        }
        String b2 = cVar.d().b();
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

    private PackageInfo a(String str) {
        try {
            return this.f15014a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            sb.toString();
            return null;
        }
    }
}
