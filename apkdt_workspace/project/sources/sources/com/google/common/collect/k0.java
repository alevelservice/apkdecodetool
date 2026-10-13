package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IndexedImmutableSet.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class k0<E> extends g0<E> {

    /* compiled from: IndexedImmutableSet.java */
    /* loaded from: classes.dex */
    class a extends x<E> {
        a() {
        }

        @Override // java.util.List
        public E get(int i2) {
            return (E) k0.this.get(i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return k0.this.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return k0.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    @GwtIncompatible
    public int copyIntoArray(Object[] objArr, int i2) {
        return asList().copyIntoArray(objArr, i2);
    }

    @Override // com.google.common.collect.g0
    x<E> createAsList() {
        return new a();
    }

    abstract E get(int i2);

    @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<E> iterator() {
        return asList().iterator();
    }
}
