package kotlinx.coroutines.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.jetbrains.annotations.NotNull;

/* compiled from: Concurrent.kt */
/* loaded from: classes2.dex */
public final class e {
    static {
        try {
            ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable unused) {
        }
    }

    @NotNull
    public static final <E> Set<E> a(int i2) {
        Set<E> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(i2));
        kotlin.jvm.d.h.a((Object) newSetFromMap, "Collections.newSetFromMa…ityHashMap(expectedSize))");
        return newSetFromMap;
    }
}
