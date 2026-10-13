package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CancellableContinuationImpl.kt */
/* loaded from: classes2.dex */
final class u {

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Object f20141a;

    /* renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public final kotlin.jvm.c.b<Throwable, kotlin.t> f20142b;

    @NotNull
    public String toString() {
        return "CompletedWithCancellation[" + this.f20141a + ']';
    }
}
