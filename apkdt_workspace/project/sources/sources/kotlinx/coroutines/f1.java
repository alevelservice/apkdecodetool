package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class f1 extends m1<Job> {

    /* renamed from: i, reason: collision with root package name */
    private final kotlin.jvm.c.b<Throwable, kotlin.t> f20001i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public f1(@NotNull Job job, @NotNull kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        super(job);
        kotlin.jvm.d.h.b(job, "job");
        kotlin.jvm.d.h.b(bVar, "handler");
        this.f20001i = bVar;
    }

    @Override // kotlinx.coroutines.v
    public void b(@Nullable Throwable th) {
        this.f20001i.invoke(th);
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        b(th);
        return kotlin.t.f19946a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "InvokeOnCompletion[" + j0.a(this) + '@' + j0.b(this) + ']';
    }
}
