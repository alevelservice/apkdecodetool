package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: Job.kt */
@InternalCoroutinesApi
/* loaded from: classes2.dex */
public final class t1 implements t0, m {

    /* renamed from: e, reason: collision with root package name */
    public static final t1 f20140e = new t1();

    private t1() {
    }

    @Override // kotlinx.coroutines.m
    public boolean a(@NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, "cause");
        return false;
    }

    @Override // kotlinx.coroutines.t0
    public void dispose() {
    }

    @NotNull
    public String toString() {
        return "NonDisposableHandle";
    }
}
