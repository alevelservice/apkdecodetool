package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class l extends i1<Job> {

    /* renamed from: i, reason: collision with root package name */
    @JvmField
    @NotNull
    public final i<?> f20105i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(@NotNull Job job, @NotNull i<?> iVar) {
        super(job);
        kotlin.jvm.d.h.b(job, "parent");
        kotlin.jvm.d.h.b(iVar, "child");
        this.f20105i = iVar;
    }

    @Override // kotlinx.coroutines.v
    public void b(@Nullable Throwable th) {
        i<?> iVar = this.f20105i;
        iVar.a(iVar.a((Job) this.f20107h));
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        b(th);
        return kotlin.t.f19946a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "ChildContinuation[" + this.f20105i + ']';
    }
}
