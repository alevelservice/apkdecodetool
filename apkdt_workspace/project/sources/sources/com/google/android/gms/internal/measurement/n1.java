package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;

/* loaded from: classes.dex */
public final class n1 {

    /* renamed from: a, reason: collision with root package name */
    private static volatile z1<Boolean> f11984a = z1.zzrp();

    /* renamed from: b, reason: collision with root package name */
    private static final Object f11985b = new Object();

    private static boolean a(Context context) {
        return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
    }

    public static boolean a(Context context, Uri uri) {
        ProviderInfo resolveContentProvider;
        boolean z;
        String authority = uri.getAuthority();
        if ("com.google.android.gms.phenotype".equals(authority)) {
            if (f11984a.isPresent()) {
                return f11984a.get().booleanValue();
            }
            synchronized (f11985b) {
                if (f11984a.isPresent()) {
                    return f11984a.get().booleanValue();
                }
                boolean z2 = false;
                if (!"com.google.android.gms".equals(context.getPackageName()) && ((resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", 0)) == null || !"com.google.android.gms".equals(resolveContentProvider.packageName))) {
                    z = false;
                    if (z && a(context)) {
                        z2 = true;
                    }
                    f11984a = z1.zzf(Boolean.valueOf(z2));
                    return f11984a.get().booleanValue();
                }
                z = true;
                if (z) {
                    z2 = true;
                }
                f11984a = z1.zzf(Boolean.valueOf(z2));
                return f11984a.get().booleanValue();
            }
        }
        StringBuilder sb = new StringBuilder(String.valueOf(authority).length() + 91);
        sb.append(authority);
        sb.append(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported.");
        throw new IllegalArgumentException(sb.toString());
    }
}
