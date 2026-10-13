package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class n7 extends AbstractList<String> implements k5, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    private final k5 f12454e;

    public n7(k5 k5Var) {
        this.f12454e = k5Var;
    }

    @Override // com.google.android.gms.internal.vision.k5
    public final List<?> X() {
        return this.f12454e.X();
    }

    @Override // com.google.android.gms.internal.vision.k5
    public final k5 Y() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.f12454e.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new p7(this);
    }

    @Override // com.google.android.gms.internal.vision.k5
    public final Object j(int i2) {
        return this.f12454e.j(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i2) {
        return new m7(this, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12454e.size();
    }
}
