package kotlinx.coroutines;

import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public abstract class i1<J extends Job> extends m1<J> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(@NotNull J j2) {
        super(j2);
        kotlin.jvm.d.h.b(j2, "job");
    }
}
