package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.v;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableSet.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class g0<E> extends v<E> implements Set<E> {
    static final int MAX_TABLE_SIZE = 1073741824;

    /* renamed from: f, reason: collision with root package name */
    @RetainedWith
    @NullableDecl
    @LazyInit
    private transient x<E> f14095f;

    /* compiled from: ImmutableSet.java */
    /* loaded from: classes.dex */
    public static class a<E> extends v.a<E> {

        /* renamed from: d, reason: collision with root package name */
        @VisibleForTesting
        @NullableDecl
        Object[] f14096d;

        /* renamed from: e, reason: collision with root package name */
        private int f14097e;

        public a() {
            super(4);
        }

        private void b(E e2) {
            int length = this.f14096d.length - 1;
            int hashCode = e2.hashCode();
            int a2 = u.a(hashCode);
            while (true) {
                int i2 = a2 & length;
                Object[] objArr = this.f14096d;
                Object obj = objArr[i2];
                if (obj == null) {
                    objArr[i2] = e2;
                    this.f14097e += hashCode;
                    super.a((a<E>) e2);
                    return;
                } else if (obj.equals(e2)) {
                    return;
                } else {
                    a2 = i2 + 1;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ v.b a(Object obj) {
            return a((a<E>) obj);
        }

        a(int i2) {
            super(i2);
            this.f14096d = new Object[g0.chooseTableSize(i2)];
        }

        @Override // com.google.common.collect.v.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(E e2) {
            e.i.c.a.j.a(e2);
            if (this.f14096d != null && g0.chooseTableSize(this.f14188b) <= this.f14096d.length) {
                b(e2);
                return this;
            }
            this.f14096d = null;
            super.a((a<E>) e2);
            return this;
        }

        @Override // com.google.common.collect.v.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(E... eArr) {
            if (this.f14096d != null) {
                for (E e2 : eArr) {
                    a((a<E>) e2);
                }
            } else {
                super.a((Object[]) eArr);
            }
            return this;
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(Iterator<? extends E> it) {
            e.i.c.a.j.a(it);
            while (it.hasNext()) {
                a((a<E>) it.next());
            }
            return this;
        }

        public g0<E> a() {
            g0<E> a2;
            int i2 = this.f14188b;
            if (i2 == 0) {
                return g0.of();
            }
            if (i2 != 1) {
                if (this.f14096d == null || g0.chooseTableSize(i2) != this.f14096d.length) {
                    a2 = g0.a(this.f14188b, this.f14187a);
                    this.f14188b = a2.size();
                } else {
                    Object[] copyOf = g0.a(this.f14188b, this.f14187a.length) ? Arrays.copyOf(this.f14187a, this.f14188b) : this.f14187a;
                    a2 = new h1<>(copyOf, this.f14097e, this.f14096d, r5.length - 1, this.f14188b);
                }
                this.f14189c = true;
                this.f14096d = null;
                return a2;
            }
            return g0.of(this.f14187a[0]);
        }
    }

    /* compiled from: ImmutableSet.java */
    /* loaded from: classes.dex */
    private static class b implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        b(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return g0.copyOf(this.elements);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> g0<E> a(int i2, Object... objArr) {
        if (i2 == 0) {
            return of();
        }
        if (i2 != 1) {
            int chooseTableSize = chooseTableSize(i2);
            Object[] objArr2 = new Object[chooseTableSize];
            int i3 = chooseTableSize - 1;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                Object obj = objArr[i6];
                a1.a(obj, i6);
                int hashCode = obj.hashCode();
                int a2 = u.a(hashCode);
                while (true) {
                    int i7 = a2 & i3;
                    Object obj2 = objArr2[i7];
                    if (obj2 == null) {
                        objArr[i5] = obj;
                        objArr2[i7] = obj;
                        i4 += hashCode;
                        i5++;
                        break;
                    }
                    if (obj2.equals(obj)) {
                        break;
                    }
                    a2++;
                }
            }
            Arrays.fill(objArr, i5, i2, (Object) null);
            if (i5 == 1) {
                return new o1(objArr[0], i4);
            }
            if (chooseTableSize(i5) < chooseTableSize / 2) {
                return a(i5, objArr);
            }
            if (a(i5, objArr.length)) {
                objArr = Arrays.copyOf(objArr, i5);
            }
            return new h1(objArr, i4, objArr2, i3, i5);
        }
        return of(objArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(int i2, int i3) {
        return i2 < (i3 >> 1) + (i3 >> 2);
    }

    public static <E> a<E> builder() {
        return new a<>();
    }

    @Beta
    public static <E> a<E> builderWithExpectedSize(int i2) {
        i.a(i2, "expectedSize");
        return new a<>(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static int chooseTableSize(int i2) {
        int max = Math.max(i2, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (true) {
                double d2 = highestOneBit;
                Double.isNaN(d2);
                if (d2 * 0.7d >= max) {
                    return highestOneBit;
                }
                highestOneBit <<= 1;
            }
        } else {
            e.i.c.a.j.a(max < MAX_TABLE_SIZE, "collection too large");
            return MAX_TABLE_SIZE;
        }
    }

    public static <E> g0<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof g0) && !(collection instanceof SortedSet)) {
            g0<E> g0Var = (g0) collection;
            if (!g0Var.isPartialView()) {
                return g0Var;
            }
        }
        Object[] array = collection.toArray();
        return a(array.length, array);
    }

    public static <E> g0<E> of() {
        return h1.EMPTY;
    }

    @Override // com.google.common.collect.v
    public x<E> asList() {
        x<E> xVar = this.f14095f;
        if (xVar != null) {
            return xVar;
        }
        x<E> createAsList = createAsList();
        this.f14095f = createAsList;
        return createAsList;
    }

    x<E> createAsList() {
        return x.asImmutableList(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof g0) && isHashCodeFast() && ((g0) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return n1.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return n1.a(this);
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract t1<E> iterator();

    @Override // com.google.common.collect.v
    Object writeReplace() {
        return new b(toArray());
    }

    public static <E> g0<E> of(E e2) {
        return new o1(e2);
    }

    public static <E> g0<E> of(E e2, E e3) {
        return a(2, e2, e3);
    }

    public static <E> g0<E> of(E e2, E e3, E e4) {
        return a(3, e2, e3, e4);
    }

    public static <E> g0<E> of(E e2, E e3, E e4, E e5) {
        return a(4, e2, e3, e4, e5);
    }

    public static <E> g0<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> g0<E> of(E e2, E e3, E e4, E e5, E e6) {
        return a(5, e2, e3, e4, e5, e6);
    }

    @SafeVarargs
    public static <E> g0<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        e.i.c.a.j.a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return a(objArr.length, objArr);
    }

    public static <E> g0<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new a().a((a) next).a((Iterator) it).a();
    }

    public static <E> g0<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return of();
        }
        if (length != 1) {
            return a(eArr.length, (Object[]) eArr.clone());
        }
        return of((Object) eArr[0]);
    }
}
