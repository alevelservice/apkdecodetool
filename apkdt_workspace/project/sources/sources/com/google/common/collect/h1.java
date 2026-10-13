package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: RegularImmutableSet.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class h1<E> extends g0<E> {
    static final h1<Object> EMPTY = new h1<>(new Object[0], 0, null, 0, 0);

    @VisibleForTesting
    final transient Object[] elements;

    /* renamed from: g, reason: collision with root package name */
    private final transient int f14105g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f14106h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f14107i;

    @VisibleForTesting
    final transient Object[] table;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(Object[] objArr, int i2, Object[] objArr2, int i3, int i4) {
        this.elements = objArr;
        this.table = objArr2;
        this.f14105g = i3;
        this.f14106h = i2;
        this.f14107i = i4;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.table;
        if (obj == null || objArr == null) {
            return false;
        }
        int a2 = u.a(obj);
        while (true) {
            int i2 = a2 & this.f14105g;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a2 = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int copyIntoArray(Object[] objArr, int i2) {
        System.arraycopy(this.elements, 0, objArr, i2, this.f14107i);
        return i2 + this.f14107i;
    }

    @Override // com.google.common.collect.g0
    x<E> createAsList() {
        return x.asImmutableList(this.elements, this.f14107i);
    }

    @Override // com.google.common.collect.g0, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f14106h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public Object[] internalArray() {
        return this.elements;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int internalArrayEnd() {
        return this.f14107i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.g0
    boolean isHashCodeFast() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f14107i;
    }

    @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<E> iterator() {
        return asList().iterator();
    }
}
