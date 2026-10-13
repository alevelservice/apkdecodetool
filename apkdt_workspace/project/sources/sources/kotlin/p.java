package kotlin;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: LazyJVM.kt */
/* loaded from: classes2.dex */
final class p<T> implements h<T>, Serializable {
    private volatile Object _value;
    private kotlin.jvm.c.a<? extends T> initializer;
    private final Object lock;

    public p(@NotNull kotlin.jvm.c.a<? extends T> aVar, @Nullable Object obj) {
        kotlin.jvm.d.h.b(aVar, "initializer");
        this.initializer = aVar;
        this._value = s.f19945a;
        this.lock = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new e(getValue());
    }

    @Override // kotlin.h
    public T getValue() {
        T t;
        T t2 = (T) this._value;
        if (t2 != s.f19945a) {
            return t2;
        }
        synchronized (this.lock) {
            t = (T) this._value;
            if (t == s.f19945a) {
                kotlin.jvm.c.a<? extends T> aVar = this.initializer;
                if (aVar != null) {
                    t = aVar.invoke();
                    this._value = t;
                    this.initializer = null;
                } else {
                    kotlin.jvm.d.h.a();
                    throw null;
                }
            }
        }
        return t;
    }

    public boolean isInitialized() {
        return this._value != s.f19945a;
    }

    @NotNull
    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ p(kotlin.jvm.c.a aVar, Object obj, int i2, kotlin.jvm.d.e eVar) {
        this(aVar, (i2 & 2) != 0 ? null : obj);
    }
}
