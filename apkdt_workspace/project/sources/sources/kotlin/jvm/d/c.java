package kotlin.jvm.d;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ClassReference.kt */
/* loaded from: classes2.dex */
public final class c implements kotlin.reflect.c<Object>, b {

    /* renamed from: e, reason: collision with root package name */
    @NotNull
    private final Class<?> f19942e;

    public c(@NotNull Class<?> cls) {
        h.b(cls, "jClass");
        this.f19942e = cls;
    }

    @Override // kotlin.jvm.d.b
    @NotNull
    public Class<?> a() {
        return this.f19942e;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof c) && h.a(kotlin.jvm.a.a(this), kotlin.jvm.a.a((kotlin.reflect.c) obj));
    }

    public int hashCode() {
        return kotlin.jvm.a.a(this).hashCode();
    }

    @NotNull
    public String toString() {
        return a().toString() + " (Kotlin reflection is not available)";
    }
}
