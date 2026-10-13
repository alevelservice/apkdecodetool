package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.concurrent.LazyInit;

/* compiled from: SingletonImmutableSet.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class o1<E> extends g0<E> {
    final transient E element;

    /* renamed from: g, reason: collision with root package name */
    @LazyInit
    private transient int f14140g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1(E e2) {
        e.i.c.a.j.a(e2);
        this.element = e2;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.element.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int copyIntoArray(Object[] objArr, int i2) {
        objArr[i2] = this.element;
        return i2 + 1;
    }

    @Override // com.google.common.collect.g0
    x<E> createAsList() {
        return x.of((Object) this.element);
    }

    @Override // com.google.common.collect.g0, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i2 = this.f14140g;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = this.element.hashCode();
        this.f14140g = hashCode;
        return hashCode;
    }

    @Override // com.google.common.collect.g0
    boolean isHashCodeFast() {
        return this.f14140g != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.element.toString() + ']';
    }

    @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<E> iterator() {
        return m0.a(this.element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1(E e2, int i2) {
        this.element = e2;
        this.f14140g = i2;
    }
}
