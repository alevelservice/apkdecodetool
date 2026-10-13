package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.n1;
import com.google.common.collect.v0;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multisets.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class w0 {

    /* compiled from: Multisets.java */
    /* loaded from: classes.dex */
    static abstract class a<E> implements v0.a<E> {
        public boolean equals(@NullableDecl Object obj) {
            if (!(obj instanceof v0.a)) {
                return false;
            }
            v0.a aVar = (v0.a) obj;
            return getCount() == aVar.getCount() && e.i.c.a.h.a(getElement(), aVar.getElement());
        }

        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        public String toString() {
            String valueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return valueOf;
            }
            return valueOf + " x " + count;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes.dex */
    public static abstract class b<E> extends n1.a<E> {
        abstract v0<E> a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return a().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().entrySet().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes.dex */
    public static abstract class c<E> extends n1.a<v0.a<E>> {
        abstract v0<E> a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof v0.a)) {
                return false;
            }
            v0.a aVar = (v0.a) obj;
            return aVar.getCount() > 0 && a().count(aVar.getElement()) == aVar.getCount();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof v0.a) {
                v0.a aVar = (v0.a) obj;
                Object element = aVar.getElement();
                int count = aVar.getCount();
                if (count != 0) {
                    return a().setCount(element, count, 0);
                }
            }
            return false;
        }
    }

    /* compiled from: Multisets.java */
    /* loaded from: classes.dex */
    static class d<E> extends a<E> implements Serializable {
        private static final long serialVersionUID = 0;
        private final int count;

        @NullableDecl
        private final E element;

        d(@NullableDecl E e2, int i2) {
            this.element = e2;
            this.count = i2;
            i.a(i2, "count");
        }

        @Override // com.google.common.collect.v0.a
        public final int getCount() {
            return this.count;
        }

        @Override // com.google.common.collect.v0.a
        @NullableDecl
        public final E getElement() {
            return this.element;
        }

        public d<E> nextInBucket() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Multisets.java */
    /* loaded from: classes.dex */
    public static final class e<E> implements Iterator<E> {

        /* renamed from: e, reason: collision with root package name */
        private final v0<E> f14190e;

        /* renamed from: f, reason: collision with root package name */
        private final Iterator<v0.a<E>> f14191f;

        /* renamed from: g, reason: collision with root package name */
        @MonotonicNonNullDecl
        private v0.a<E> f14192g;

        /* renamed from: h, reason: collision with root package name */
        private int f14193h;

        /* renamed from: i, reason: collision with root package name */
        private int f14194i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f14195j;

        e(v0<E> v0Var, Iterator<v0.a<E>> it) {
            this.f14190e = v0Var;
            this.f14191f = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14193h > 0 || this.f14191f.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                if (this.f14193h == 0) {
                    this.f14192g = this.f14191f.next();
                    int count = this.f14192g.getCount();
                    this.f14193h = count;
                    this.f14194i = count;
                }
                this.f14193h--;
                this.f14195j = true;
                return this.f14192g.getElement();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            i.a(this.f14195j);
            if (this.f14194i == 1) {
                this.f14191f.remove();
            } else {
                this.f14190e.remove(this.f14192g.getElement());
            }
            this.f14194i--;
            this.f14195j = false;
        }
    }

    public static <E> v0.a<E> a(@NullableDecl E e2, int i2) {
        return new d(e2, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Iterable<?> iterable) {
        if (iterable instanceof v0) {
            return ((v0) iterable).elementSet().size();
        }
        return 11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(v0<?> v0Var, Collection<?> collection) {
        e.i.c.a.j.a(collection);
        if (collection instanceof v0) {
            collection = ((v0) collection).elementSet();
        }
        return v0Var.elementSet().retainAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(v0<?> v0Var, @NullableDecl Object obj) {
        if (obj == v0Var) {
            return true;
        }
        if (obj instanceof v0) {
            v0 v0Var2 = (v0) obj;
            if (v0Var.size() == v0Var2.size() && v0Var.entrySet().size() == v0Var2.entrySet().size()) {
                for (v0.a aVar : v0Var2.entrySet()) {
                    if (v0Var.count(aVar.getElement()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(v0<?> v0Var, Collection<?> collection) {
        if (collection instanceof v0) {
            collection = ((v0) collection).elementSet();
        }
        return v0Var.elementSet().removeAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> boolean a(v0<E> v0Var, Collection<? extends E> collection) {
        e.i.c.a.j.a(v0Var);
        e.i.c.a.j.a(collection);
        if (collection instanceof v0) {
            return a((v0) v0Var, a(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return m0.a(v0Var, collection.iterator());
    }

    private static <E> boolean a(v0<E> v0Var, v0<? extends E> v0Var2) {
        if (v0Var2 instanceof com.google.common.collect.b) {
            return a((v0) v0Var, (com.google.common.collect.b) v0Var2);
        }
        if (v0Var2.isEmpty()) {
            return false;
        }
        for (v0.a<? extends E> aVar : v0Var2.entrySet()) {
            v0Var.add(aVar.getElement(), aVar.getCount());
        }
        return true;
    }

    private static <E> boolean a(v0<E> v0Var, com.google.common.collect.b<? extends E> bVar) {
        if (bVar.isEmpty()) {
            return false;
        }
        bVar.addTo(v0Var);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> Iterator<E> a(v0<E> v0Var) {
        return new e(v0Var, v0Var.entrySet().iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> v0<T> a(Iterable<T> iterable) {
        return (v0) iterable;
    }
}
