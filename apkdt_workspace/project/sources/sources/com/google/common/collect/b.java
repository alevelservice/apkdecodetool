package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.v0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMapBasedMultiset.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class b<E> extends e<E> implements Serializable {

    @GwtIncompatible
    private static final long serialVersionUID = 0;
    transient b1<E> backingMap;
    transient long size;

    /* compiled from: AbstractMapBasedMultiset.java */
    /* loaded from: classes.dex */
    class a extends b<E>.c<E> {
        a() {
            super();
        }

        @Override // com.google.common.collect.b.c
        E a(int i2) {
            return b.this.backingMap.c(i2);
        }
    }

    /* compiled from: AbstractMapBasedMultiset.java */
    /* renamed from: com.google.common.collect.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0105b extends b<E>.c<v0.a<E>> {
        C0105b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b.c
        public v0.a<E> a(int i2) {
            return b.this.backingMap.b(i2);
        }
    }

    /* compiled from: AbstractMapBasedMultiset.java */
    /* loaded from: classes.dex */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: e, reason: collision with root package name */
        int f14035e;

        /* renamed from: f, reason: collision with root package name */
        int f14036f = -1;

        /* renamed from: g, reason: collision with root package name */
        int f14037g;

        c() {
            this.f14035e = b.this.backingMap.b();
            this.f14037g = b.this.backingMap.f14042d;
        }

        private void a() {
            if (b.this.backingMap.f14042d != this.f14037g) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T a(int i2);

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f14035e >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T a2 = a(this.f14035e);
                int i2 = this.f14035e;
                this.f14036f = i2;
                this.f14035e = b.this.backingMap.f(i2);
                return a2;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            i.a(this.f14036f != -1);
            b.this.size -= r0.backingMap.g(this.f14036f);
            this.f14035e = b.this.backingMap.a(this.f14035e, this.f14036f);
            this.f14036f = -1;
            this.f14037g = b.this.backingMap.f14042d;
        }
    }

    b(int i2) {
        init(i2);
    }

    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int a2 = l1.a(objectInputStream);
        init(3);
        l1.a(this, objectInputStream, a2);
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        l1.a(this, objectOutputStream);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.v0
    @CanIgnoreReturnValue
    public final int add(@NullableDecl E e2, int i2) {
        if (i2 == 0) {
            return count(e2);
        }
        e.i.c.a.j.a(i2 > 0, "occurrences cannot be negative: %s", i2);
        int b2 = this.backingMap.b(e2);
        if (b2 == -1) {
            this.backingMap.a((b1<E>) e2, i2);
            this.size += i2;
            return 0;
        }
        int d2 = this.backingMap.d(b2);
        long j2 = i2;
        long j3 = d2 + j2;
        e.i.c.a.j.a(j3 <= 2147483647L, "too many occurrences: %s", j3);
        this.backingMap.b(b2, (int) j3);
        this.size += j2;
        return d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addTo(v0<? super E> v0Var) {
        e.i.c.a.j.a(v0Var);
        int b2 = this.backingMap.b();
        while (b2 >= 0) {
            v0Var.add(this.backingMap.c(b2), this.backingMap.d(b2));
            b2 = this.backingMap.f(b2);
        }
    }

    @Override // com.google.common.collect.e, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.backingMap.a();
        this.size = 0L;
    }

    @Override // com.google.common.collect.v0
    public final int count(@NullableDecl Object obj) {
        return this.backingMap.a(obj);
    }

    @Override // com.google.common.collect.e
    final int distinctElements() {
        return this.backingMap.c();
    }

    @Override // com.google.common.collect.e
    final Iterator<E> elementIterator() {
        return new a();
    }

    @Override // com.google.common.collect.e
    final Iterator<v0.a<E>> entryIterator() {
        return new C0105b();
    }

    abstract void init(int i2);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return w0.a((v0) this);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.v0
    @CanIgnoreReturnValue
    public final int remove(@NullableDecl Object obj, int i2) {
        if (i2 == 0) {
            return count(obj);
        }
        e.i.c.a.j.a(i2 > 0, "occurrences cannot be negative: %s", i2);
        int b2 = this.backingMap.b(obj);
        if (b2 == -1) {
            return 0;
        }
        int d2 = this.backingMap.d(b2);
        if (d2 > i2) {
            this.backingMap.b(b2, d2 - i2);
        } else {
            this.backingMap.g(b2);
            i2 = d2;
        }
        this.size -= i2;
        return d2;
    }

    @Override // com.google.common.collect.e
    @CanIgnoreReturnValue
    public final int setCount(@NullableDecl E e2, int i2) {
        i.a(i2, "count");
        b1<E> b1Var = this.backingMap;
        int c2 = i2 == 0 ? b1Var.c(e2) : b1Var.a((b1<E>) e2, i2);
        this.size += i2 - c2;
        return c2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.v0
    public final int size() {
        return e.i.c.c.a.a(this.size);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.v0
    public final boolean setCount(@NullableDecl E e2, int i2, int i3) {
        i.a(i2, "oldCount");
        i.a(i3, "newCount");
        int b2 = this.backingMap.b(e2);
        if (b2 == -1) {
            if (i2 != 0) {
                return false;
            }
            if (i3 > 0) {
                this.backingMap.a((b1<E>) e2, i3);
                this.size += i3;
            }
            return true;
        }
        if (this.backingMap.d(b2) != i2) {
            return false;
        }
        if (i3 == 0) {
            this.backingMap.g(b2);
            this.size -= i2;
        } else {
            this.backingMap.b(b2, i3);
            this.size += i3 - i2;
        }
        return true;
    }
}
