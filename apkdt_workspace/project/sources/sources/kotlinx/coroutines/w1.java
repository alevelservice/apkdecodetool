package kotlinx.coroutines;

import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class w1<T> extends m1<JobSupport> {

    /* renamed from: i, reason: collision with root package name */
    private final i<T> f20148i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public w1(@NotNull JobSupport jobSupport, @NotNull i<? super T> iVar) {
        super(jobSupport);
        kotlin.jvm.d.h.b(jobSupport, "job");
        kotlin.jvm.d.h.b(iVar, "continuation");
        this.f20148i = iVar;
    }

    @Override // kotlinx.coroutines.v
    public void b(@Nullable Throwable th) {
        Object e2 = ((JobSupport) this.f20107h).e();
        if (!(e2 instanceof b1)) {
            if (e2 instanceof r) {
                this.f20148i.a(((r) e2).f20135a, 0);
                return;
            }
            i<T> iVar = this.f20148i;
            Object c2 = o1.c(e2);
            Result.Companion companion = Result.INSTANCE;
            iVar.resumeWith(Result.m23constructorimpl(c2));
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        b(th);
        return kotlin.t.f19946a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "ResumeAwaitOnCompletion[" + this.f20148i + ']';
    }
}
