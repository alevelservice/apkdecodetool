package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class b0 implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        runnable.run();
    }
}
