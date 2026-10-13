package kotlin;

import com.ap.zoloz.hummer.biz.HummerConstants;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;

/* compiled from: Result.kt */
/* loaded from: classes2.dex */
public final class o {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static final Object a(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        return new Result.b(th);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final void a(@NotNull Object obj) {
        if (obj instanceof Result.b) {
            throw ((Result.b) obj).exception;
        }
    }
}
