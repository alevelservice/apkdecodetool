package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ub {

    /* renamed from: a, reason: collision with root package name */
    private final Object f9699a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private String f9700b = "";

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private String f9701c = "";

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f9702d = false;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private String f9703e = "";

    @VisibleForTesting
    private final boolean b(Context context, String str, String str2) {
        String d2 = d(context, d(context, (String) mu1.e().a(aw1.z2), str, str2).toString(), str2);
        if (TextUtils.isEmpty(d2)) {
            qd.a("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(d2.trim());
            String optString = jSONObject.optString("gct");
            this.f9703e = jSONObject.optString(H5PluginHandler.ZIM_IDENTIFY_STATUS);
            synchronized (this.f9699a) {
                this.f9701c = optString;
            }
            return true;
        } catch (JSONException e2) {
            qd.c("Fail to get in app preview response json.", e2);
            return false;
        }
    }

    @VisibleForTesting
    private final boolean c(Context context, String str, String str2) {
        String d2 = d(context, d(context, (String) mu1.e().a(aw1.A2), str, str2).toString(), str2);
        if (TextUtils.isEmpty(d2)) {
            qd.a("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(d2.trim()).optString("debug_mode"));
            synchronized (this.f9699a) {
                this.f9702d = equals;
            }
            return equals;
        } catch (JSONException e2) {
            qd.c("Fail to get debug mode response json.", e2);
            return false;
        }
    }

    @VisibleForTesting
    private static String d(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.n.c().a(context, str2));
        qz0<String> a2 = new gc(context).a(str, hashMap);
        try {
            return a2.get(((Integer) mu1.e().a(aw1.C2)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            String valueOf = String.valueOf(str);
            qd.b(valueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(valueOf) : new String("Interrupted while retriving a response from: "), e2);
            a2.cancel(true);
            return null;
        } catch (TimeoutException e3) {
            String valueOf2 = String.valueOf(str);
            qd.b(valueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(valueOf2) : new String("Timeout while retriving a response from: "), e3);
            a2.cancel(true);
            return null;
        } catch (Exception e4) {
            String valueOf3 = String.valueOf(str);
            qd.b(valueOf3.length() != 0 ? "Error retriving a response from: ".concat(valueOf3) : new String("Error retriving a response from: "), e4);
            return null;
        }
    }

    private final void e(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.n.c();
        wa.a(context, d(context, (String) mu1.e().a(aw1.y2), str, str2));
    }

    public final void a(Context context, String str, String str2) {
        if (!b(context, str, str2)) {
            a(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(this.f9703e)) {
            qd.a("Creative is not pushed for this device.");
            a(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.f9703e)) {
            qd.a("The app is not linked for creative preview.");
            e(context, str, str2);
        } else if (ZimPlatform.REASON_0.equals(this.f9703e)) {
            qd.a("Device is linked for in app preview.");
            a(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final void a(Context context, String str, String str2, @Nullable String str3) {
        boolean b2 = b();
        if (c(context, str, str2)) {
            if (!b2 && !TextUtils.isEmpty(str3)) {
                c(context, str2, str3, str);
            }
            qd.a("Device is linked for debug signals.");
            a(context, "The device is successfully linked for troubleshooting.", false, true);
            return;
        }
        e(context, str, str2);
    }

    private final Uri d(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", a(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    private final void c(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = d(context, (String) mu1.e().a(aw1.B2), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.n.c();
        wa.a(context, str, buildUpon.build().toString());
    }

    public final boolean b(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !com.google.android.gms.ads.internal.n.m().b()) {
            return false;
        }
        qd.a("Sending troubleshooting signals to the server.");
        c(context, str, str2, str3);
        return true;
    }

    private final String a(Context context) {
        String str;
        synchronized (this.f9699a) {
            if (TextUtils.isEmpty(this.f9700b)) {
                com.google.android.gms.ads.internal.n.c();
                this.f9700b = wa.c(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.f9700b)) {
                    com.google.android.gms.ads.internal.n.c();
                    this.f9700b = wa.b();
                    com.google.android.gms.ads.internal.n.c();
                    wa.b(context, "debug_signals_id.txt", this.f9700b);
                }
            }
            str = this.f9700b;
        }
        return str;
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f9699a) {
            z = this.f9702d;
        }
        return z;
    }

    public final String a() {
        String str;
        synchronized (this.f9699a) {
            str = this.f9701c;
        }
        return str;
    }

    @VisibleForTesting
    private final void a(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            qd.c("Can not create dialog without Activity Context");
        } else {
            wa.f10063h.post(new xb(this, context, str, z, z2));
        }
    }
}
