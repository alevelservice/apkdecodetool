package e.a.a.b.b;

/* compiled from: TAssert.java */
/* loaded from: classes.dex */
public abstract class b {
    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void a(Object obj) {
        a(obj, "[Assertion failed] - this argument is required; it must not be null");
    }
}
