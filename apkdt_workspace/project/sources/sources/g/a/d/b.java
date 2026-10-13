package g.a.d;

/* compiled from: Preconditions.java */
/* loaded from: classes2.dex */
public final class b {
    public static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }
}
