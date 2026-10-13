package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class ac1 extends AbstractList<String> implements v91, RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    private final v91 f5559e;

    public ac1(v91 v91Var) {
        this.f5559e = v91Var;
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final void a(t71 t71Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final List<?> a0() {
        return this.f5559e.a0();
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final v91 d0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.f5559e.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new cc1(this);
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final Object l(int i2) {
        return this.f5559e.l(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i2) {
        return new zb1(this, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5559e.size();
    }
}
