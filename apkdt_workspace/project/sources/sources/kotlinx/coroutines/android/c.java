package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.jvm.d.h;
import kotlin.o;
import kotlin.r;
import org.jetbrains.annotations.NotNull;

/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes2.dex */
public final class c {
    static {
        Object m23constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Looper mainLooper = Looper.getMainLooper();
            h.a((Object) mainLooper, "Looper.getMainLooper()");
            m23constructorimpl = Result.m23constructorimpl(new a(a(mainLooper, true), "Main"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m23constructorimpl = Result.m23constructorimpl(o.a(th));
        }
        if (Result.m28isFailureimpl(m23constructorimpl)) {
            m23constructorimpl = null;
        }
    }

    @VisibleForTesting
    @NotNull
    public static final Handler a(@NotNull Looper looper, boolean z) {
        int i2;
        h.b(looper, "$this$asHandler");
        if (!z || (i2 = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i2 >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            if (invoke != null) {
                return (Handler) invoke;
            }
            throw new r("null cannot be cast to non-null type android.os.Handler");
        }
        try {
            Constructor declaredConstructor = Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE);
            h.a((Object) declaredConstructor, "Handler::class.java.getD…:class.javaPrimitiveType)");
            Object newInstance = declaredConstructor.newInstance(looper, null, true);
            h.a(newInstance, "constructor.newInstance(this, null, true)");
            return (Handler) newInstance;
        } catch (NoSuchMethodException unused) {
            return new Handler(looper);
        }
    }
}
