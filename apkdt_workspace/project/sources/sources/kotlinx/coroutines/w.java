package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: Exceptions.kt */
@InternalCoroutinesApi
/* loaded from: classes2.dex */
public final class w extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(@NotNull String str, @NotNull Throwable th) {
        super(str, th);
        kotlin.jvm.d.h.b(str, "message");
        kotlin.jvm.d.h.b(th, "cause");
    }
}
