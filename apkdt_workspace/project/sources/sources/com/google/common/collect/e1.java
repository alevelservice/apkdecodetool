package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableList.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class e1<E> extends x<E> {
    static final x<Object> EMPTY = new e1(new Object[0], 0);

    @VisibleForTesting
    final transient Object[] array;

    /* renamed from: g, reason: collision with root package name */
    private final transient int f14083g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(Object[] objArr, int i2) {
        this.array = objArr;
        this.f14083g = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.x, com.google.common.collect.v
    public int copyIntoArray(Object[] objArr, int i2) {
        System.arraycopy(this.array, 0, objArr, i2, this.f14083g);
        return i2 + this.f14083g;
    }

    @Override // java.util.List
    public E get(int i2) {
        e.i.c.a.j.a(i2, this.f14083g);
        return (E) this.array[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public Object[] internalArray() {
        return this.array;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int internalArrayEnd() {
        return this.f14083g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int internalArrayStart() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14083g;
    }
}
