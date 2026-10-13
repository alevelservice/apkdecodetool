package com.google.firebase.crashlytics.d.l;

import android.app.ActivityManager;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.List;
import java.util.Map;

/* compiled from: SessionProtobufHelper.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final a f14649a = a.a(ZimPlatform.REASON_0);

    /* renamed from: b, reason: collision with root package name */
    private static final a f14650b = a.a("Unity");

    public static void a(c cVar, String str, String str2, long j2) {
        cVar.a(1, a.a(str2));
        cVar.a(2, a.a(str));
        cVar.a(3, j2);
    }

    public static void a(c cVar, String str, String str2, String str3, String str4, int i2, String str5) {
        a a2 = a.a(str);
        a a3 = a.a(str2);
        a a4 = a.a(str3);
        a a5 = a.a(str4);
        a a6 = str5 != null ? a.a(str5) : null;
        cVar.c(7, 2);
        cVar.f(a(a2, a3, a4, a5, i2, a6));
        cVar.a(1, a2);
        cVar.a(2, a3);
        cVar.a(3, a4);
        cVar.a(6, a5);
        if (a6 != null) {
            cVar.a(8, f14650b);
            cVar.a(9, a6);
        }
        cVar.a(10, i2);
    }

    public static void a(c cVar, String str, String str2, boolean z) {
        a a2 = a.a(str);
        a a3 = a.a(str2);
        cVar.c(8, 2);
        cVar.f(a(a2, a3, z));
        cVar.a(1, 3);
        cVar.a(2, a2);
        cVar.a(3, a3);
        cVar.a(4, z);
    }

    public static void a(c cVar, int i2, String str, int i3, long j2, long j3, boolean z, int i4, String str2, String str3) {
        a a2 = a(str);
        a a3 = a(str3);
        a a4 = a(str2);
        cVar.c(9, 2);
        cVar.f(a(i2, a2, i3, j2, j3, z, i4, a4, a3));
        cVar.a(3, i2);
        cVar.a(4, a2);
        cVar.d(5, i3);
        cVar.a(6, j2);
        cVar.a(7, j3);
        cVar.a(10, z);
        cVar.d(12, i4);
        if (a4 != null) {
            cVar.a(13, a4);
        }
        if (a3 != null) {
            cVar.a(14, a3);
        }
    }

    public static void a(c cVar, String str, String str2, String str3) {
        if (str == null) {
            str = "";
        }
        a a2 = a.a(str);
        a a3 = a(str2);
        a a4 = a(str3);
        int b2 = c.b(1, a2) + 0;
        if (str2 != null) {
            b2 += c.b(2, a3);
        }
        if (str3 != null) {
            b2 += c.b(3, a4);
        }
        cVar.c(6, 2);
        cVar.f(b2);
        cVar.a(1, a2);
        if (str2 != null) {
            cVar.a(2, a3);
        }
        if (str3 != null) {
            cVar.a(3, a4);
        }
    }

    public static void a(c cVar, long j2, String str, com.google.firebase.crashlytics.d.p.e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, Map<String, String> map, byte[] bArr, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3, String str2, String str3, Float f2, int i4, boolean z, long j3, long j4) {
        a aVar;
        a a2 = a.a(str2);
        a a3 = str3 == null ? null : a.a(str3.replace("-", ""));
        if (bArr != null) {
            aVar = a.a(bArr);
        } else {
            com.google.firebase.crashlytics.d.b.a().a("No log data to include with this event.");
            aVar = null;
        }
        cVar.c(10, 2);
        cVar.f(a(j2, str, eVar, thread, stackTraceElementArr, threadArr, list, i2, map, runningAppProcessInfo, i3, a2, a3, f2, i4, z, j3, j4, aVar));
        cVar.a(1, j2);
        cVar.a(2, a.a(str));
        a(cVar, eVar, thread, stackTraceElementArr, threadArr, list, i2, a2, a3, map, runningAppProcessInfo, i3);
        a(cVar, f2, i4, z, i3, j3, j4);
        a(cVar, aVar);
    }

    public static void a(c cVar, String str) {
        a a2 = a.a(str);
        cVar.c(7, 2);
        int b2 = c.b(2, a2);
        cVar.f(c.m(5) + c.k(b2) + b2);
        cVar.c(5, 2);
        cVar.f(b2);
        cVar.a(2, a2);
    }

    private static void a(c cVar, com.google.firebase.crashlytics.d.p.e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, a aVar, a aVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3) {
        cVar.c(3, 2);
        cVar.f(a(eVar, thread, stackTraceElementArr, threadArr, list, i2, aVar, aVar2, map, runningAppProcessInfo, i3));
        a(cVar, eVar, thread, stackTraceElementArr, threadArr, list, i2, aVar, aVar2);
        if (map != null && !map.isEmpty()) {
            a(cVar, map);
        }
        if (runningAppProcessInfo != null) {
            cVar.a(3, runningAppProcessInfo.importance != 100);
        }
        cVar.d(4, i3);
    }

    private static void a(c cVar, com.google.firebase.crashlytics.d.p.e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, a aVar, a aVar2) {
        cVar.c(1, 2);
        cVar.f(a(eVar, thread, stackTraceElementArr, threadArr, list, i2, aVar, aVar2));
        a(cVar, thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            a(cVar, threadArr[i3], list.get(i3), 0, false);
        }
        a(cVar, eVar, 1, i2, 2);
        cVar.c(3, 2);
        cVar.f(a());
        cVar.a(1, f14649a);
        cVar.a(2, f14649a);
        cVar.a(3, 0L);
        cVar.c(4, 2);
        cVar.f(a(aVar, aVar2));
        cVar.a(1, 0L);
        cVar.a(2, 0L);
        cVar.a(3, aVar);
        if (aVar2 != null) {
            cVar.a(4, aVar2);
        }
    }

    private static void a(c cVar, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            cVar.c(2, 2);
            cVar.f(a(entry.getKey(), entry.getValue()));
            cVar.a(1, a.a(entry.getKey()));
            String value = entry.getValue();
            if (value == null) {
                value = "";
            }
            cVar.a(2, a.a(value));
        }
    }

    private static void a(c cVar, com.google.firebase.crashlytics.d.p.e eVar, int i2, int i3, int i4) {
        cVar.c(i4, 2);
        cVar.f(a(eVar, 1, i3));
        cVar.a(1, a.a(eVar.f14740b));
        String str = eVar.f14739a;
        if (str != null) {
            cVar.a(3, a.a(str));
        }
        int i5 = 0;
        for (StackTraceElement stackTraceElement : eVar.f14741c) {
            a(cVar, 4, stackTraceElement, true);
        }
        com.google.firebase.crashlytics.d.p.e eVar2 = eVar.f14742d;
        if (eVar2 != null) {
            if (i2 < i3) {
                a(cVar, eVar2, i2 + 1, i3, 6);
                return;
            }
            while (eVar2 != null) {
                eVar2 = eVar2.f14742d;
                i5++;
            }
            cVar.d(7, i5);
        }
    }

    private static void a(c cVar, Thread thread, StackTraceElement[] stackTraceElementArr, int i2, boolean z) {
        cVar.c(1, 2);
        cVar.f(a(thread, stackTraceElementArr, i2, z));
        cVar.a(1, a.a(thread.getName()));
        cVar.d(2, i2);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            a(cVar, 3, stackTraceElement, z);
        }
    }

    private static void a(c cVar, int i2, StackTraceElement stackTraceElement, boolean z) {
        cVar.c(i2, 2);
        cVar.f(a(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            cVar.a(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            cVar.a(1, 0L);
        }
        cVar.a(2, a.a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            cVar.a(3, a.a(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            cVar.a(4, stackTraceElement.getLineNumber());
        }
        cVar.d(5, z ? 4 : 0);
    }

    private static void a(c cVar, Float f2, int i2, boolean z, int i3, long j2, long j3) {
        cVar.c(5, 2);
        cVar.f(a(f2, i2, z, i3, j2, j3));
        if (f2 != null) {
            cVar.a(1, f2.floatValue());
        }
        cVar.b(2, i2);
        cVar.a(3, z);
        cVar.d(4, i3);
        cVar.a(5, j2);
        cVar.a(6, j3);
    }

    private static void a(c cVar, a aVar) {
        if (aVar != null) {
            cVar.c(6, 2);
            cVar.f(a(aVar));
            cVar.a(1, aVar);
        }
    }

    private static int a(a aVar, a aVar2, a aVar3, a aVar4, int i2, a aVar5) {
        int b2 = c.b(1, aVar) + 0 + c.b(2, aVar2) + c.b(3, aVar3) + c.b(6, aVar4);
        if (aVar5 != null) {
            b2 = b2 + c.b(8, f14650b) + c.b(9, aVar5);
        }
        return b2 + c.e(10, i2);
    }

    private static int a(a aVar, a aVar2, boolean z) {
        return c.e(1, 3) + 0 + c.b(2, aVar) + c.b(3, aVar2) + c.b(4, z);
    }

    private static int a(int i2, a aVar, int i3, long j2, long j3, boolean z, int i4, a aVar2, a aVar3) {
        return c.e(3, i2) + 0 + (aVar == null ? 0 : c.b(4, aVar)) + c.g(5, i3) + c.b(6, j2) + c.b(7, j3) + c.b(10, z) + c.g(12, i4) + (aVar2 == null ? 0 : c.b(13, aVar2)) + (aVar3 != null ? c.b(14, aVar3) : 0);
    }

    private static int a(a aVar, a aVar2) {
        int b2 = c.b(1, 0L) + 0 + c.b(2, 0L) + c.b(3, aVar);
        return aVar2 != null ? b2 + c.b(4, aVar2) : b2;
    }

    private static int a(long j2, String str, com.google.firebase.crashlytics.d.p.e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3, a aVar, a aVar2, Float f2, int i4, boolean z, long j3, long j4, a aVar3) {
        int b2 = c.b(1, j2) + 0 + c.b(2, a.a(str));
        int a2 = a(eVar, thread, stackTraceElementArr, threadArr, list, i2, aVar, aVar2, map, runningAppProcessInfo, i3);
        int m = b2 + c.m(3) + c.k(a2) + a2;
        int a3 = a(f2, i4, z, i3, j3, j4);
        int m2 = m + c.m(5) + c.k(a3) + a3;
        if (aVar3 == null) {
            return m2;
        }
        int a4 = a(aVar3);
        return m2 + c.m(6) + c.k(a4) + a4;
    }

    private static int a(com.google.firebase.crashlytics.d.p.e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, a aVar, a aVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i3) {
        int a2 = a(eVar, thread, stackTraceElementArr, threadArr, list, i2, aVar, aVar2);
        int m = c.m(1) + c.k(a2) + a2 + 0;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                int a3 = a(entry.getKey(), entry.getValue());
                m += c.m(2) + c.k(a3) + a3;
            }
        }
        if (runningAppProcessInfo != null) {
            m += c.b(3, runningAppProcessInfo.importance != 100);
        }
        return m + c.g(4, i3);
    }

    private static int a(com.google.firebase.crashlytics.d.p.e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i2, a aVar, a aVar2) {
        int a2 = a(thread, stackTraceElementArr, 4, true);
        int m = c.m(1) + c.k(a2) + a2 + 0;
        int length = threadArr.length;
        int i3 = m;
        for (int i4 = 0; i4 < length; i4++) {
            int a3 = a(threadArr[i4], list.get(i4), 0, false);
            i3 += c.m(1) + c.k(a3) + a3;
        }
        int a4 = a(eVar, 1, i2);
        int m2 = i3 + c.m(2) + c.k(a4) + a4;
        int a5 = a();
        int m3 = m2 + c.m(3) + c.k(a5) + a5;
        int a6 = a(aVar, aVar2);
        return m3 + c.m(3) + c.k(a6) + a6;
    }

    private static int a(String str, String str2) {
        int b2 = c.b(1, a.a(str));
        if (str2 == null) {
            str2 = "";
        }
        return b2 + c.b(2, a.a(str2));
    }

    private static int a(Float f2, int i2, boolean z, int i3, long j2, long j3) {
        return (f2 != null ? 0 + c.b(1, f2.floatValue()) : 0) + c.f(2, i2) + c.b(3, z) + c.g(4, i3) + c.b(5, j2) + c.b(6, j3);
    }

    private static int a(a aVar) {
        return c.b(1, aVar);
    }

    private static int a(com.google.firebase.crashlytics.d.p.e eVar, int i2, int i3) {
        int i4 = 0;
        int b2 = c.b(1, a.a(eVar.f14740b)) + 0;
        String str = eVar.f14739a;
        if (str != null) {
            b2 += c.b(3, a.a(str));
        }
        int i5 = b2;
        for (StackTraceElement stackTraceElement : eVar.f14741c) {
            int a2 = a(stackTraceElement, true);
            i5 += c.m(4) + c.k(a2) + a2;
        }
        com.google.firebase.crashlytics.d.p.e eVar2 = eVar.f14742d;
        if (eVar2 == null) {
            return i5;
        }
        if (i2 < i3) {
            int a3 = a(eVar2, i2 + 1, i3);
            return i5 + c.m(6) + c.k(a3) + a3;
        }
        while (eVar2 != null) {
            eVar2 = eVar2.f14742d;
            i4++;
        }
        return i5 + c.g(7, i4);
    }

    private static int a() {
        return c.b(1, f14649a) + 0 + c.b(2, f14649a) + c.b(3, 0L);
    }

    private static int a(StackTraceElement stackTraceElement, boolean z) {
        int b2;
        if (stackTraceElement.isNativeMethod()) {
            b2 = c.b(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            b2 = c.b(1, 0L);
        }
        int b3 = b2 + 0 + c.b(2, a.a(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            b3 += c.b(3, a.a(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            b3 += c.b(4, stackTraceElement.getLineNumber());
        }
        return b3 + c.g(5, z ? 2 : 0);
    }

    private static int a(Thread thread, StackTraceElement[] stackTraceElementArr, int i2, boolean z) {
        int b2 = c.b(1, a.a(thread.getName())) + c.g(2, i2);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int a2 = a(stackTraceElement, z);
            b2 += c.m(3) + c.k(a2) + a2;
        }
        return b2;
    }

    private static a a(String str) {
        if (str == null) {
            return null;
        }
        return a.a(str);
    }
}
