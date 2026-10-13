package e.f.c.d;

/* compiled from: FLog.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static c f17146a = b.a();

    public static boolean a(int i2) {
        return f17146a.a(i2);
    }

    public static void b(Class<?> cls, String str) {
        if (f17146a.a(2)) {
            f17146a.d(a(cls), str);
        }
    }

    public static void c(Class<?> cls, String str) {
        if (f17146a.a(5)) {
            f17146a.c(a(cls), str);
        }
    }

    public static void d(String str, String str2, Object... objArr) {
        if (f17146a.a(6)) {
            f17146a.e(str, a(str2, objArr));
        }
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2) {
        if (f17146a.a(2)) {
            f17146a.d(a(cls), a(str, obj, obj2));
        }
    }

    public static void b(Class<?> cls, String str, Object obj) {
        if (f17146a.a(2)) {
            f17146a.d(a(cls), a(str, obj));
        }
    }

    public static void c(String str, String str2, Object... objArr) {
        if (f17146a.a(5)) {
            f17146a.c(str, a(str2, objArr));
        }
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (a(2)) {
            b(cls, a(str, obj, obj2, obj3));
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        if (f17146a.a(2)) {
            f17146a.d(str, a(str2, objArr));
        }
    }

    public static void c(Class<?> cls, String str, Object... objArr) {
        if (f17146a.a(5)) {
            f17146a.c(a(cls), a(str, objArr));
        }
    }

    public static void a(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f17146a.a(2)) {
            f17146a.d(a(cls), a(str, obj, obj2, obj3, obj4));
        }
    }

    public static void b(Class<?> cls, String str, Object... objArr) {
        if (f17146a.a(2)) {
            f17146a.d(a(cls), a(str, objArr));
        }
    }

    public static void c(String str, String str2) {
        if (f17146a.a(6)) {
            f17146a.e(str, str2);
        }
    }

    public static void a(String str, String str2) {
        if (f17146a.a(3)) {
            f17146a.b(str, str2);
        }
    }

    public static void b(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (a(5)) {
            b(cls, a(str, objArr), th);
        }
    }

    public static void c(Class<?> cls, String str, Throwable th) {
        if (f17146a.a(6)) {
            f17146a.d(a(cls), str, th);
        }
    }

    public static void a(Class<?> cls, String str, Object obj) {
        if (f17146a.a(3)) {
            f17146a.b(a(cls), a(str, obj));
        }
    }

    public static void b(Class<?> cls, String str, Throwable th) {
        if (f17146a.a(5)) {
            f17146a.a(a(cls), str, th);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f17146a.a(3)) {
            f17146a.c(str, str2, th);
        }
    }

    public static void b(String str, String str2) {
        if (f17146a.a(6)) {
            f17146a.a(str, str2);
        }
    }

    public static void a(Class<?> cls, String str) {
        if (f17146a.a(6)) {
            f17146a.a(a(cls), str);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (f17146a.a(6)) {
            f17146a.b(str, str2, th);
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (f17146a.a(6)) {
            f17146a.a(str, a(str2, objArr));
        }
    }

    public static void a(Class<?> cls, String str, Object... objArr) {
        if (f17146a.a(6)) {
            f17146a.a(a(cls), a(str, objArr));
        }
    }

    public static void a(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (f17146a.a(6)) {
            f17146a.b(a(cls), a(str, objArr), th);
        }
    }

    public static void a(Class<?> cls, String str, Throwable th) {
        if (f17146a.a(6)) {
            f17146a.b(a(cls), str, th);
        }
    }

    private static String a(String str, Object... objArr) {
        return String.format(null, str, objArr);
    }

    private static String a(Class<?> cls) {
        return cls.getSimpleName();
    }
}
