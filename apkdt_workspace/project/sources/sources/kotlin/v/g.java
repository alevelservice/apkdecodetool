package kotlin.v;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Iterators.kt */
/* loaded from: classes2.dex */
public abstract class g implements Iterator<Character>, kotlin.jvm.d.q.a {
    public abstract char a();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public final Character next() {
        return Character.valueOf(a());
    }
}
