package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class e1 extends i1<Job> {

    /* renamed from: j, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f19999j = AtomicIntegerFieldUpdater.newUpdater(e1.class, "_invoked");
    private volatile int _invoked;

    /* renamed from: i, reason: collision with root package name */
    private final kotlin.jvm.c.b<Throwable, kotlin.t> f20000i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public e1(@NotNull Job job, @NotNull kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        super(job);
        kotlin.jvm.d.h.b(job, "job");
        kotlin.jvm.d.h.b(bVar, "handler");
        this.f20000i = bVar;
        this._invoked = 0;
    }

    @Override // kotlinx.coroutines.v
    public void b(@Nullable Throwable th) {
        if (f19999j.compareAndSet(this, 0, 1)) {
            this.f20000i.invoke(th);
        }
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        b(th);
        return kotlin.t.f19946a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "InvokeOnCancelling[" + j0.a(this) + '@' + j0.b(this) + ']';
    }
}
