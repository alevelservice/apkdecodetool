package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public abstract class m1<J extends Job> extends v implements t0, b1 {

    /* renamed from: h, reason: collision with root package name */
    @JvmField
    @NotNull
    public final J f20107h;

    public m1(@NotNull J j2) {
        kotlin.jvm.d.h.b(j2, "job");
        this.f20107h = j2;
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public s1 a() {
        return null;
    }

    @Override // kotlinx.coroutines.t0
    public void dispose() {
        J j2 = this.f20107h;
        if (j2 == null) {
            throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.JobSupport");
        }
        ((JobSupport) j2).a((m1<?>) this);
    }

    @Override // kotlinx.coroutines.b1
    public boolean i() {
        return true;
    }
}
