package kotlinx.coroutines;

import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CompletedExceptionally.kt */
/* loaded from: classes2.dex */
public final class s {
    @Nullable
    public static final <T> Object a(@NotNull Object obj) {
        if (Result.m29isSuccessimpl(obj)) {
            kotlin.o.a(obj);
            return obj;
        }
        Throwable m26exceptionOrNullimpl = Result.m26exceptionOrNullimpl(obj);
        if (m26exceptionOrNullimpl != null) {
            return new r(m26exceptionOrNullimpl, false, 2, null);
        }
        kotlin.jvm.d.h.a();
        throw null;
    }
}
