package g.c.a.b;

import io.reactivex.rxjava3.annotations.CheckReturnValue;

/* compiled from: Flowable.java */
/* loaded from: classes2.dex */
public abstract class b<T> implements k.a.a<T> {

    /* renamed from: a, reason: collision with root package name */
    static final int f18261a = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    @CheckReturnValue
    public static int a() {
        return f18261a;
    }
}
