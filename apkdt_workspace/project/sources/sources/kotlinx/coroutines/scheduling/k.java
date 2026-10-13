package kotlinx.coroutines.scheduling;

import kotlin.jvm.JvmField;
import kotlin.jvm.d.h;
import kotlinx.coroutines.j0;
import org.jetbrains.annotations.NotNull;

/* compiled from: Tasks.kt */
/* loaded from: classes2.dex */
public final class k extends i {

    /* renamed from: g, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Runnable f20037g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(@NotNull Runnable runnable, long j2, @NotNull j jVar) {
        super(j2, jVar);
        h.b(runnable, "block");
        h.b(jVar, "taskContext");
        this.f20037g = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f20037g.run();
        } finally {
            this.f20036f.l();
        }
    }

    @NotNull
    public String toString() {
        return "Task[" + j0.a(this.f20037g) + '@' + j0.b(this.f20037g) + ", " + this.f20035e + ", " + this.f20036f + ']';
    }
}
