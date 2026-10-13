package com.google.firebase.crashlytics.d.h;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: CrashlyticsReportDataCapture.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: e, reason: collision with root package name */
    private static final String f14547e = String.format(Locale.US, "Crashlytics Android SDK/%s", "17.3.0");

    /* renamed from: f, reason: collision with root package name */
    private static final Map<String, Integer> f14548f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    private final Context f14549a;

    /* renamed from: b, reason: collision with root package name */
    private final y f14550b;

    /* renamed from: c, reason: collision with root package name */
    private final b f14551c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.p.d f14552d;

    static {
        f14548f.put("armeabi", 5);
        f14548f.put("armeabi-v7a", 6);
        f14548f.put("arm64-v8a", 9);
        f14548f.put("x86", 0);
        f14548f.put("x86_64", 1);
    }

    public p(Context context, y yVar, b bVar, com.google.firebase.crashlytics.d.p.d dVar) {
        this.f14549a = context;
        this.f14550b = yVar;
        this.f14551c = bVar;
        this.f14552d = dVar;
    }

    private CrashlyticsReport.d b(String str, long j2) {
        CrashlyticsReport.d.b n = CrashlyticsReport.d.n();
        n.a(j2);
        n.b(str);
        n.a(f14547e);
        n.a(e());
        n.a(g());
        n.a(f());
        n.a(3);
        return n.a();
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a c() {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.AbstractC0124a f2 = CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.f();
        f2.a(0L);
        f2.b(0L);
        f2.a(this.f14551c.f14404d);
        f2.b(this.f14551c.f14402b);
        return f2.a();
    }

    private com.google.firebase.crashlytics.internal.model.v<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> d() {
        return com.google.firebase.crashlytics.internal.model.v.a(c());
    }

    private CrashlyticsReport.d.a e() {
        CrashlyticsReport.d.a.AbstractC0120a h2 = CrashlyticsReport.d.a.h();
        h2.d(this.f14550b.b());
        h2.f(this.f14551c.f14405e);
        h2.c(this.f14551c.f14406f);
        h2.e(this.f14550b.a());
        String a2 = this.f14551c.f14407g.a();
        if (a2 != null) {
            h2.a("Unity");
            h2.b(a2);
        }
        return h2.a();
    }

    private CrashlyticsReport.d.c f() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int b2 = b();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b3 = h.b();
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean j2 = h.j(this.f14549a);
        int c2 = h.c(this.f14549a);
        String str = Build.MANUFACTURER;
        String str2 = Build.PRODUCT;
        CrashlyticsReport.d.c.a j3 = CrashlyticsReport.d.c.j();
        j3.a(b2);
        j3.b(Build.MODEL);
        j3.b(availableProcessors);
        j3.b(b3);
        j3.a(blockCount);
        j3.a(j2);
        j3.c(c2);
        j3.a(str);
        j3.c(str2);
        return j3.a();
    }

    private CrashlyticsReport.d.e g() {
        CrashlyticsReport.d.e.a e2 = CrashlyticsReport.d.e.e();
        e2.a(3);
        e2.b(Build.VERSION.RELEASE);
        e2.a(Build.VERSION.CODENAME);
        e2.a(h.k(this.f14549a));
        return e2.a();
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d h() {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.AbstractC0128a d2 = CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.d();
        d2.b(ZimPlatform.REASON_0);
        d2.a(ZimPlatform.REASON_0);
        d2.a(0L);
        return d2.a();
    }

    public CrashlyticsReport a(String str, long j2) {
        CrashlyticsReport.a a2 = a();
        a2.a(b(str, j2));
        return a2.a();
    }

    public CrashlyticsReport.d.AbstractC0121d a(Throwable th, Thread thread, String str, long j2, int i2, int i3, boolean z) {
        int i4 = this.f14549a.getResources().getConfiguration().orientation;
        com.google.firebase.crashlytics.d.p.e eVar = new com.google.firebase.crashlytics.d.p.e(th, this.f14552d);
        CrashlyticsReport.d.AbstractC0121d.b g2 = CrashlyticsReport.d.AbstractC0121d.g();
        g2.a(str);
        g2.a(j2);
        g2.a(a(i4, eVar, thread, i2, i3, z));
        g2.a(a(i4));
        return g2.a();
    }

    private static int b() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = f14548f.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private CrashlyticsReport.a a() {
        CrashlyticsReport.a l2 = CrashlyticsReport.l();
        l2.e("17.3.0");
        l2.c(this.f14551c.f14401a);
        l2.d(this.f14550b.a());
        l2.a(this.f14551c.f14405e);
        l2.b(this.f14551c.f14406f);
        l2.a(4);
        return l2;
    }

    private CrashlyticsReport.d.AbstractC0121d.a a(int i2, com.google.firebase.crashlytics.d.p.e eVar, Thread thread, int i3, int i4, boolean z) {
        Boolean bool;
        ActivityManager.RunningAppProcessInfo a2 = h.a(this.f14551c.f14404d, this.f14549a);
        if (a2 != null) {
            bool = Boolean.valueOf(a2.importance != 100);
        } else {
            bool = null;
        }
        CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a f2 = CrashlyticsReport.d.AbstractC0121d.a.f();
        f2.a(bool);
        f2.a(i2);
        f2.a(a(eVar, thread, i3, i4, z));
        return f2.a();
    }

    private CrashlyticsReport.d.AbstractC0121d.c a(int i2) {
        e a2 = e.a(this.f14549a);
        Float a3 = a2.a();
        Double valueOf = a3 != null ? Double.valueOf(a3.doubleValue()) : null;
        int b2 = a2.b();
        boolean f2 = h.f(this.f14549a);
        long b3 = h.b() - h.a(this.f14549a);
        long a4 = h.a(Environment.getDataDirectory().getPath());
        CrashlyticsReport.d.AbstractC0121d.c.a g2 = CrashlyticsReport.d.AbstractC0121d.c.g();
        g2.a(valueOf);
        g2.a(b2);
        g2.a(f2);
        g2.b(i2);
        g2.b(b3);
        g2.a(a4);
        return g2.a();
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b a(com.google.firebase.crashlytics.d.p.e eVar, Thread thread, int i2, int i3, boolean z) {
        CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0125b e2 = CrashlyticsReport.d.AbstractC0121d.a.b.e();
        e2.b(a(eVar, thread, i2, z));
        e2.a(a(eVar, i2, i3));
        e2.a(h());
        e2.a(d());
        return e2.a();
    }

    private com.google.firebase.crashlytics.internal.model.v<CrashlyticsReport.d.AbstractC0121d.a.b.e> a(com.google.firebase.crashlytics.d.p.e eVar, Thread thread, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(a(thread, eVar.f14741c, i2));
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(a(key, this.f14552d.a(entry.getValue())));
                }
            }
        }
        return com.google.firebase.crashlytics.internal.model.v.a(arrayList);
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.e a(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return a(thread, stackTraceElementArr, 0);
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.e a(Thread thread, StackTraceElement[] stackTraceElementArr, int i2) {
        CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0129a d2 = CrashlyticsReport.d.AbstractC0121d.a.b.e.d();
        d2.a(thread.getName());
        d2.a(i2);
        d2.a(com.google.firebase.crashlytics.internal.model.v.a(a(stackTraceElementArr, i2)));
        return d2.a();
    }

    private com.google.firebase.crashlytics.internal.model.v<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> a(StackTraceElement[] stackTraceElementArr, int i2) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a f2 = CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.f();
            f2.a(i2);
            arrayList.add(a(stackTraceElement, f2));
        }
        return com.google.firebase.crashlytics.internal.model.v.a(arrayList);
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.c a(com.google.firebase.crashlytics.d.p.e eVar, int i2, int i3) {
        return a(eVar, i2, i3, 0);
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.c a(com.google.firebase.crashlytics.d.p.e eVar, int i2, int i3, int i4) {
        String str = eVar.f14740b;
        String str2 = eVar.f14739a;
        StackTraceElement[] stackTraceElementArr = eVar.f14741c;
        int i5 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        com.google.firebase.crashlytics.d.p.e eVar2 = eVar.f14742d;
        if (i4 >= i3) {
            com.google.firebase.crashlytics.d.p.e eVar3 = eVar2;
            int i6 = 0;
            while (eVar3 != null) {
                eVar3 = eVar3.f14742d;
                i6++;
            }
            i5 = i6;
        }
        CrashlyticsReport.d.AbstractC0121d.a.b.c.AbstractC0126a f2 = CrashlyticsReport.d.AbstractC0121d.a.b.c.f();
        f2.b(str);
        f2.a(str2);
        f2.a(com.google.firebase.crashlytics.internal.model.v.a(a(stackTraceElementArr, i2)));
        f2.a(i5);
        if (eVar2 != null && i5 == 0) {
            f2.a(a(eVar2, i2, i3, i4 + 1));
        }
        return f2.a();
    }

    private CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b a(StackTraceElement stackTraceElement, CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.AbstractC0131a abstractC0131a) {
        long j2 = 0;
        long max = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            j2 = stackTraceElement.getLineNumber();
        }
        abstractC0131a.b(max);
        abstractC0131a.b(str);
        abstractC0131a.a(fileName);
        abstractC0131a.a(j2);
        return abstractC0131a.a();
    }
}
