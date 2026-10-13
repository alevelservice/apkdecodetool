package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class a1 implements b1 {

    /* renamed from: e, reason: collision with root package name */
    @NotNull
    private final s1 f19983e;

    public a1(@NotNull s1 s1Var) {
        kotlin.jvm.d.h.b(s1Var, "list");
        this.f19983e = s1Var;
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public s1 a() {
        return this.f19983e;
    }

    @Override // kotlinx.coroutines.b1
    public boolean i() {
        return false;
    }

    @NotNull
    public String toString() {
        return a().a("New");
    }
}
