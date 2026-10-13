package kotlin;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Tuples.kt */
/* loaded from: classes2.dex */
public final class m<A, B> implements Serializable {
    private final A first;
    private final B second;

    public m(A a2, B b2) {
        this.first = a2;
        this.second = b2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ m copy$default(m mVar, Object obj, Object obj2, int i2, Object obj3) {
        if ((i2 & 1) != 0) {
            obj = mVar.first;
        }
        if ((i2 & 2) != 0) {
            obj2 = mVar.second;
        }
        return mVar.copy(obj, obj2);
    }

    public final A component1() {
        return this.first;
    }

    public final B component2() {
        return this.second;
    }

    @NotNull
    public final m<A, B> copy(A a2, B b2) {
        return new m<>(a2, b2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return kotlin.jvm.d.h.a(this.first, mVar.first) && kotlin.jvm.d.h.a(this.second, mVar.second);
    }

    public final A getFirst() {
        return this.first;
    }

    public final B getSecond() {
        return this.second;
    }

    public int hashCode() {
        A a2 = this.first;
        int hashCode = (a2 != null ? a2.hashCode() : 0) * 31;
        B b2 = this.second;
        return hashCode + (b2 != null ? b2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }
}
