package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ReverseOrdering.java */
@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class k1<T> extends c1<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final c1<? super T> forwardOrder;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1(c1<? super T> c1Var) {
        e.i.c.a.j.a(c1Var);
        this.forwardOrder = c1Var;
    }

    @Override // com.google.common.collect.c1, java.util.Comparator
    public int compare(T t, T t2) {
        return this.forwardOrder.compare(t2, t);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k1) {
            return this.forwardOrder.equals(((k1) obj).forwardOrder);
        }
        return false;
    }

    public int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E max(E e2, E e3) {
        return (E) this.forwardOrder.min(e2, e3);
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E min(E e2, E e3) {
        return (E) this.forwardOrder.max(e2, e3);
    }

    @Override // com.google.common.collect.c1
    public <S extends T> c1<S> reverse() {
        return this.forwardOrder;
    }

    public String toString() {
        return this.forwardOrder + ".reverse()";
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E max(E e2, E e3, E e4, E... eArr) {
        return (E) this.forwardOrder.min(e2, e3, e4, eArr);
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E min(E e2, E e3, E e4, E... eArr) {
        return (E) this.forwardOrder.max(e2, e3, e4, eArr);
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E max(Iterator<E> it) {
        return (E) this.forwardOrder.min(it);
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E min(Iterator<E> it) {
        return (E) this.forwardOrder.max(it);
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E max(Iterable<E> iterable) {
        return (E) this.forwardOrder.min(iterable);
    }

    @Override // com.google.common.collect.c1
    public <E extends T> E min(Iterable<E> iterable) {
        return (E) this.forwardOrder.max(iterable);
    }
}
