package e.i.b.a;

import androidx.annotation.Nullable;

/* compiled from: Event.java */
/* loaded from: classes.dex */
public abstract class c<T> {
    public static <T> c<T> a(T t) {
        return new a(null, t, d.VERY_LOW);
    }

    public static <T> c<T> b(T t) {
        return new a(null, t, d.HIGHEST);
    }

    @Nullable
    public abstract Integer a();

    public abstract T b();

    public abstract d c();
}
