package kotlin.coroutines.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ContinuationImpl.kt */
@SinceKotlin(version = "1.3")
/* loaded from: classes2.dex */
public abstract class i extends a {
    public i(@Nullable kotlin.coroutines.c<Object> cVar) {
        super(cVar);
        if (cVar != null) {
            if (!(cVar.getContext() == kotlin.coroutines.g.INSTANCE)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public CoroutineContext getContext() {
        return kotlin.coroutines.g.INSTANCE;
    }
}
