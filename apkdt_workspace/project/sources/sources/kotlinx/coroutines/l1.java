package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Job.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class l1 {
    @NotNull
    public static final q a(@Nullable Job job) {
        return new j1(job);
    }

    public static /* synthetic */ q a(Job job, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            job = null;
        }
        return k1.a(job);
    }
}
