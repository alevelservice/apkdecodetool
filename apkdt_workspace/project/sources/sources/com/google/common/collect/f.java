package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AllEqualOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class f extends c1<Object> implements Serializable {
    static final f INSTANCE = new f();
    private static final long serialVersionUID = 0;

    f() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return 0;
    }

    @Override // com.google.common.collect.c1
    public <E> x<E> immutableSortedCopy(Iterable<E> iterable) {
        return x.copyOf(iterable);
    }

    @Override // com.google.common.collect.c1
    public <S> c1<S> reverse() {
        return this;
    }

    @Override // com.google.common.collect.c1
    public <E> List<E> sortedCopy(Iterable<E> iterable) {
        return p0.a(iterable);
    }

    public String toString() {
        return "Ordering.allEqual()";
    }
}
