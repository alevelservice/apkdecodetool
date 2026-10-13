package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: CoroutineStart.kt */
/* loaded from: classes2.dex */
public enum h0 {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    @InternalCoroutinesApi
    public static /* synthetic */ void isLazy$annotations() {
    }

    @InternalCoroutinesApi
    public final <T> void invoke(@NotNull kotlin.jvm.c.b<? super kotlin.coroutines.c<? super T>, ? extends Object> bVar, @NotNull kotlin.coroutines.c<? super T> cVar) {
        kotlin.jvm.d.h.b(bVar, "block");
        kotlin.jvm.d.h.b(cVar, "completion");
        int i2 = g0.f20049a[ordinal()];
        if (i2 == 1) {
            kotlinx.coroutines.e2.a.a(bVar, cVar);
            return;
        }
        if (i2 == 2) {
            kotlin.coroutines.e.a(bVar, cVar);
        } else if (i2 == 3) {
            kotlinx.coroutines.e2.b.a(bVar, cVar);
        } else if (i2 != 4) {
            throw new kotlin.l();
        }
    }

    public final boolean isLazy() {
        return this == LAZY;
    }

    @InternalCoroutinesApi
    public final <R, T> void invoke(@NotNull kotlin.jvm.c.c<? super R, ? super kotlin.coroutines.c<? super T>, ? extends Object> cVar, R r, @NotNull kotlin.coroutines.c<? super T> cVar2) {
        kotlin.jvm.d.h.b(cVar, "block");
        kotlin.jvm.d.h.b(cVar2, "completion");
        int i2 = g0.f20050b[ordinal()];
        if (i2 == 1) {
            kotlinx.coroutines.e2.a.a(cVar, r, cVar2);
            return;
        }
        if (i2 == 2) {
            kotlin.coroutines.e.a(cVar, r, cVar2);
        } else if (i2 == 3) {
            kotlinx.coroutines.e2.b.a(cVar, r, cVar2);
        } else if (i2 != 4) {
            throw new kotlin.l();
        }
    }
}
