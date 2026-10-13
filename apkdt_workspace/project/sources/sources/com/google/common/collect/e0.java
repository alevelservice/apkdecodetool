package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.v;
import com.google.common.collect.v0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableMultiset.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class e0<E> extends f0<E> implements v0<E> {

    /* renamed from: f, reason: collision with root package name */
    @LazyInit
    private transient x<E> f14075f;

    /* renamed from: g, reason: collision with root package name */
    @LazyInit
    private transient g0<v0.a<E>> f14076g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMultiset.java */
    /* loaded from: classes.dex */
    public class a extends t1<E> {

        /* renamed from: e, reason: collision with root package name */
        int f14077e;

        /* renamed from: f, reason: collision with root package name */
        @MonotonicNonNullDecl
        E f14078f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Iterator f14079g;

        a(e0 e0Var, Iterator it) {
            this.f14079g = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14077e > 0 || this.f14079g.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f14077e <= 0) {
                v0.a aVar = (v0.a) this.f14079g.next();
                this.f14078f = (E) aVar.getElement();
                this.f14077e = aVar.getCount();
            }
            this.f14077e--;
            return this.f14078f;
        }
    }

    /* compiled from: ImmutableMultiset.java */
    /* loaded from: classes.dex */
    public static class b<E> extends v.b<E> {

        /* renamed from: a, reason: collision with root package name */
        b1<E> f14080a;

        /* renamed from: b, reason: collision with root package name */
        boolean f14081b;

        /* renamed from: c, reason: collision with root package name */
        boolean f14082c;

        public b() {
            this(4);
        }

        @NullableDecl
        static <T> b1<T> b(Iterable<T> iterable) {
            if (iterable instanceof g1) {
                return ((g1) iterable).contents;
            }
            if (iterable instanceof com.google.common.collect.b) {
                return ((com.google.common.collect.b) iterable).backingMap;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ v.b a(Object obj) {
            a((b<E>) obj);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i2) {
            this.f14081b = false;
            this.f14082c = false;
            this.f14080a = b1.i(i2);
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public b<E> a(E e2) {
            a((b<E>) e2, 1);
            return this;
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public b<E> a(E... eArr) {
            super.a((Object[]) eArr);
            return this;
        }

        @CanIgnoreReturnValue
        public b<E> a(E e2, int i2) {
            if (i2 == 0) {
                return this;
            }
            if (this.f14081b) {
                this.f14080a = new b1<>(this.f14080a);
                this.f14082c = false;
            }
            this.f14081b = false;
            e.i.c.a.j.a(e2);
            b1<E> b1Var = this.f14080a;
            b1Var.a((b1<E>) e2, i2 + b1Var.a(e2));
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public b<E> a(Iterable<? extends E> iterable) {
            if (iterable instanceof v0) {
                v0 a2 = w0.a(iterable);
                b1 b2 = b(a2);
                if (b2 != null) {
                    b1<E> b1Var = this.f14080a;
                    b1Var.a(Math.max(b1Var.c(), b2.c()));
                    for (int b3 = b2.b(); b3 >= 0; b3 = b2.f(b3)) {
                        a((b<E>) b2.c(b3), b2.d(b3));
                    }
                } else {
                    Set<v0.a<E>> entrySet = a2.entrySet();
                    b1<E> b1Var2 = this.f14080a;
                    b1Var2.a(Math.max(b1Var2.c(), entrySet.size()));
                    for (v0.a<E> aVar : a2.entrySet()) {
                        a((b<E>) aVar.getElement(), aVar.getCount());
                    }
                }
            } else {
                super.a((Iterable) iterable);
            }
            return this;
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public b<E> a(Iterator<? extends E> it) {
            super.a((Iterator) it);
            return this;
        }

        public e0<E> a() {
            if (this.f14080a.c() == 0) {
                return e0.of();
            }
            if (this.f14082c) {
                this.f14080a = new b1<>(this.f14080a);
                this.f14082c = false;
            }
            this.f14081b = true;
            return new g1(this.f14080a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableMultiset.java */
    /* loaded from: classes.dex */
    public final class c extends k0<v0.a<E>> {
        private static final long serialVersionUID = 0;

        private c() {
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof v0.a)) {
                return false;
            }
            v0.a aVar = (v0.a) obj;
            return aVar.getCount() > 0 && e0.this.count(aVar.getElement()) == aVar.getCount();
        }

        @Override // com.google.common.collect.g0, java.util.Collection, java.util.Set
        public int hashCode() {
            return e0.this.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return e0.this.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e0.this.elementSet().size();
        }

        @Override // com.google.common.collect.g0, com.google.common.collect.v
        @GwtIncompatible
        Object writeReplace() {
            return new d(e0.this);
        }

        /* synthetic */ c(e0 e0Var, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k0
        public v0.a<E> get(int i2) {
            return e0.this.getEntry(i2);
        }
    }

    /* compiled from: ImmutableMultiset.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    static class d<E> implements Serializable {
        final e0<E> multiset;

        d(e0<E> e0Var) {
            this.multiset = e0Var;
        }

        Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    private static <E> e0<E> a(E... eArr) {
        b bVar = new b();
        bVar.a((Object[]) eArr);
        return bVar.a();
    }

    public static <E> b<E> builder() {
        return new b<>();
    }

    static <E> e0<E> copyFromEntries(Collection<? extends v0.a<? extends E>> collection) {
        b bVar = new b(collection.size());
        for (v0.a<? extends E> aVar : collection) {
            bVar.a((b) aVar.getElement(), aVar.getCount());
        }
        return bVar.a();
    }

    public static <E> e0<E> copyOf(E[] eArr) {
        return a(eArr);
    }

    public static <E> e0<E> of() {
        return g1.EMPTY;
    }

    @Override // com.google.common.collect.v0
    @CanIgnoreReturnValue
    @Deprecated
    public final int add(E e2, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v
    public x<E> asList() {
        x<E> xVar = this.f14075f;
        if (xVar != null) {
            return xVar;
        }
        x<E> asList = super.asList();
        this.f14075f = asList;
        return asList;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    @GwtIncompatible
    public int copyIntoArray(Object[] objArr, int i2) {
        t1<v0.a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            v0.a<E> next = it.next();
            Arrays.fill(objArr, i2, next.getCount() + i2, next.getElement());
            i2 += next.getCount();
        }
        return i2;
    }

    public abstract g0<E> elementSet();

    @Override // java.util.Collection
    public boolean equals(@NullableDecl Object obj) {
        return w0.a(this, obj);
    }

    abstract v0.a<E> getEntry(int i2);

    @Override // java.util.Collection
    public int hashCode() {
        return n1.a(entrySet());
    }

    @Override // com.google.common.collect.v0
    @CanIgnoreReturnValue
    @Deprecated
    public final int remove(Object obj, int i2) {
        throw new UnsupportedOperationException();
    }

    @CanIgnoreReturnValue
    @Deprecated
    public final int setCount(E e2, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.v
    @GwtIncompatible
    abstract Object writeReplace();

    private g0<v0.a<E>> a() {
        return isEmpty() ? g0.of() : new c(this, null);
    }

    public static <E> e0<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof e0) {
            e0<E> e0Var = (e0) iterable;
            if (!e0Var.isPartialView()) {
                return e0Var;
            }
        }
        b bVar = new b(w0.b(iterable));
        bVar.a((Iterable) iterable);
        return bVar.a();
    }

    public static <E> e0<E> of(E e2) {
        return a(e2);
    }

    @Override // com.google.common.collect.v0
    public g0<v0.a<E>> entrySet() {
        g0<v0.a<E>> g0Var = this.f14076g;
        if (g0Var != null) {
            return g0Var;
        }
        g0<v0.a<E>> a2 = a();
        this.f14076g = a2;
        return a2;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<E> iterator() {
        return new a(this, entrySet().iterator());
    }

    @Override // com.google.common.collect.v0
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean setCount(E e2, int i2, int i3) {
        throw new UnsupportedOperationException();
    }

    public static <E> e0<E> of(E e2, E e3) {
        return a(e2, e3);
    }

    public static <E> e0<E> of(E e2, E e3, E e4) {
        return a(e2, e3, e4);
    }

    public static <E> e0<E> of(E e2, E e3, E e4, E e5) {
        return a(e2, e3, e4, e5);
    }

    public static <E> e0<E> of(E e2, E e3, E e4, E e5, E e6) {
        return a(e2, e3, e4, e5, e6);
    }

    public static <E> e0<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        b bVar = new b();
        bVar.a((b) e2);
        bVar.a((b) e3);
        bVar.a((b) e4);
        bVar.a((b) e5);
        bVar.a((b) e6);
        bVar.a((b) e7);
        bVar.a((Object[]) eArr);
        return bVar.a();
    }

    public static <E> e0<E> copyOf(Iterator<? extends E> it) {
        b bVar = new b();
        bVar.a((Iterator) it);
        return bVar.a();
    }
}
