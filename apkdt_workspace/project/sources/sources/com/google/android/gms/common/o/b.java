package com.google.android.gms.common.o;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.o;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f5356a;

    public b(Context context) {
        this.f5356a = context;
    }

    @KeepForSdk
    public ApplicationInfo a(String str, int i2) {
        return this.f5356a.getPackageManager().getApplicationInfo(str, i2);
    }

    @KeepForSdk
    public PackageInfo b(String str, int i2) {
        return this.f5356a.getPackageManager().getPackageInfo(str, i2);
    }

    public final PackageInfo a(String str, int i2, int i3) {
        return this.f5356a.getPackageManager().getPackageInfo(str, 64);
    }

    @KeepForSdk
    public CharSequence b(String str) {
        return this.f5356a.getPackageManager().getApplicationLabel(this.f5356a.getPackageManager().getApplicationInfo(str, 0));
    }

    public final String[] a(int i2) {
        return this.f5356a.getPackageManager().getPackagesForUid(i2);
    }

    @TargetApi(19)
    public final boolean a(int i2, String str) {
        if (o.f()) {
            try {
                ((AppOpsManager) this.f5356a.getSystemService("appops")).checkPackage(i2, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.f5356a.getPackageManager().getPackagesForUid(i2);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @KeepForSdk
    public int a(String str) {
        return this.f5356a.checkCallingOrSelfPermission(str);
    }

    @KeepForSdk
    public int a(String str, String str2) {
        return this.f5356a.getPackageManager().checkPermission(str, str2);
    }

    @KeepForSdk
    public boolean a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f5356a);
        }
        if (!o.k() || (nameForUid = this.f5356a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f5356a.getPackageManager().isInstantApp(nameForUid);
    }
}
