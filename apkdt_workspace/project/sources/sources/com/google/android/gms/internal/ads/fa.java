package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fa {

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private final String f6604g;

    /* renamed from: h, reason: collision with root package name */
    private final pa f6605h;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private long f6598a = -1;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private long f6599b = -1;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    private int f6600c = -1;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    int f6601d = -1;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private long f6602e = 0;

    /* renamed from: f, reason: collision with root package name */
    private final Object f6603f = new Object();

    /* renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    private int f6606i = 0;

    /* renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    private int f6607j = 0;

    public fa(String str, pa paVar) {
        this.f6604g = str;
        this.f6605h = paVar;
    }

    public final void a() {
        synchronized (this.f6603f) {
            this.f6607j++;
        }
    }

    public final void b() {
        synchronized (this.f6603f) {
            this.f6606i++;
        }
    }

    public final void a(zztp zztpVar, long j2) {
        synchronized (this.f6603f) {
            long f2 = this.f6605h.f();
            long a2 = com.google.android.gms.ads.internal.n.j().a();
            if (this.f6599b == -1) {
                if (a2 - f2 > ((Long) mu1.e().a(aw1.K0)).longValue()) {
                    this.f6601d = -1;
                } else {
                    this.f6601d = this.f6605h.j();
                }
                this.f6599b = j2;
                this.f6598a = this.f6599b;
            } else {
                this.f6598a = j2;
            }
            if (zztpVar == null || zztpVar.f11239g == null || zztpVar.f11239g.getInt("gw", 2) != 1) {
                this.f6600c++;
                this.f6601d++;
                if (this.f6601d == 0) {
                    this.f6602e = 0L;
                    this.f6605h.a(a2);
                } else {
                    this.f6602e = a2 - this.f6605h.g();
                }
            }
        }
    }

    public final Bundle a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f6603f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.f6604g);
            bundle.putLong("basets", this.f6599b);
            bundle.putLong("currts", this.f6598a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f6600c);
            bundle.putInt("preqs_in_session", this.f6601d);
            bundle.putLong("time_in_session", this.f6602e);
            bundle.putInt("pclick", this.f6606i);
            bundle.putInt("pimp", this.f6607j);
            bundle.putBoolean("support_transparent_background", a(context));
        }
        return bundle;
    }

    private static boolean a(Context context) {
        Context c2 = z7.c(context);
        int identifier = c2.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            qd.c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == c2.getPackageManager().getActivityInfo(new ComponentName(c2.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            qd.c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            qd.d("Fail to fetch AdActivity theme");
            qd.c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }
}
