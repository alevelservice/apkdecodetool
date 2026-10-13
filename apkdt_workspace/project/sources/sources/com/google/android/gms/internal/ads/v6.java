package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.alipay.mobile.security.bio.workspace.Env;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class v6 implements z6 {

    /* renamed from: f, reason: collision with root package name */
    private static final Object f9864f = new Object();

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private static z6 f9865g;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    private static z6 f9866h;

    /* renamed from: a, reason: collision with root package name */
    private final Object f9867a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f9868b;

    /* renamed from: c, reason: collision with root package name */
    private final WeakHashMap<Thread, Boolean> f9869c;

    /* renamed from: d, reason: collision with root package name */
    private final ExecutorService f9870d;

    /* renamed from: e, reason: collision with root package name */
    private final zzawv f9871e;

    private v6(Context context) {
        this(context, zzawv.j());
    }

    public static z6 a(Context context) {
        synchronized (f9864f) {
            if (f9865g == null) {
                if (((Boolean) mu1.e().a(aw1.f5669e)).booleanValue()) {
                    f9865g = new v6(context);
                } else {
                    f9865g = new y6();
                }
            }
        }
        return f9865g;
    }

    private v6(Context context, zzawv zzawvVar) {
        this.f9867a = new Object();
        this.f9869c = new WeakHashMap<>();
        this.f9870d = fw0.a().a(kw0.f7775a);
        this.f9868b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f9871e = zzawvVar;
    }

    public static z6 a(Context context, zzawv zzawvVar) {
        synchronized (f9864f) {
            if (f9866h == null) {
                if (((Boolean) mu1.e().a(aw1.f5669e)).booleanValue()) {
                    v6 v6Var = new v6(context, zzawvVar);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (v6Var.f9867a) {
                            v6Var.f9869c.put(thread, true);
                        }
                        thread.setUncaughtExceptionHandler(new w6(v6Var, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new x6(v6Var, Thread.getDefaultUncaughtExceptionHandler()));
                    f9866h = v6Var;
                } else {
                    f9866h = new y6();
                }
            }
        }
        return f9866h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        if (r3 == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Thread r10, java.lang.Throwable r11) {
        /*
            r9 = this;
            r10 = 1
            r0 = 0
            if (r11 == 0) goto L40
            r1 = r11
            r2 = 0
            r3 = 0
        L7:
            if (r1 == 0) goto L3b
            java.lang.StackTraceElement[] r4 = r1.getStackTrace()
            int r5 = r4.length
            r6 = r3
            r3 = r2
            r2 = 0
        L11:
            if (r2 >= r5) goto L34
            r7 = r4[r2]
            java.lang.String r8 = r7.getClassName()
            boolean r8 = com.google.android.gms.internal.ads.gd.b(r8)
            if (r8 == 0) goto L20
            r3 = 1
        L20:
            java.lang.Class<com.google.android.gms.internal.ads.v6> r8 = com.google.android.gms.internal.ads.v6.class
            java.lang.String r8 = r8.getName()
            java.lang.String r7 = r7.getClassName()
            boolean r7 = r8.equals(r7)
            if (r7 == 0) goto L31
            r6 = 1
        L31:
            int r2 = r2 + 1
            goto L11
        L34:
            java.lang.Throwable r1 = r1.getCause()
            r2 = r3
            r3 = r6
            goto L7
        L3b:
            if (r2 == 0) goto L40
            if (r3 != 0) goto L40
            goto L41
        L40:
            r10 = 0
        L41:
            if (r10 == 0) goto L4a
            r10 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r0 = ""
            r9.a(r11, r0, r10)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.v6.a(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.z6
    public final void a(Throwable th, String str) {
        a(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.z6
    public final void a(Throwable th, String str, float f2) {
        if (gd.a(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        f71.a(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        int i2 = 0;
        boolean z = Math.random() < ((double) f2);
        int i3 = f2 > 0.0f ? (int) (1.0f / f2) : 1;
        if (z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(a(name, stringWriter2, str, i3).toString());
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                final String str2 = (String) obj;
                final ud udVar = new ud();
                this.f9870d.execute(new Runnable(udVar, str2) { // from class: com.google.android.gms.internal.ads.u6

                    /* renamed from: e, reason: collision with root package name */
                    private final ud f9682e;

                    /* renamed from: f, reason: collision with root package name */
                    private final String f9683f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f9682e = udVar;
                        this.f9683f = str2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f9682e.a(this.f9683f);
                    }
                });
            }
        }
    }

    @VisibleForTesting
    private final Uri.Builder a(String str, String str2, String str3, int i2) {
        boolean z;
        String str4;
        try {
            z = com.google.android.gms.common.o.c.a(this.f9868b).a();
        } catch (Throwable th) {
            qd.b("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.f9868b.getPackageName();
        } catch (Throwable unused) {
            qd.d("Cannot obtain package name, proceeding.");
            str4 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(str6);
            str6 = sb.toString();
        }
        return appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.f9871e.f11000e).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", aw1.a())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "257050558").appendQueryParameter("rc", Env.NAME_DEV).appendQueryParameter("session_id", mu1.f()).appendQueryParameter("sampling_rate", Integer.toString(i2)).appendQueryParameter("pb_tm", String.valueOf(mu1.e().a(aw1.q3)));
    }
}
