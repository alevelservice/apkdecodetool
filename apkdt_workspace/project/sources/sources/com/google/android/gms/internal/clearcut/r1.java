package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class r1 extends s<String> implements s1, RandomAccess {

    /* renamed from: g, reason: collision with root package name */
    private static final r1 f11543g;

    /* renamed from: f, reason: collision with root package name */
    private final List<Object> f11544f;

    static {
        r1 r1Var = new r1();
        f11543g = r1Var;
        r1Var.W();
    }

    public r1() {
        this(10);
    }

    public r1(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    private r1(ArrayList<Object> arrayList) {
        this.f11544f = arrayList;
    }

    private static String a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof y ? ((y) obj).zzz() : f1.c((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final List<?> Z() {
        return Collections.unmodifiableList(this.f11544f);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a();
        this.f11544f.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection<? extends String> collection) {
        a();
        if (collection instanceof s1) {
            collection = ((s1) collection).Z();
        }
        boolean addAll = this.f11544f.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final s1 c0() {
        return V() ? new v3(this) : this;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f11544f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        Object obj = this.f11544f.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            String zzz = yVar.zzz();
            if (yVar.zzaa()) {
                this.f11544f.set(i2, zzz);
            }
            return zzz;
        }
        byte[] bArr = (byte[]) obj;
        String c2 = f1.c(bArr);
        if (f1.b(bArr)) {
            this.f11544f.set(i2, c2);
        }
        return c2;
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1 i(int i2) {
        if (i2 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i2);
        arrayList.addAll(this.f11544f);
        return new r1((ArrayList<Object>) arrayList);
    }

    @Override // com.google.android.gms.internal.clearcut.s1
    public final Object j(int i2) {
        return this.f11544f.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        Object remove = this.f11544f.remove(i2);
        ((AbstractList) this).modCount++;
        return a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        a();
        return a(this.f11544f.set(i2, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11544f.size();
    }
}
