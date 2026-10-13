package e.b.b.a.a.e;

/* compiled from: TraceIdUtil.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public static String f17069a = "_";

    /* renamed from: b, reason: collision with root package name */
    private static int f17070b = 1;

    /* renamed from: c, reason: collision with root package name */
    private static String f17071c = "";

    public static String a() {
        f17071c = "20000000" + c() + b();
        return f17071c;
    }

    private static String b() {
        if (f17070b == 10000) {
            f17070b = 1;
        }
        int i2 = f17070b;
        f17070b = i2 + 1;
        return String.format("%04d", Integer.valueOf(i2));
    }

    private static long c() {
        return System.currentTimeMillis();
    }
}
