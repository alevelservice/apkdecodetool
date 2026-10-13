package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public final class h {

    /* renamed from: d, reason: collision with root package name */
    private static final Object f5077d = new Object();

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("sLock")
    private static h f5078e;

    /* renamed from: a, reason: collision with root package name */
    private final String f5079a;

    /* renamed from: b, reason: collision with root package name */
    private final Status f5080b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f5081c;

    @VisibleForTesting
    @KeepForSdk
    h(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(com.google.android.gms.common.j.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            this.f5081c = !(resources.getInteger(identifier) != 0);
        } else {
            this.f5081c = false;
        }
        String a2 = com.google.android.gms.common.internal.k0.a(context);
        a2 = a2 == null ? new com.google.android.gms.common.internal.p(context).a("google_app_id") : a2;
        if (TextUtils.isEmpty(a2)) {
            this.f5080b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f5079a = null;
        } else {
            this.f5079a = a2;
            this.f5080b = Status.f4988i;
        }
    }

    @KeepForSdk
    public static Status a(Context context) {
        Status status;
        com.google.android.gms.common.internal.m.a(context, "Context must not be null.");
        synchronized (f5077d) {
            if (f5078e == null) {
                f5078e = new h(context);
            }
            status = f5078e.f5080b;
        }
        return status;
    }

    @KeepForSdk
    public static boolean b() {
        return a("isMeasurementExplicitlyDisabled").f5081c;
    }

    @KeepForSdk
    public static String a() {
        return a("getGoogleAppId").f5079a;
    }

    @KeepForSdk
    private static h a(String str) {
        h hVar;
        synchronized (f5077d) {
            if (f5078e != null) {
                hVar = f5078e;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
        }
        return hVar;
    }
}
