package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CancellableContinuation.kt */
/* loaded from: classes2.dex */
final class u0 extends f {

    /* renamed from: e, reason: collision with root package name */
    private final t0 f20143e;

    public u0(@NotNull t0 t0Var) {
        kotlin.jvm.d.h.b(t0Var, "handle");
        this.f20143e = t0Var;
    }

    @Override // kotlinx.coroutines.g
    public void a(@Nullable Throwable th) {
        this.f20143e.dispose();
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        a(th);
        return kotlin.t.f19946a;
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + this.f20143e + ']';
    }
}
