package kotlin;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

/* compiled from: Lazy.kt */
/* loaded from: classes2.dex */
public final class e<T> implements h<T>, Serializable {
    private final T value;

    public e(T t) {
        this.value = t;
    }

    @Override // kotlin.h
    public T getValue() {
        return this.value;
    }

    public boolean isInitialized() {
        return true;
    }

    @NotNull
    public String toString() {
        return String.valueOf(getValue());
    }
}
