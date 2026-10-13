package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.g0;
import com.google.common.collect.v;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableSortedSet.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class i0<E> extends j0<E> implements NavigableSet<E>, p1<E> {
    final transient Comparator<? super E> comparator;

    @GwtIncompatible
    @LazyInit
    transient i0<E> descendingSet;

    /* compiled from: ImmutableSortedSet.java */
    /* loaded from: classes.dex */
    public static final class a<E> extends g0.a<E> {

        /* renamed from: f, reason: collision with root package name */
        private final Comparator<? super E> f14108f;

        public a(Comparator<? super E> comparator) {
            e.i.c.a.j.a(comparator);
            this.f14108f = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.g0.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ v.b a(Object obj) {
            a((a<E>) obj);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.g0.a, com.google.common.collect.v.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ g0.a a(Object obj) {
            a((a<E>) obj);
            return this;
        }

        @Override // com.google.common.collect.g0.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ g0.a a(Iterator it) {
            a(it);
            return this;
        }

        @Override // com.google.common.collect.g0.a, com.google.common.collect.v.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(E e2) {
            super.a((a<E>) e2);
            return this;
        }

        @Override // com.google.common.collect.g0.a, com.google.common.collect.v.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(E... eArr) {
            super.a((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.g0.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(Iterator<? extends E> it) {
            super.a((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.g0.a
        public i0<E> a() {
            i0<E> construct = i0.construct(this.f14108f, this.f14188b, this.f14187a);
            this.f14188b = construct.size();
            this.f14189c = true;
            return construct;
        }
    }

    /* compiled from: ImmutableSortedSet.java */
    /* loaded from: classes.dex */
    private static class b<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> comparator;
        final Object[] elements;

        public b(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            a aVar = new a(this.comparator);
            aVar.a(this.elements);
            return aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> i0<E> construct(Comparator<? super E> comparator, int i2, E... eArr) {
        if (i2 == 0) {
            return emptySet(comparator);
        }
        a1.a((Object[]) eArr, i2);
        Arrays.sort(eArr, 0, i2, comparator);
        int i3 = 1;
        for (int i4 = 1; i4 < i2; i4++) {
            a.a.j jVar = (Object) eArr[i4];
            if (comparator.compare(jVar, (Object) eArr[i3 - 1]) != 0) {
                eArr[i3] = jVar;
                i3++;
            }
        }
        Arrays.fill(eArr, i3, i2, (Object) null);
        if (i3 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i3);
        }
        return new i1(x.asImmutableList(eArr, i3), comparator);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 copyOf(Comparable[] comparableArr) {
        return construct(c1.natural(), comparableArr.length, (Object[]) comparableArr.clone());
    }

    public static <E> i0<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator a2 = q1.a(sortedSet);
        x copyOf = x.copyOf((Collection) sortedSet);
        if (copyOf.isEmpty()) {
            return emptySet(a2);
        }
        return new i1(copyOf, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> i1<E> emptySet(Comparator<? super E> comparator) {
        if (c1.natural().equals(comparator)) {
            return (i1<E>) i1.NATURAL_EMPTY_SET;
        }
        return new i1<>(x.of(), comparator);
    }

    public static <E extends Comparable<?>> a<E> naturalOrder() {
        return new a<>(c1.natural());
    }

    public static <E> i0<E> of() {
        return i1.NATURAL_EMPTY_SET;
    }

    public static <E> a<E> orderedBy(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> a<E> reverseOrder() {
        return new a<>(Collections.reverseOrder());
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public E ceiling(E e2) {
        return (E) l0.a(tailSet((i0<E>) e2, true), (Object) null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.p1
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    @GwtIncompatible
    abstract i0<E> createDescendingSet();

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public abstract t1<E> descendingIterator();

    @Override // java.util.SortedSet
    public E first() {
        return iterator().next();
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public E floor(E e2) {
        return (E) m0.b(headSet((i0<E>) e2, true).descendingIterator(), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    @GwtIncompatible
    public /* bridge */ /* synthetic */ NavigableSet headSet(Object obj, boolean z) {
        return headSet((i0<E>) obj, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract i0<E> headSetImpl(E e2, boolean z);

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public E higher(E e2) {
        return (E) l0.a(tailSet((i0<E>) e2, false), (Object) null);
    }

    abstract int indexOf(@NullableDecl Object obj);

    @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract t1<E> iterator();

    @Override // java.util.SortedSet
    public E last() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public E lower(E e2) {
        return (E) m0.b(headSet((i0<E>) e2, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @CanIgnoreReturnValue
    @GwtIncompatible
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @CanIgnoreReturnValue
    @GwtIncompatible
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    @GwtIncompatible
    public /* bridge */ /* synthetic */ NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return subSet((boolean) obj, z, (boolean) obj2, z2);
    }

    abstract i0<E> subSetImpl(E e2, boolean z, E e3, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    @GwtIncompatible
    public /* bridge */ /* synthetic */ NavigableSet tailSet(Object obj, boolean z) {
        return tailSet((i0<E>) obj, z);
    }

    abstract i0<E> tailSetImpl(E e2, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override // com.google.common.collect.g0, com.google.common.collect.v
    Object writeReplace() {
        return new b(this.comparator, toArray());
    }

    public static <E> i0<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(c1.natural(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 of(Comparable comparable) {
        return new i1(x.of(comparable), c1.natural());
    }

    static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public i0<E> descendingSet() {
        i0<E> i0Var = this.descendingSet;
        if (i0Var != null) {
            return i0Var;
        }
        i0<E> createDescendingSet = createDescendingSet();
        this.descendingSet = createDescendingSet;
        createDescendingSet.descendingSet = this;
        return createDescendingSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet((i0<E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet((i0<E>) obj);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 of(Comparable comparable, Comparable comparable2) {
        return construct(c1.natural(), 2, comparable, comparable2);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public i0<E> headSet(E e2) {
        return headSet((i0<E>) e2, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public i0<E> subSet(E e2, E e3) {
        return subSet((boolean) e2, true, (boolean) e3, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public i0<E> tailSet(E e2) {
        return tailSet((i0<E>) e2, true);
    }

    public static <E> i0<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) c1.natural(), (Collection) collection);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(c1.natural(), 3, comparable, comparable2, comparable3);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public i0<E> headSet(E e2, boolean z) {
        e.i.c.a.j.a(e2);
        return headSetImpl(e2, z);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public i0<E> subSet(E e2, boolean z, E e3, boolean z2) {
        e.i.c.a.j.a(e2);
        e.i.c.a.j.a(e3);
        e.i.c.a.j.a(this.comparator.compare(e2, e3) <= 0);
        return subSetImpl(e2, z, e3, z2);
    }

    @Override // java.util.NavigableSet
    @GwtIncompatible
    public i0<E> tailSet(E e2, boolean z) {
        e.i.c.a.j.a(e2);
        return tailSetImpl(e2, z);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(c1.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    public static <E> i0<E> copyOf(Iterator<? extends E> it) {
        return copyOf(c1.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(c1.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/i0<TE;>; */
    public static i0 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        Comparable[] comparableArr2 = new Comparable[comparableArr.length + 6];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(c1.natural(), comparableArr2.length, comparableArr2);
    }

    public static <E> i0<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        a aVar = new a(comparator);
        aVar.a((Iterator) it);
        return aVar.a();
    }

    public static <E> i0<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        e.i.c.a.j.a(comparator);
        if (q1.a(comparator, iterable) && (iterable instanceof i0)) {
            i0<E> i0Var = (i0) iterable;
            if (!i0Var.isPartialView()) {
                return i0Var;
            }
        }
        Object[] b2 = l0.b(iterable);
        return construct(comparator, b2.length, b2);
    }

    public static <E> i0<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }
}
