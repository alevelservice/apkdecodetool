package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* compiled from: CompletedExceptionally.kt */
/* loaded from: classes2.dex */
public class r {

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f20134b = AtomicIntegerFieldUpdater.newUpdater(r.class, "_handled");
    private volatile int _handled;

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Throwable f20135a;

    public r(@NotNull Throwable th, boolean z) {
        kotlin.jvm.d.h.b(th, "cause");
        this.f20135a = th;
        this._handled = z ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return f20134b.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return j0.a(this) + '[' + this.f20135a + ']';
    }

    public /* synthetic */ r(Throwable th, boolean z, int i2, kotlin.jvm.d.e eVar) {
        this(th, (i2 & 2) != 0 ? false : z);
    }
}
