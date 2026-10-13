package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.x;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableCollection.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class v<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: e, reason: collision with root package name */
    private static final Object[] f14186e = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public x<E> asList() {
        return isEmpty() ? x.of() : x.asImmutableList(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(@NullableDecl Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public int copyIntoArray(Object[] objArr, int i2) {
        t1<E> it = iterator();
        while (it.hasNext()) {
            objArr[i2] = it.next();
            i2++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] internalArray() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract t1<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f14186e);
    }

    Object writeReplace() {
        return new x.d(toArray());
    }

    /* compiled from: ImmutableCollection.java */
    /* loaded from: classes.dex */
    public static abstract class b<E> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static int a(int i2, int i3) {
            if (i3 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int i4 = i2 + (i2 >> 1) + 1;
            if (i4 < i3) {
                i4 = Integer.highestOneBit(i3 - 1) << 1;
            }
            if (i4 < 0) {
                return Integer.MAX_VALUE;
            }
            return i4;
        }

        @CanIgnoreReturnValue
        public abstract b<E> a(E e2);

        @CanIgnoreReturnValue
        public b<E> a(E... eArr) {
            for (E e2 : eArr) {
                a((b<E>) e2);
            }
            return this;
        }

        @CanIgnoreReturnValue
        public b<E> a(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                a((b<E>) it.next());
            }
            return this;
        }

        @CanIgnoreReturnValue
        public b<E> a(Iterator<? extends E> it) {
            while (it.hasNext()) {
                a((b<E>) it.next());
            }
            return this;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final <T> T[] toArray(T[] tArr) {
        e.i.c.a.j.a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] internalArray = internalArray();
            if (internalArray != null) {
                return (T[]) d1.a(internalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr = (T[]) a1.b(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableCollection.java */
    /* loaded from: classes.dex */
    public static abstract class a<E> extends b<E> {

        /* renamed from: a, reason: collision with root package name */
        Object[] f14187a;

        /* renamed from: b, reason: collision with root package name */
        int f14188b;

        /* renamed from: c, reason: collision with root package name */
        boolean f14189c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i2) {
            i.a(i2, "initialCapacity");
            this.f14187a = new Object[i2];
            this.f14188b = 0;
        }

        private void a(int i2) {
            Object[] objArr = this.f14187a;
            if (objArr.length < i2) {
                this.f14187a = Arrays.copyOf(objArr, b.a(objArr.length, i2));
                this.f14189c = false;
            } else if (this.f14189c) {
                this.f14187a = (Object[]) objArr.clone();
                this.f14189c = false;
            }
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public a<E> a(E e2) {
            e.i.c.a.j.a(e2);
            a(this.f14188b + 1);
            Object[] objArr = this.f14187a;
            int i2 = this.f14188b;
            this.f14188b = i2 + 1;
            objArr[i2] = e2;
            return this;
        }

        @Override // com.google.common.collect.v.b
        @CanIgnoreReturnValue
        public b<E> a(E... eArr) {
            a1.a(eArr);
            a(this.f14188b + eArr.length);
            System.arraycopy(eArr, 0, this.f14187a, this.f14188b, eArr.length);
            this.f14188b += eArr.length;
            return this;
        }
    }
}
