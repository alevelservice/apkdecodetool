package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class n extends i1<JobSupport> implements m {

    /* renamed from: i, reason: collision with root package name */
    @JvmField
    @NotNull
    public final o f20108i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(@NotNull JobSupport jobSupport, @NotNull o oVar) {
        super(jobSupport);
        kotlin.jvm.d.h.b(jobSupport, "parent");
        kotlin.jvm.d.h.b(oVar, "childJob");
        this.f20108i = oVar;
    }

    @Override // kotlinx.coroutines.m
    public boolean a(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, "cause");
        return ((JobSupport) this.f20107h).a(th);
    }

    @Override // kotlinx.coroutines.v
    public void b(@Nullable Throwable th) {
        this.f20108i.a((v1) this.f20107h);
    }

    @Override // kotlin.jvm.c.b
    public /* bridge */ /* synthetic */ kotlin.t invoke(Throwable th) {
        b(th);
        return kotlin.t.f19946a;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return "ChildHandle[" + this.f20108i + ']';
    }
}
