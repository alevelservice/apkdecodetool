package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Ordering.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class c1<T> implements Comparator<T> {
    static final int LEFT_IS_GREATER = 1;
    static final int RIGHT_IS_GREATER = -1;

    /* compiled from: Ordering.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static class a extends c1<Object> {

        /* renamed from: e, reason: collision with root package name */
        private final AtomicInteger f14052e = new AtomicInteger(0);

        /* renamed from: f, reason: collision with root package name */
        private final ConcurrentMap<Object, Integer> f14053f;

        a() {
            q0 q0Var = new q0();
            d1.a(q0Var);
            this.f14053f = q0Var.f();
        }

        private Integer b(Object obj) {
            Integer num = this.f14053f.get(obj);
            if (num != null) {
                return num;
            }
            Integer valueOf = Integer.valueOf(this.f14052e.getAndIncrement());
            Integer putIfAbsent = this.f14053f.putIfAbsent(obj, valueOf);
            return putIfAbsent != null ? putIfAbsent : valueOf;
        }

        int a(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override // com.google.common.collect.c1, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int a2 = a(obj);
            int a3 = a(obj2);
            if (a2 != a3) {
                return a2 < a3 ? -1 : 1;
            }
            int compareTo = b(obj).compareTo(b(obj2));
            if (compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }
    }

    /* compiled from: Ordering.java */
    /* loaded from: classes.dex */
    private static class b {

        /* renamed from: a, reason: collision with root package name */
        static final c1<Object> f14054a = new a();
    }

    /* compiled from: Ordering.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static class c extends ClassCastException {
        private static final long serialVersionUID = 0;
        final Object value;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Object obj) {
            super("Cannot compare value: " + obj);
            this.value = obj;
        }
    }

    @GwtCompatible(serializable = true)
    public static c1<Object> allEqual() {
        return f.INSTANCE;
    }

    public static c1<Object> arbitrary() {
        return b.f14054a;
    }

    @GwtCompatible(serializable = true)
    public static <T> c1<T> explicit(List<T> list) {
        return new q(list);
    }

    @GwtCompatible(serializable = true)
    public static <T> c1<T> from(Comparator<T> comparator) {
        return comparator instanceof c1 ? (c1) comparator : new m(comparator);
    }

    @GwtCompatible(serializable = true)
    public static <C extends Comparable> c1<C> natural() {
        return x0.INSTANCE;
    }

    @GwtCompatible(serializable = true)
    public static c1<Object> usingToString() {
        return v1.INSTANCE;
    }

    @Deprecated
    public int binarySearch(List<? extends T> list, @NullableDecl T t) {
        return Collections.binarySearch(list, t, this);
    }

    @Override // java.util.Comparator
    @CanIgnoreReturnValue
    public abstract int compare(@NullableDecl T t, @NullableDecl T t2);

    @GwtCompatible(serializable = true)
    public <U extends T> c1<U> compound(Comparator<? super U> comparator) {
        e.i.c.a.j.a(comparator);
        return new n(this, comparator);
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i2) {
        return reverse().leastOf(iterable, i2);
    }

    public <E extends T> x<E> immutableSortedCopy(Iterable<E> iterable) {
        return x.sortedCopyOf(this, iterable);
    }

    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i2) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i2 * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i2) {
                    array = Arrays.copyOf(array, i2);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return leastOf(iterable.iterator(), i2);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> c1<Iterable<S>> lexicographical() {
        return new n0(this);
    }

    public <E extends T> E max(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) max(next, it.next());
        }
        return next;
    }

    public <E extends T> E min(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) min(next, it.next());
        }
        return next;
    }

    @GwtCompatible(serializable = true)
    public <S extends T> c1<S> nullsFirst() {
        return new y0(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> c1<S> nullsLast() {
        return new z0(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T2 extends T> c1<Map.Entry<T2, ?>> onKeys() {
        return (c1<Map.Entry<T2, ?>>) onResultOf(s0.a());
    }

    @GwtCompatible(serializable = true)
    public <F> c1<F> onResultOf(e.i.c.a.d<F, ? extends T> dVar) {
        return new h(dVar, this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> c1<S> reverse() {
        return new k1(this);
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] b2 = l0.b(iterable);
        Arrays.sort(b2, this);
        return p0.a(Arrays.asList(b2));
    }

    @GwtCompatible(serializable = true)
    public static <T> c1<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new n(iterable);
    }

    @GwtCompatible(serializable = true)
    public static <T> c1<T> explicit(T t, T... tArr) {
        return explicit(p0.a(t, tArr));
    }

    @GwtCompatible(serializable = true)
    @Deprecated
    public static <T> c1<T> from(c1<T> c1Var) {
        e.i.c.a.j.a(c1Var);
        return c1Var;
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i2) {
        return reverse().leastOf(it, i2);
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return (E) max(iterable.iterator());
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return (E) min(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E max(@NullableDecl E e2, @NullableDecl E e3) {
        return compare(e2, e3) >= 0 ? e2 : e3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E min(@NullableDecl E e2, @NullableDecl E e3) {
        return compare(e2, e3) <= 0 ? e2 : e3;
    }

    public <E extends T> E max(@NullableDecl E e2, @NullableDecl E e3, @NullableDecl E e4, E... eArr) {
        E e5 = (E) max(max(e2, e3), e4);
        for (E e6 : eArr) {
            e5 = (E) max(e5, e6);
        }
        return e5;
    }

    public <E extends T> E min(@NullableDecl E e2, @NullableDecl E e3, @NullableDecl E e4, E... eArr) {
        E e5 = (E) min(min(e2, e3), e4);
        for (E e6 : eArr) {
            e5 = (E) min(e5, e6);
        }
        return e5;
    }

    public <E extends T> List<E> leastOf(Iterator<E> it, int i2) {
        e.i.c.a.j.a(it);
        i.a(i2, "k");
        if (i2 == 0 || !it.hasNext()) {
            return Collections.emptyList();
        }
        if (i2 >= 1073741823) {
            ArrayList a2 = p0.a(it);
            Collections.sort(a2, this);
            if (a2.size() > i2) {
                a2.subList(i2, a2.size()).clear();
            }
            a2.trimToSize();
            return Collections.unmodifiableList(a2);
        }
        r1 a3 = r1.a(i2, this);
        a3.a((Iterator) it);
        return a3.a();
    }
}
