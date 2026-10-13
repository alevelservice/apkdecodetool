package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes2.dex */
public final class c implements kotlin.coroutines.c<Object> {

    /* renamed from: e, reason: collision with root package name */
    public static final c f19924e = new c();

    private c() {
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public CoroutineContext getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // kotlin.coroutines.c
    public void resumeWith(@NotNull Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @NotNull
    public String toString() {
        return "This continuation is already complete";
    }
}
