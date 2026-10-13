package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.e0;
import org.jetbrains.annotations.NotNull;

/* compiled from: Scopes.kt */
/* loaded from: classes2.dex */
public final class f implements e0 {

    /* renamed from: e, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f20066e;

    public f(@NotNull CoroutineContext coroutineContext) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        this.f20066e = coroutineContext;
    }

    @Override // kotlinx.coroutines.e0
    @NotNull
    public CoroutineContext a() {
        return this.f20066e;
    }
}
