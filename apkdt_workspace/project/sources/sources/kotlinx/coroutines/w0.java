package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* compiled from: EventLoop.common.kt */
/* loaded from: classes2.dex */
public abstract class w0 extends z {

    /* renamed from: e, reason: collision with root package name */
    private long f20145e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f20146f;

    /* renamed from: g, reason: collision with root package name */
    private kotlinx.coroutines.internal.b<r0<?>> f20147g;

    private final long c(boolean z) {
        return z ? 4294967296L : 1L;
    }

    public final void a(@NotNull r0<?> r0Var) {
        kotlin.jvm.d.h.b(r0Var, "task");
        kotlinx.coroutines.internal.b<r0<?>> bVar = this.f20147g;
        if (bVar == null) {
            bVar = new kotlinx.coroutines.internal.b<>();
            this.f20147g = bVar;
        }
        bVar.a(r0Var);
    }

    public final void b(boolean z) {
        this.f20145e += c(z);
        if (z) {
            return;
        }
        this.f20146f = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long o() {
        kotlinx.coroutines.internal.b<r0<?>> bVar = this.f20147g;
        return (bVar == null || bVar.a()) ? Long.MAX_VALUE : 0L;
    }

    public final boolean p() {
        return this.f20145e >= c(true);
    }

    public final boolean q() {
        kotlinx.coroutines.internal.b<r0<?>> bVar = this.f20147g;
        if (bVar != null) {
            return bVar.a();
        }
        return true;
    }

    public final boolean r() {
        r0<?> b2;
        kotlinx.coroutines.internal.b<r0<?>> bVar = this.f20147g;
        if (bVar == null || (b2 = bVar.b()) == null) {
            return false;
        }
        b2.run();
        return true;
    }

    protected void shutdown() {
    }

    public static /* synthetic */ void a(w0 w0Var, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                z = false;
            }
            w0Var.b(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
    }

    public final void a(boolean z) {
        this.f20145e -= c(z);
        long j2 = this.f20145e;
        if (j2 > 0) {
            return;
        }
        if (j2 == 0) {
            if (this.f20146f) {
                shutdown();
                return;
            }
            return;
        }
        throw new IllegalStateException("Extra decrementUseCount".toString());
    }
}
