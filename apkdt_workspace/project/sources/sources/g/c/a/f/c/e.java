package g.c.a.f.c;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;

/* compiled from: SimpleQueue.java */
/* loaded from: classes2.dex */
public interface e<T> {
    void clear();

    boolean isEmpty();

    boolean offer(@NonNull T t);

    @Nullable
    T poll();
}
