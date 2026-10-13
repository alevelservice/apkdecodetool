package g.c.a.c;

import io.reactivex.rxjava3.annotations.NonNull;
import java.util.Objects;

/* compiled from: Disposable.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class b {
    @NonNull
    public static c a(@NonNull Runnable runnable) {
        Objects.requireNonNull(runnable, "run is null");
        return new f(runnable);
    }

    @NonNull
    public static c a() {
        return g.c.a.f.a.b.INSTANCE;
    }
}
