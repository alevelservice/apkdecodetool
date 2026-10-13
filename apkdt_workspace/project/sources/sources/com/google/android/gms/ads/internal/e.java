package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.b4;
import com.google.android.gms.internal.ads.c4;
import com.google.android.gms.internal.ads.de;
import com.google.android.gms.internal.ads.gz0;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qz0;
import com.google.android.gms.internal.ads.t3;
import com.google.android.gms.internal.ads.x3;
import com.google.android.gms.internal.ads.y9;
import com.google.android.gms.internal.ads.yd;
import com.google.android.gms.internal.ads.zzawv;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private Context f4523a;

    /* renamed from: b, reason: collision with root package name */
    private long f4524b = 0;

    public final void a(Context context, zzawv zzawvVar, String str, @Nullable Runnable runnable) {
        a(context, zzawvVar, true, null, str, null, runnable);
    }

    public final void a(Context context, zzawv zzawvVar, String str, y9 y9Var) {
        a(context, zzawvVar, false, y9Var, y9Var != null ? y9Var.d() : null, str, null);
    }

    @VisibleForTesting
    private final void a(Context context, zzawv zzawvVar, boolean z, @Nullable y9 y9Var, String str, @Nullable String str2, @Nullable Runnable runnable) {
        if (n.j().c() - this.f4524b < 5000) {
            qd.d("Not retrying to fetch app settings");
            return;
        }
        this.f4524b = n.j().c();
        boolean z2 = true;
        if (y9Var != null) {
            if (!(n.j().a() - y9Var.a() > ((Long) mu1.e().a(aw1.b2)).longValue()) && y9Var.b()) {
                z2 = false;
            }
        }
        if (z2) {
            if (context == null) {
                qd.d("Context not provided to fetch application settings");
                return;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                qd.d("App settings could not be fetched. Required parameters missing");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.f4523a = applicationContext;
            c4 b2 = n.p().b(this.f4523a, zzawvVar);
            x3<JSONObject> x3Var = b4.f5712b;
            t3 a2 = b2.a("google.afma.config.fetchAppSettings", x3Var, x3Var);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                qz0 a3 = a2.a(jSONObject);
                qz0 a4 = gz0.a(a3, d.f4522a, yd.f10544e);
                if (runnable != null) {
                    a3.a(runnable, yd.f10544e);
                }
                de.a(a4, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e2) {
                qd.b("Error requesting application settings", e2);
            }
        }
    }
}
