package kotlin.coroutines.jvm.internal;

import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;

/* compiled from: DebugProbes.kt */
/* loaded from: classes2.dex */
public final class g {
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> kotlin.coroutines.c<T> a(@NotNull kotlin.coroutines.c<? super T> cVar) {
        kotlin.jvm.d.h.b(cVar, "completion");
        return cVar;
    }

    @SinceKotlin(version = "1.3")
    public static final void b(@NotNull kotlin.coroutines.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "frame");
    }

    @SinceKotlin(version = "1.3")
    public static final void c(@NotNull kotlin.coroutines.c<?> cVar) {
        kotlin.jvm.d.h.b(cVar, "frame");
    }
}
