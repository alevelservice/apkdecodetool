package kotlin.coroutines.jvm.internal;

import kotlin.SinceKotlin;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineStackFrame.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public interface e {
    @Nullable
    e getCallerFrame();

    @Nullable
    StackTraceElement getStackTraceElement();
}
