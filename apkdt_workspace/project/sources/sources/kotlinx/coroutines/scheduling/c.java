package kotlinx.coroutines.scheduling;

import kotlin.ranges.q;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.z;
import org.jetbrains.annotations.NotNull;

/* compiled from: Dispatcher.kt */
/* loaded from: classes2.dex */
public final class c extends d {

    /* renamed from: j, reason: collision with root package name */
    @NotNull
    private static final z f20020j;

    /* renamed from: k, reason: collision with root package name */
    public static final c f20021k;

    static {
        int a2;
        int a3;
        c cVar = new c();
        f20021k = cVar;
        a2 = q.a(64, u.a());
        a3 = w.a("kotlinx.coroutines.io.parallelism", a2, 0, 0, 12, (Object) null);
        f20020j = cVar.c(a3);
    }

    private c() {
        super(0, 0, null, 7, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("DefaultDispatcher cannot be closed");
    }

    @NotNull
    public final z o() {
        return f20020j;
    }

    @Override // kotlinx.coroutines.z
    @NotNull
    public String toString() {
        return "DefaultDispatcher";
    }
}
