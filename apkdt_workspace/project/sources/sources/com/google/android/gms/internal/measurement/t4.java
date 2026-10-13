package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class t4 extends n2<String> implements s4, RandomAccess {

    /* renamed from: g, reason: collision with root package name */
    private static final t4 f12111g;

    /* renamed from: f, reason: collision with root package name */
    private final List<Object> f12112f;

    static {
        t4 t4Var = new t4();
        f12111g = t4Var;
        t4Var.P();
    }

    public t4() {
        this(10);
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final void a(t2 t2Var) {
        a();
        this.f12112f.add(t2Var);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a();
        this.f12112f.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final s4 b0() {
        return Q() ? new w6(this) : this;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f12112f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final List<?> e0() {
        return Collections.unmodifiableList(this.f12112f);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        Object obj = this.f12112f.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof t2) {
            t2 t2Var = (t2) obj;
            String zzsa = t2Var.zzsa();
            if (t2Var.zzsb()) {
                this.f12112f.set(i2, zzsa);
            }
            return zzsa;
        }
        byte[] bArr = (byte[]) obj;
        String c2 = c4.c(bArr);
        if (c4.b(bArr)) {
            this.f12112f.set(i2, c2);
        }
        return c2;
    }

    @Override // com.google.android.gms.internal.measurement.s4
    public final Object k(int i2) {
        return this.f12112f.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        a();
        return a(this.f12112f.set(i2, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12112f.size();
    }

    @Override // com.google.android.gms.internal.measurement.i4
    public final /* synthetic */ i4 zzap(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f12112f);
            return new t4((ArrayList<Object>) arrayList);
        }
        throw new IllegalArgumentException();
    }

    public t4(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection<? extends String> collection) {
        a();
        if (collection instanceof s4) {
            collection = ((s4) collection).e0();
        }
        boolean addAll = this.f12112f.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        Object remove = this.f12112f.remove(i2);
        ((AbstractList) this).modCount++;
        return a(remove);
    }

    private t4(ArrayList<Object> arrayList) {
        this.f12112f = arrayList;
    }

    private static String a(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof t2) {
            return ((t2) obj).zzsa();
        }
        return c4.c((byte[]) obj);
    }
}
