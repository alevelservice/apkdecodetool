package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: Exceptions.kt */
/* loaded from: classes2.dex */
public final class i0 extends Error {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(@NotNull String str, @NotNull Throwable th) {
        super(str, th);
        kotlin.jvm.d.h.b(str, "message");
        kotlin.jvm.d.h.b(th, "cause");
    }
}
