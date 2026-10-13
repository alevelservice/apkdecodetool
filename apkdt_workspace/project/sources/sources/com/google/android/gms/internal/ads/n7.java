package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n7 {
    private int A;
    private String B;
    private boolean C;

    /* renamed from: a, reason: collision with root package name */
    private int f8279a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f8280b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f8281c;

    /* renamed from: d, reason: collision with root package name */
    private int f8282d;

    /* renamed from: e, reason: collision with root package name */
    private int f8283e;

    /* renamed from: f, reason: collision with root package name */
    private int f8284f;

    /* renamed from: g, reason: collision with root package name */
    private String f8285g;

    /* renamed from: h, reason: collision with root package name */
    private int f8286h;

    /* renamed from: i, reason: collision with root package name */
    private int f8287i;

    /* renamed from: j, reason: collision with root package name */
    private int f8288j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f8289k;

    /* renamed from: l, reason: collision with root package name */
    private int f8290l;
    private double m;
    private boolean n;
    private String o;
    private String p;
    private boolean q;
    private boolean r;
    private String s;
    private boolean t;
    private final boolean u;
    private boolean v;
    private String w;
    private String x;
    private float y;
    private int z;

    public n7(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        a(context);
        b(context);
        c(context);
        Locale locale = Locale.getDefault();
        this.q = a(packageManager, "geo:0,0?q=donuts") != null;
        this.r = a(packageManager, "http://www.google.com") != null;
        this.s = locale.getCountry();
        mu1.a();
        this.t = gd.a();
        this.u = com.google.android.gms.common.util.i.a(context);
        this.v = com.google.android.gms.common.util.i.b(context);
        this.w = locale.getLanguage();
        this.x = a(context, packageManager);
        this.B = d(context);
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.y = displayMetrics.density;
        this.z = displayMetrics.widthPixels;
        this.A = displayMetrics.heightPixels;
    }

    private final void a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f8279a = audioManager.getMode();
                this.f8280b = audioManager.isMusicActive();
                this.f8281c = audioManager.isSpeakerphoneOn();
                this.f8282d = audioManager.getStreamVolume(3);
                this.f8283e = audioManager.getRingerMode();
                this.f8284f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.n.g().a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f8279a = -2;
        this.f8280b = false;
        this.f8281c = false;
        this.f8282d = 0;
        this.f8283e = 2;
        this.f8284f = 0;
    }

    @TargetApi(16)
    private final void b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.f8285g = telephonyManager.getNetworkOperator();
        this.f8287i = telephonyManager.getNetworkType();
        this.f8288j = telephonyManager.getPhoneType();
        this.f8286h = -2;
        this.f8289k = false;
        this.f8290l = -1;
        com.google.android.gms.ads.internal.n.c();
        if (wa.b(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.f8286h = activeNetworkInfo.getType();
                this.f8290l = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.f8286h = -1;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                this.f8289k = connectivityManager.isActiveNetworkMetered();
            }
        }
    }

    private final void c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(H5PluginHandler.ZIM_IDENTIFY_STATUS, -1);
            this.m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            this.n = intExtra == 2 || intExtra == 5;
        } else {
            this.m = -1.0d;
            this.n = false;
        }
    }

    private static String d(Context context) {
        try {
            PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b("com.android.vending", 128);
            if (b2 != null) {
                int i2 = b2.versionCode;
                String str = b2.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i2);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static String a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a2 = a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a2 == null || (activityInfo = a2.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b(activityInfo.packageName, 0);
            if (b2 != null) {
                int i2 = b2.versionCode;
                String str = activityInfo.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i2);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private static ResolveInfo a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), AntDetector.ACTION_ID_SAMPLE);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.g().a(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    public n7(Context context, o7 o7Var) {
        a(context);
        b(context);
        c(context);
        this.o = Build.FINGERPRINT;
        this.p = Build.DEVICE;
        this.C = com.google.android.gms.common.util.o.b() && sw1.a(context);
        this.q = o7Var.f8483a;
        this.r = o7Var.f8484b;
        this.s = o7Var.f8485c;
        this.t = o7Var.f8486d;
        this.u = o7Var.f8487e;
        this.v = o7Var.f8488f;
        this.w = o7Var.f8489g;
        this.x = o7Var.f8490h;
        this.B = o7Var.f8491i;
        this.y = o7Var.f8494l;
        this.z = o7Var.m;
        this.A = o7Var.n;
    }

    public final o7 a() {
        return new o7(this.f8279a, this.q, this.r, this.f8285g, this.s, this.t, this.u, this.v, this.f8280b, this.f8281c, this.w, this.x, this.B, this.f8282d, this.f8286h, this.f8287i, this.f8288j, this.f8283e, this.f8284f, this.y, this.z, this.A, this.m, this.n, this.f8289k, this.f8290l, this.o, this.C, this.p);
    }
}
