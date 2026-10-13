package kotlin.jvm.d;

/* compiled from: TypeIntrinsics.java */
/* loaded from: classes2.dex */
public class p {
    private static <T extends Throwable> T a(T t) {
        h.a((Throwable) t, p.class.getName());
        return t;
    }

    public static boolean b(Object obj, int i2) {
        return (obj instanceof kotlin.d) && a(obj) == i2;
    }

    public static void a(Object obj, String str) {
        a((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
        throw null;
    }

    public static void a(String str) {
        a(new ClassCastException(str));
        throw null;
    }

    public static ClassCastException a(ClassCastException classCastException) {
        a(classCastException);
        throw classCastException;
    }

    public static int a(Object obj) {
        if (obj instanceof f) {
            return ((f) obj).getArity();
        }
        if (obj instanceof kotlin.jvm.c.a) {
            return 0;
        }
        if (obj instanceof kotlin.jvm.c.b) {
            return 1;
        }
        return obj instanceof kotlin.jvm.c.c ? 2 : -1;
    }

    public static Object a(Object obj, int i2) {
        if (obj == null || b(obj, i2)) {
            return obj;
        }
        a(obj, "kotlin.jvm.functions.Function" + i2);
        throw null;
    }
}
