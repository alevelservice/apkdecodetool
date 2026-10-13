package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.h0;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    @KeepForSdk
    public static final int f5167a = h.f5182a;

    /* renamed from: b, reason: collision with root package name */
    private static final d f5168b = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    @KeepForSdk
    public d() {
    }

    @KeepForSdk
    public static d a() {
        return f5168b;
    }

    @HideFirstParty
    @KeepForSdk
    public int b(Context context) {
        return a(context, f5167a);
    }

    @KeepForSdk
    public int a(Context context, int i2) {
        int a2 = h.a(context, i2);
        if (h.b(context, a2)) {
            return 18;
        }
        return a2;
    }

    @KeepForSdk
    public boolean b(int i2) {
        return h.b(i2);
    }

    @VisibleForTesting
    private static String b(@Nullable Context context, @Nullable String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f5167a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(com.google.android.gms.common.o.c.a(context).b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return sb.toString();
    }

    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public Intent a(Context context, int i2, @Nullable String str) {
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return null;
            }
            return h0.a("com.google.android.gms");
        }
        if (context != null && com.google.android.gms.common.util.i.d(context)) {
            return h0.a();
        }
        return h0.a("com.google.android.gms", b(context, str));
    }

    @Nullable
    @KeepForSdk
    public PendingIntent a(Context context, int i2, int i3) {
        return a(context, i2, i3, null);
    }

    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public PendingIntent a(Context context, int i2, int i3, @Nullable String str) {
        Intent a2 = a(context, i2, str);
        if (a2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i3, a2, 134217728);
    }

    @ShowFirstParty
    @KeepForSdk
    public int a(Context context) {
        return h.a(context);
    }

    @KeepForSdk
    public boolean a(Context context, String str) {
        return h.a(context, str);
    }

    @KeepForSdk
    public String a(int i2) {
        return h.a(i2);
    }
}
