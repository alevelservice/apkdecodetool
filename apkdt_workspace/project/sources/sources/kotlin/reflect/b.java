package kotlin.reflect;

import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: KCallable.kt */
/* loaded from: classes2.dex */
public interface b<R> extends a {
    R call(@NotNull Object... objArr);

    R callBy(@NotNull Map<g, ? extends Object> map);

    @NotNull
    List<g> getParameters();

    @NotNull
    j getReturnType();

    @NotNull
    List<Object> getTypeParameters();

    @Nullable
    k getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
