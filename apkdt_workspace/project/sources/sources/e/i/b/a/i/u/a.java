package e.i.b.a.i.u;

/* compiled from: Logging.java */
/* loaded from: classes.dex */
public final class a {
    private static String a(String str) {
        return "TransportRuntime." + str;
    }

    public static void b(String str, String str2, Object obj) {
        a(str);
        String.format(str2, obj);
    }

    public static void a(String str, String str2, Object obj) {
        a(str);
        String.format(str2, obj);
    }

    public static void a(String str, String str2, Object... objArr) {
        a(str);
        String.format(str2, objArr);
    }

    public static void a(String str, String str2) {
        a(str);
    }

    public static void a(String str, String str2, Throwable th) {
        a(str);
    }
}
