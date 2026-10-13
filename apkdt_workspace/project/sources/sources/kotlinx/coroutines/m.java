package kotlinx.coroutines;

import kotlin.Deprecated;
import org.jetbrains.annotations.NotNull;

/* compiled from: Job.kt */
@Deprecated(level = kotlin.a.ERROR, message = "This is internal API and may be removed in the future releases")
@InternalCoroutinesApi
/* loaded from: classes.dex */
public interface m extends t0 {
    @InternalCoroutinesApi
    boolean a(@NotNull Throwable th);
}
