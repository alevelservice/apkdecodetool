package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes.dex */
public final class f3 extends e5 {

    /* renamed from: c, reason: collision with root package name */
    private char f12896c;

    /* renamed from: d, reason: collision with root package name */
    private long f12897d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private String f12898e;

    /* renamed from: f, reason: collision with root package name */
    private final h3 f12899f;

    /* renamed from: g, reason: collision with root package name */
    private final h3 f12900g;

    /* renamed from: h, reason: collision with root package name */
    private final h3 f12901h;

    /* renamed from: i, reason: collision with root package name */
    private final h3 f12902i;

    /* renamed from: j, reason: collision with root package name */
    private final h3 f12903j;

    /* renamed from: k, reason: collision with root package name */
    private final h3 f12904k;

    /* renamed from: l, reason: collision with root package name */
    private final h3 f12905l;
    private final h3 m;
    private final h3 n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f3(j4 j4Var) {
        super(j4Var);
        this.f12896c = (char) 0;
        this.f12897d = -1L;
        this.f12899f = new h3(this, 6, false, false);
        this.f12900g = new h3(this, 6, true, false);
        this.f12901h = new h3(this, 6, false, true);
        this.f12902i = new h3(this, 5, false, false);
        this.f12903j = new h3(this, 5, true, false);
        this.f12904k = new h3(this, 5, false, true);
        this.f12905l = new h3(this, 4, false, false);
        this.m = new h3(this, 3, false, false);
        this.n = new h3(this, 2, false, false);
    }

    @VisibleForTesting
    private final String A() {
        String str;
        synchronized (this) {
            if (this.f12898e == null) {
                if (this.f12908a.m() != null) {
                    this.f12898e = this.f12908a.m();
                } else {
                    this.f12898e = z8.r();
                }
            }
            str = this.f12898e;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(String str) {
        if (str == null) {
            return null;
        }
        return new g3(str);
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean o() {
        return false;
    }

    public final h3 q() {
        return this.f12899f;
    }

    public final h3 r() {
        return this.f12900g;
    }

    public final h3 s() {
        return this.f12901h;
    }

    public final h3 t() {
        return this.f12902i;
    }

    public final h3 u() {
        return this.f12903j;
    }

    public final h3 v() {
        return this.f12904k;
    }

    public final h3 w() {
        return this.f12905l;
    }

    public final h3 x() {
        return this.m;
    }

    public final h3 y() {
        return this.n;
    }

    public final String z() {
        Pair<String, Long> a2 = c().f13113d.a();
        if (a2 == null || a2 == o3.A) {
            return null;
        }
        String valueOf = String.valueOf(a2.second);
        String str = (String) a2.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i2, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && a(i2)) {
            a(i2, a(false, str, obj, obj2, obj3));
        }
        if (z2 || i2 < 5) {
            return;
        }
        com.google.android.gms.common.internal.m.a(str);
        d4 i3 = this.f12908a.i();
        if (i3 == null) {
            a(6, "Scheduler not set. Not logging error/warn");
        } else {
            if (!i3.l()) {
                a(6, "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            i3.a(new e3(this, i2 >= 9 ? 8 : i2, str, obj, obj2, obj3));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final boolean a(int i2) {
        return Log.isLoggable(A(), i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final void a(int i2, String str) {
        A();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String a2 = a(z, obj);
        String a3 = a(z, obj2);
        String a4 = a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str2);
            sb.append(a2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str2);
            sb.append(a3);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a4)) {
            sb.append(str2);
            sb.append(a4);
        }
        return sb.toString();
    }

    @VisibleForTesting
    private static String a(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i2 = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l2 = (Long) obj;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str2 = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String b2 = b(j4.class.getCanonicalName());
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i2];
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && b(className).equals(b2)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
                i2++;
            }
            return sb2.toString();
        }
        if (!(obj instanceof g3)) {
            return z ? "-" : String.valueOf(obj);
        }
        str = ((g3) obj).f12929a;
        return str;
    }
}
