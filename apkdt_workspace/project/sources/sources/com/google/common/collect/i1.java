package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableSortedSet.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public final class i1<E> extends i0<E> {
    static final i1<Comparable> NATURAL_EMPTY_SET = new i1<>(x.of(), c1.natural());

    @VisibleForTesting
    final transient x<E> elements;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(x<E> xVar, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = xVar;
    }

    private int a(Object obj) {
        return Collections.binarySearch(this.elements, obj, unsafeComparator());
    }

    @Override // com.google.common.collect.g0, com.google.common.collect.v
    public x<E> asList() {
        return this.elements;
    }

    @Override // com.google.common.collect.i0, java.util.NavigableSet
    public E ceiling(E e2) {
        int tailIndex = tailIndex(e2, true);
        if (tailIndex == size()) {
            return null;
        }
        return this.elements.get(tailIndex);
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof v0) {
            collection = ((v0) collection).elementSet();
        }
        if (q1.a(comparator(), collection) && collection.size() > 1) {
            t1<E> it = iterator();
            Iterator<?> it2 = collection.iterator();
            if (!it.hasNext()) {
                return false;
            }
            Object next = it2.next();
            E next2 = it.next();
            while (true) {
                try {
                    int unsafeCompare = unsafeCompare(next2, next);
                    if (unsafeCompare < 0) {
                        if (!it.hasNext()) {
                            return false;
                        }
                        next2 = it.next();
                    } else if (unsafeCompare == 0) {
                        if (!it2.hasNext()) {
                            return true;
                        }
                        next = it2.next();
                    } else if (unsafeCompare > 0) {
                        break;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
        } else {
            return super.containsAll(collection);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int copyIntoArray(Object[] objArr, int i2) {
        return this.elements.copyIntoArray(objArr, i2);
    }

    @Override // com.google.common.collect.i0
    i0<E> createDescendingSet() {
        Comparator reverseOrder = Collections.reverseOrder(this.comparator);
        if (isEmpty()) {
            return i0.emptySet(reverseOrder);
        }
        return new i1(this.elements.reverse(), reverseOrder);
    }

    @Override // com.google.common.collect.g0, java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (q1.a(this.comparator, set)) {
            Iterator<E> it = set.iterator();
            try {
                t1<E> it2 = iterator();
                while (it2.hasNext()) {
                    E next = it2.next();
                    E next2 = it.next();
                    if (next2 == null || unsafeCompare(next, next2) != 0) {
                        return false;
                    }
                }
                return true;
            } catch (ClassCastException | NoSuchElementException unused) {
                return false;
            }
        }
        return containsAll(set);
    }

    @Override // com.google.common.collect.i0, java.util.SortedSet
    public E first() {
        if (!isEmpty()) {
            return this.elements.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.i0, java.util.NavigableSet
    public E floor(E e2) {
        int headIndex = headIndex(e2, true) - 1;
        if (headIndex == -1) {
            return null;
        }
        return this.elements.get(headIndex);
    }

    i1<E> getSubSet(int i2, int i3) {
        if (i2 == 0 && i3 == size()) {
            return this;
        }
        if (i2 < i3) {
            return new i1<>(this.elements.subList(i2, i3), this.comparator);
        }
        return i0.emptySet(this.comparator);
    }

    int headIndex(E e2, boolean z) {
        x<E> xVar = this.elements;
        e.i.c.a.j.a(e2);
        int binarySearch = Collections.binarySearch(xVar, e2, comparator());
        return binarySearch >= 0 ? z ? binarySearch + 1 : binarySearch : binarySearch ^ (-1);
    }

    @Override // com.google.common.collect.i0
    i0<E> headSetImpl(E e2, boolean z) {
        return getSubSet(0, headIndex(e2, z));
    }

    @Override // com.google.common.collect.i0, java.util.NavigableSet
    public E higher(E e2) {
        int tailIndex = tailIndex(e2, false);
        if (tailIndex == size()) {
            return null;
        }
        return this.elements.get(tailIndex);
    }

    @Override // com.google.common.collect.i0
    int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int binarySearch = Collections.binarySearch(this.elements, obj, unsafeComparator());
            if (binarySearch >= 0) {
                return binarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public Object[] internalArray() {
        return this.elements.internalArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int internalArrayEnd() {
        return this.elements.internalArrayEnd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int internalArrayStart() {
        return this.elements.internalArrayStart();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return this.elements.isPartialView();
    }

    @Override // com.google.common.collect.i0, java.util.SortedSet
    public E last() {
        if (!isEmpty()) {
            return this.elements.get(size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.i0, java.util.NavigableSet
    public E lower(E e2) {
        int headIndex = headIndex(e2, false) - 1;
        if (headIndex == -1) {
            return null;
        }
        return this.elements.get(headIndex);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.elements.size();
    }

    @Override // com.google.common.collect.i0
    i0<E> subSetImpl(E e2, boolean z, E e3, boolean z2) {
        return tailSetImpl(e2, z).headSetImpl(e3, z2);
    }

    int tailIndex(E e2, boolean z) {
        x<E> xVar = this.elements;
        e.i.c.a.j.a(e2);
        int binarySearch = Collections.binarySearch(xVar, e2, comparator());
        return binarySearch >= 0 ? z ? binarySearch : binarySearch + 1 : binarySearch ^ (-1);
    }

    @Override // com.google.common.collect.i0
    i0<E> tailSetImpl(E e2, boolean z) {
        return getSubSet(tailIndex(e2, z), size());
    }

    Comparator<Object> unsafeComparator() {
        return this.comparator;
    }

    @Override // com.google.common.collect.i0, java.util.NavigableSet
    @GwtIncompatible
    public t1<E> descendingIterator() {
        return this.elements.reverse().iterator();
    }

    @Override // com.google.common.collect.i0, com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<E> iterator() {
        return this.elements.iterator();
    }
}
