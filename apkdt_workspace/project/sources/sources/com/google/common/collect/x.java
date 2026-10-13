package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.v;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableList.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class x<E> extends v<E> implements List<E>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private static final u1<Object> f14196f = new b(e1.EMPTY, 0);

    /* compiled from: ImmutableList.java */
    /* loaded from: classes.dex */
    public static final class a<E> extends v.a<E> {
        public a() {
            this(4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ v.b a(Object obj) {
            a((a<E>) obj);
            return this;
        }

        a(int i2) {
            super(i2);
        }

        @Override // com.google.common.collect.v.a, com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(E e2) {
            super.a((a<E>) e2);
            return this;
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(Iterator<? extends E> it) {
            super.a((Iterator) it);
            return this;
        }

        public x<E> a() {
            this.f14189c = true;
            return x.asImmutableList(this.f14187a, this.f14188b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableList.java */
    /* loaded from: classes.dex */
    public static class b<E> extends com.google.common.collect.a<E> {

        /* renamed from: g, reason: collision with root package name */
        private final x<E> f14197g;

        b(x<E> xVar, int i2) {
            super(xVar.size(), i2);
            this.f14197g = xVar;
        }

        @Override // com.google.common.collect.a
        protected E a(int i2) {
            return this.f14197g.get(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableList.java */
    /* loaded from: classes.dex */
    public static class c<E> extends x<E> {

        /* renamed from: g, reason: collision with root package name */
        private final transient x<E> f14198g;

        c(x<E> xVar) {
            this.f14198g = xVar;
        }

        private int a(int i2) {
            return (size() - 1) - i2;
        }

        private int b(int i2) {
            return size() - i2;
        }

        @Override // com.google.common.collect.x, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return this.f14198g.contains(obj);
        }

        @Override // java.util.List
        public E get(int i2) {
            e.i.c.a.j.a(i2, size());
            return this.f14198g.get(a(i2));
        }

        @Override // com.google.common.collect.x, java.util.List
        public int indexOf(@NullableDecl Object obj) {
            int lastIndexOf = this.f14198g.lastIndexOf(obj);
            if (lastIndexOf >= 0) {
                return a(lastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.v
        boolean isPartialView() {
            return this.f14198g.isPartialView();
        }

        @Override // com.google.common.collect.x, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.x, java.util.List
        public int lastIndexOf(@NullableDecl Object obj) {
            int indexOf = this.f14198g.indexOf(obj);
            if (indexOf >= 0) {
                return a(indexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.x, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.x
        public x<E> reverse() {
            return this.f14198g;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14198g.size();
        }

        @Override // com.google.common.collect.x, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i2) {
            return super.listIterator(i2);
        }

        @Override // com.google.common.collect.x, java.util.List
        public x<E> subList(int i2, int i3) {
            e.i.c.a.j.b(i2, i3, size());
            return this.f14198g.subList(b(i3), b(i2)).reverse();
        }
    }

    /* compiled from: ImmutableList.java */
    /* loaded from: classes.dex */
    static class d implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return x.copyOf(this.elements);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableList.java */
    /* loaded from: classes.dex */
    public class e extends x<E> {
        final transient int length;
        final transient int offset;

        e(int i2, int i3) {
            this.offset = i2;
            this.length = i3;
        }

        @Override // java.util.List
        public E get(int i2) {
            e.i.c.a.j.a(i2, this.length);
            return x.this.get(i2 + this.offset);
        }

        @Override // com.google.common.collect.v
        Object[] internalArray() {
            return x.this.internalArray();
        }

        @Override // com.google.common.collect.v
        int internalArrayEnd() {
            return x.this.internalArrayStart() + this.offset + this.length;
        }

        @Override // com.google.common.collect.v
        int internalArrayStart() {
            return x.this.internalArrayStart() + this.offset;
        }

        @Override // com.google.common.collect.v
        boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.x, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.x, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.length;
        }

        @Override // com.google.common.collect.x, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i2) {
            return super.listIterator(i2);
        }

        @Override // com.google.common.collect.x, java.util.List
        public x<E> subList(int i2, int i3) {
            e.i.c.a.j.b(i2, i3, this.length);
            x xVar = x.this;
            int i4 = this.offset;
            return xVar.subList(i2 + i4, i3 + i4);
        }
    }

    private static <E> x<E> a(Object... objArr) {
        a1.a(objArr);
        return asImmutableList(objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> x<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    public static <E> a<E> builder() {
        return new a<>();
    }

    @Beta
    public static <E> a<E> builderWithExpectedSize(int i2) {
        i.a(i2, "expectedSize");
        return new a<>(i2);
    }

    public static <E> x<E> copyOf(Iterable<? extends E> iterable) {
        e.i.c.a.j.a(iterable);
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> x<E> of() {
        return (x<E>) e1.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> x<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) l0.a((Iterable) iterable, (Object[]) new Comparable[0]);
        a1.a(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v
    public final x<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int copyIntoArray(Object[] objArr, int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        return p0.a(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            i2 = (((i2 * 31) + get(i3).hashCode()) ^ (-1)) ^ (-1);
        }
        return i2;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        return p0.b(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        return p0.d(this, obj);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final E remove(int i2) {
        throw new UnsupportedOperationException();
    }

    public x<E> reverse() {
        return size() <= 1 ? this : new c(this);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    @Deprecated
    public final E set(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    x<E> subListUnchecked(int i2, int i3) {
        return new e(i2, i3 - i2);
    }

    @Override // com.google.common.collect.v
    Object writeReplace() {
        return new d(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> x<E> asImmutableList(Object[] objArr, int i2) {
        if (i2 == 0) {
            return of();
        }
        return new e1(objArr, i2);
    }

    public static <E> x<E> of(E e2) {
        return a(e2);
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public x<E> subList(int i2, int i3) {
        e.i.c.a.j.b(i2, i3, size());
        int i4 = i3 - i2;
        if (i4 == size()) {
            return this;
        }
        if (i4 == 0) {
            return of();
        }
        return subListUnchecked(i2, i3);
    }

    public static <E> x<E> of(E e2, E e3) {
        return a(e2, e3);
    }

    @Override // java.util.List
    public u1<E> listIterator() {
        return listIterator(0);
    }

    public static <E> x<E> of(E e2, E e3, E e4) {
        return a(e2, e3, e4);
    }

    @Override // java.util.List
    public u1<E> listIterator(int i2) {
        e.i.c.a.j.b(i2, size());
        if (isEmpty()) {
            return (u1<E>) f14196f;
        }
        return new b(this, i2);
    }

    public static <E> x<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof v) {
            x<E> asList = ((v) collection).asList();
            return asList.isPartialView() ? asImmutableList(asList.toArray()) : asList;
        }
        return a(collection.toArray());
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5) {
        return a(e2, e3, e4, e5);
    }

    public static <E> x<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        e.i.c.a.j.a(comparator);
        Object[] b2 = l0.b(iterable);
        a1.a(b2);
        Arrays.sort(b2, comparator);
        return asImmutableList(b2);
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6) {
        return a(e2, e3, e4, e5, e6);
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7) {
        return a(e2, e3, e4, e5, e6, e7);
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8) {
        return a(e2, e3, e4, e5, e6, e7, e8);
    }

    public static <E> x<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        a aVar = new a();
        aVar.a((a) next);
        aVar.a((Iterator) it);
        return aVar.a();
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9) {
        return a(e2, e3, e4, e5, e6, e7, e8, e9);
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10) {
        return a(e2, e3, e4, e5, e6, e7, e8, e9, e10);
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        return a(e2, e3, e4, e5, e6, e7, e8, e9, e10, e11);
    }

    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12) {
        return a(e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12);
    }

    @SafeVarargs
    public static <E> x<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12, E e13, E... eArr) {
        e.i.c.a.j.a(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        objArr[6] = e8;
        objArr[7] = e9;
        objArr[8] = e10;
        objArr[9] = e11;
        objArr[10] = e12;
        objArr[11] = e13;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return a(objArr);
    }

    public static <E> x<E> copyOf(E[] eArr) {
        if (eArr.length == 0) {
            return of();
        }
        return a((Object[]) eArr.clone());
    }
}
