package com.google.android.gms.internal.vision;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    private static volatile g0<Boolean> f12547a = g0.zzbx();

    /* renamed from: b, reason: collision with root package name */
    private static final Object f12548b = new Object();

    private static boolean a(Context context) {
        return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
    }

    public static boolean a(Context context, Uri uri) {
        ProviderInfo resolveContentProvider;
        boolean z;
        String authority = uri.getAuthority();
        boolean z2 = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            StringBuilder sb = new StringBuilder(String.valueOf(authority).length() + 91);
            sb.append(authority);
            sb.append(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported.");
            sb.toString();
            return false;
        }
        if (f12547a.isPresent()) {
            return f12547a.get().booleanValue();
        }
        synchronized (f12548b) {
            if (f12547a.isPresent()) {
                return f12547a.get().booleanValue();
            }
            if (!"com.google.android.gms".equals(context.getPackageName()) && ((resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", 0)) == null || !"com.google.android.gms".equals(resolveContentProvider.packageName))) {
                z = false;
                if (z && a(context)) {
                    z2 = true;
                }
                f12547a = g0.zzb(Boolean.valueOf(z2));
                return f12547a.get().booleanValue();
            }
            z = true;
            if (z) {
                z2 = true;
            }
            f12547a = g0.zzb(Boolean.valueOf(z2));
            return f12547a.get().booleanValue();
        }
    }
}
