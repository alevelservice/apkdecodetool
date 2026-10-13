package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;

/* compiled from: ReverseNaturalOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class j1 extends c1<Comparable> implements Serializable {
    static final j1 INSTANCE = new j1();
    private static final long serialVersionUID = 0;

    private j1() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.c1
    public <S extends Comparable> c1<S> reverse() {
        return c1.natural();
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(Comparable comparable, Comparable comparable2) {
        e.i.c.a.j.a(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E max(E e2, E e3) {
        return (E) x0.INSTANCE.min(e2, e3);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E min(E e2, E e3) {
        return (E) x0.INSTANCE.max(e2, e3);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E max(E e2, E e3, E e4, E... eArr) {
        return (E) x0.INSTANCE.min(e2, e3, e4, eArr);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E min(E e2, E e3, E e4, E... eArr) {
        return (E) x0.INSTANCE.max(e2, e3, e4, eArr);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E max(Iterator<E> it) {
        return (E) x0.INSTANCE.min(it);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E min(Iterator<E> it) {
        return (E) x0.INSTANCE.max(it);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E max(Iterable<E> iterable) {
        return (E) x0.INSTANCE.min(iterable);
    }

    @Override // com.google.common.collect.c1
    public <E extends Comparable> E min(Iterable<E> iterable) {
        return (E) x0.INSTANCE.max(iterable);
    }
}
