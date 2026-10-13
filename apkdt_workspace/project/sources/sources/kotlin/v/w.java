package kotlin.v;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Iterators.kt */
/* loaded from: classes2.dex */
public abstract class w implements Iterator<Long>, kotlin.jvm.d.q.a {
    public abstract long a();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public final Long next() {
        return Long.valueOf(a());
    }
}
