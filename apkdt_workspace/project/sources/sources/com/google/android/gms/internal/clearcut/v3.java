package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class v3 extends AbstractList<String> implements s1, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    private final s1 f11584e;

    public v3(s1 s1Var) {
        this.f11584e = s1Var;
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final List<?> Z() {
        return this.f11584e.Z();
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final s1 c0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.f11584e.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new x3(this);
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final Object j(int i2) {
        return this.f11584e.j(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i2) {
        return new w3(this, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11584e.size();
    }
}
