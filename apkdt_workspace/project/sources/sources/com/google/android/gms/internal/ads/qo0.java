package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class qo0 implements ko0<ro0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f8988a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f8989b;

    public qo0(tz0 tz0Var, Context context) {
        this.f8988a = tz0Var;
        this.f8989b = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<ro0> a() {
        return this.f8988a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.to0

            /* renamed from: e, reason: collision with root package name */
            private final qo0 f9622e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9622e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f9622e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ro0 b() {
        boolean z;
        PackageManager packageManager = this.f8989b.getPackageManager();
        Locale locale = Locale.getDefault();
        boolean z2 = a(packageManager, "geo:0,0?q=donuts") != null;
        boolean z3 = a(packageManager, "http://www.google.com") != null;
        String country = locale.getCountry();
        boolean startsWith = Build.DEVICE.startsWith("generic");
        boolean a2 = com.google.android.gms.common.util.i.a(this.f8989b);
        boolean b2 = com.google.android.gms.common.util.i.b(this.f8989b);
        String language = locale.getLanguage();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList localeList = LocaleList.getDefault();
            for (int i2 = 0; i2 < localeList.size(); i2++) {
                arrayList.add(localeList.get(i2).getLanguage());
            }
        }
        String a3 = a(this.f8989b, packageManager);
        String a4 = a(this.f8989b);
        String str = Build.FINGERPRINT;
        Context context = this.f8989b;
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, AntDetector.ACTION_ID_SAMPLE);
            if (queryIntentActivities != null && resolveActivity != null) {
                for (int i3 = 0; i3 < queryIntentActivities.size(); i3++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i3).activityInfo.name)) {
                        z = resolveActivity.activityInfo.packageName.equals(ze1.a(context));
                        break;
                    }
                }
            }
        }
        z = false;
        return new ro0(z2, z3, country, startsWith, a2, b2, language, arrayList, a3, a4, str, z, Build.MODEL, com.google.android.gms.ads.internal.n.e().d());
    }

    private static String a(Context context) {
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
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), AntDetector.ACTION_ID_SAMPLE);
    }
}
