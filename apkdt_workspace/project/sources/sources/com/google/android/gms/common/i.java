package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.m;
import javax.annotation.CheckReturnValue;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@ShowFirstParty
@KeepForSdk
@CheckReturnValue
/* loaded from: classes.dex */
public class i {

    /* renamed from: b, reason: collision with root package name */
    private static i f5187b;

    /* renamed from: a, reason: collision with root package name */
    private final Context f5188a;

    private i(Context context) {
        this.f5188a = context.getApplicationContext();
    }

    @KeepForSdk
    public static i a(Context context) {
        m.a(context);
        synchronized (i.class) {
            if (f5187b == null) {
                r.a(context);
                f5187b = new i(context);
            }
        }
        return f5187b;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean a(int i2) {
        u a2;
        String[] a3 = com.google.android.gms.common.o.c.a(this.f5188a).a(i2);
        if (a3 == null || a3.length == 0) {
            a2 = u.a("no pkgs");
        } else {
            a2 = null;
            for (String str : a3) {
                a2 = a(str, i2);
                if (a2.f5415a) {
                    break;
                }
            }
        }
        a2.b();
        return a2.f5415a;
    }

    public static boolean a(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? a(packageInfo, t.f5413a) : a(packageInfo, t.f5413a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    @KeepForSdk
    public boolean a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        return a(packageInfo, true) && h.d(this.f5188a);
    }

    private final u a(String str, int i2) {
        try {
            PackageInfo a2 = com.google.android.gms.common.o.c.a(this.f5188a).a(str, 64, i2);
            boolean d2 = h.d(this.f5188a);
            if (a2 == null) {
                return u.a("null pkg");
            }
            if (a2.signatures != null && a2.signatures.length == 1) {
                zzg zzgVar = new zzg(a2.signatures[0].toByteArray());
                String str2 = a2.packageName;
                u a3 = r.a(str2, zzgVar, d2, false);
                return (!a3.f5415a || a2.applicationInfo == null || (a2.applicationInfo.flags & 2) == 0 || !r.a(str2, zzgVar, false, true).f5415a) ? a3 : u.a("debuggable release cert app rejected");
            }
            return u.a("single cert required");
        } catch (PackageManager.NameNotFoundException unused) {
            String valueOf = String.valueOf(str);
            return u.a(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    private static zzd a(PackageInfo packageInfo, zzd... zzdVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        zzg zzgVar = new zzg(signatureArr[0].toByteArray());
        for (int i2 = 0; i2 < zzdVarArr.length; i2++) {
            if (zzdVarArr[i2].equals(zzgVar)) {
                return zzdVarArr[i2];
            }
        }
        return null;
    }
}
