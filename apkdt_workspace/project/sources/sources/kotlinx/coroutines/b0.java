package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: CoroutineExceptionHandler.kt */
/* loaded from: classes2.dex */
public final class b0 {
    @InternalCoroutinesApi
    public static final void a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.get(CoroutineExceptionHandler.f19978c);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(coroutineContext, th);
            } else {
                a0.a(coroutineContext, th);
            }
        } catch (Throwable th2) {
            a0.a(coroutineContext, a(th, th2));
        }
    }

    @NotNull
    public static final Throwable a(@NotNull Throwable th, @NotNull Throwable th2) {
        kotlin.jvm.d.h.b(th, "originalException");
        kotlin.jvm.d.h.b(th2, "thrownException");
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        kotlin.c.a(runtimeException, th);
        return runtimeException;
    }
}
