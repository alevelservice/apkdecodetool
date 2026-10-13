package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CancellableContinuationImpl.kt */
/* loaded from: classes2.dex */
final class d1 extends f {

    /* renamed from: e, reason: collision with root package name */
    private final kotlin.jvm.c.b<Throwable, kotlin.t> f19997e;

    /* JADX WARN: Multi-variable type inference failed */
    public d1(@NotNull kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        kotlin.jvm.d.h.b(bVar, "handler");
        this.f19997e = bVar;
    }

    @Override // kotlinx.coroutines.g
    public void a(@Nullable Throwable th) {
        this.f19997e.invoke(th);
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        a(th);
        return kotlin.t.f19946a;
    }

    @NotNull
    public String toString() {
        return "InvokeOnCancel[" + j0.a(this.f19997e) + '@' + j0.b(this) + ']';
    }
}
