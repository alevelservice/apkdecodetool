package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: CoroutineExceptionHandlerImpl.kt */
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    private static final List<CoroutineExceptionHandler> f19982a;

    static {
        List<CoroutineExceptionHandler> a2;
        ServiceLoader load = ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader());
        kotlin.jvm.d.h.a((Object) load, "ServiceLoader.load(servi…serviceClass.classLoader)");
        a2 = kotlin.v.r.a((Iterable) load);
        f19982a = a2;
    }

    public static final void a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        Iterator<CoroutineExceptionHandler> it = f19982a.iterator();
        while (it.hasNext()) {
            try {
                it.next().handleException(coroutineContext, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                kotlin.jvm.d.h.a((Object) currentThread, "currentThread");
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, b0.a(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        kotlin.jvm.d.h.a((Object) currentThread2, "currentThread");
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
