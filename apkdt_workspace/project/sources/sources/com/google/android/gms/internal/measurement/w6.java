package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class w6 extends AbstractList<String> implements s4, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    private final s4 f12178e;

    public w6(s4 s4Var) {
        this.f12178e = s4Var;
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final void a(t2 t2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final s4 b0() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final List<?> e0() {
        return this.f12178e.e0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.f12178e.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new y6(this);
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final Object k(int i2) {
        return this.f12178e.k(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i2) {
        return new v6(this, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12178e.size();
    }
}
