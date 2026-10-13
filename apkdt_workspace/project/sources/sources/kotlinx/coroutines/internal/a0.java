package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ThreadContext.kt */
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    private Object[] f20058a;

    /* renamed from: b, reason: collision with root package name */
    private int f20059b;

    /* renamed from: c, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f20060c;

    public a0(@NotNull CoroutineContext coroutineContext, int i2) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        this.f20060c = coroutineContext;
        this.f20058a = new Object[i2];
    }

    @NotNull
    public final CoroutineContext a() {
        return this.f20060c;
    }

    public final void b() {
        this.f20059b = 0;
    }

    @Nullable
    public final Object c() {
        Object[] objArr = this.f20058a;
        int i2 = this.f20059b;
        this.f20059b = i2 + 1;
        return objArr[i2];
    }

    public final void a(@Nullable Object obj) {
        Object[] objArr = this.f20058a;
        int i2 = this.f20059b;
        this.f20059b = i2 + 1;
        objArr[i2] = obj;
    }
}
