package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class w1 {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f10014a = Log.isLoggable("Volley", 2);

    /* renamed from: b, reason: collision with root package name */
    private static final String f10015b = w1.class.getName();

    public static void a(String str, Object... objArr) {
        d(str, objArr);
    }

    public static void b(String str, Object... objArr) {
        d(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        if (f10014a) {
            d(str, objArr);
        }
    }

    private static String d(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i2 = 2;
        while (true) {
            if (i2 >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!stackTrace[i2].getClassName().equals(f10015b)) {
                String className = stackTrace[i2].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i2].getMethodName();
                StringBuilder sb = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length());
                sb.append(substring2);
                sb.append(".");
                sb.append(methodName);
                str2 = sb.toString();
                break;
            }
            i2++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void a(Throwable th, String str, Object... objArr) {
        d(str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: c, reason: collision with root package name */
        public static final boolean f10016c = w1.f10014a;

        /* renamed from: a, reason: collision with root package name */
        private final List<y3> f10017a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private boolean f10018b = false;

        public final synchronized void a(String str, long j2) {
            if (!this.f10018b) {
                this.f10017a.add(new y3(str, j2, SystemClock.elapsedRealtime()));
            } else {
                throw new IllegalStateException("Marker added to finished log");
            }
        }

        protected final void finalize() {
            if (this.f10018b) {
                return;
            }
            a("Request on the loose");
            w1.b("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }

        public final synchronized void a(String str) {
            this.f10018b = true;
            long j2 = this.f10017a.size() == 0 ? 0L : this.f10017a.get(this.f10017a.size() - 1).f10474c - this.f10017a.get(0).f10474c;
            if (j2 <= 0) {
                return;
            }
            long j3 = this.f10017a.get(0).f10474c;
            w1.a("(%-4d ms) %s", Long.valueOf(j2), str);
            for (y3 y3Var : this.f10017a) {
                long j4 = y3Var.f10474c;
                w1.a("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(y3Var.f10473b), y3Var.f10472a);
                j3 = j4;
            }
        }
    }
}
