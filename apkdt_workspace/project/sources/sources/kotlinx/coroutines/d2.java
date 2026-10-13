package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: Unconfined.kt */
/* loaded from: classes2.dex */
public final class d2 extends z {

    /* renamed from: e, reason: collision with root package name */
    public static final d2 f19998e = new d2();

    private d2() {
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a */
    public void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(runnable, "block");
        throw new UnsupportedOperationException();
    }

    @Override // kotlinx.coroutines.z
    public boolean b(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        return false;
    }

    @Override // kotlinx.coroutines.z
    @NotNull
    public String toString() {
        return "Unconfined";
    }
}
