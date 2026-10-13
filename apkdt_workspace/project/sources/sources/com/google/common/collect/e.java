package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.v0;
import com.google.common.collect.w0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractMultiset.java */
@GwtCompatible
/* loaded from: classes.dex */
abstract class e<E> extends AbstractCollection<E> implements v0<E> {

    /* renamed from: e, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Set<E> f14071e;

    /* renamed from: f, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Set<v0.a<E>> f14072f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMultiset.java */
    /* loaded from: classes.dex */
    public class a extends w0.b<E> {
        a() {
        }

        @Override // com.google.common.collect.w0.b
        v0<E> a() {
            return e.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return e.this.elementIterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMultiset.java */
    /* loaded from: classes.dex */
    public class b extends w0.c<E> {
        b() {
        }

        @Override // com.google.common.collect.w0.c
        v0<E> a() {
            return e.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<v0.a<E>> iterator() {
            return e.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.this.distinctElements();
        }
    }

    @CanIgnoreReturnValue
    public abstract int add(@NullableDecl E e2, int i2);

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final boolean add(@NullableDecl E e2) {
        add(e2, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final boolean addAll(Collection<? extends E> collection) {
        return w0.a((v0) this, (Collection) collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract void clear();

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.v0
    public boolean contains(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    Set<E> createElementSet() {
        return new a();
    }

    Set<v0.a<E>> createEntrySet() {
        return new b();
    }

    abstract int distinctElements();

    abstract Iterator<E> elementIterator();

    @Override // com.google.common.collect.v0
    public Set<E> elementSet() {
        Set<E> set = this.f14071e;
        if (set != null) {
            return set;
        }
        Set<E> createElementSet = createElementSet();
        this.f14071e = createElementSet;
        return createElementSet;
    }

    abstract Iterator<v0.a<E>> entryIterator();

    @Override // com.google.common.collect.v0
    public Set<v0.a<E>> entrySet() {
        Set<v0.a<E>> set = this.f14072f;
        if (set != null) {
            return set;
        }
        Set<v0.a<E>> createEntrySet = createEntrySet();
        this.f14072f = createEntrySet;
        return createEntrySet;
    }

    @Override // java.util.Collection
    public final boolean equals(@NullableDecl Object obj) {
        return w0.a(this, obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @CanIgnoreReturnValue
    public abstract int remove(@NullableDecl Object obj, int i2);

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.v0
    @CanIgnoreReturnValue
    public final boolean remove(@NullableDecl Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final boolean removeAll(Collection<?> collection) {
        return w0.b(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public final boolean retainAll(Collection<?> collection) {
        return w0.c(this, collection);
    }

    @CanIgnoreReturnValue
    public abstract int setCount(@NullableDecl E e2, int i2);

    @CanIgnoreReturnValue
    public abstract boolean setCount(@NullableDecl E e2, int i2, int i3);

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }
}
