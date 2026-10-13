package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class l5 extends c3<String> implements k5, RandomAccess {

    /* renamed from: g, reason: collision with root package name */
    private static final l5 f12419g;

    /* renamed from: f, reason: collision with root package name */
    private final List<Object> f12420f;

    static {
        l5 l5Var = new l5();
        f12419g = l5Var;
        l5Var.U();
    }

    public l5() {
        this(10);
    }

    private static String a(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof j3) {
            return ((j3) obj).zzer();
        }
        return t4.c((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.vision.k5
    public final List<?> X() {
        return Collections.unmodifiableList(this.f12420f);
    }

    @Override // com.google.android.gms.internal.vision.k5
    public final k5 Y() {
        return S() ? new n7(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a();
        this.f12420f.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4 c(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f12420f);
            return new l5((ArrayList<Object>) arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f12420f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        Object obj = this.f12420f.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof j3) {
            j3 j3Var = (j3) obj;
            String zzer = j3Var.zzer();
            if (j3Var.zzes()) {
                this.f12420f.set(i2, zzer);
            }
            return zzer;
        }
        byte[] bArr = (byte[]) obj;
        String c2 = t4.c(bArr);
        if (t4.b(bArr)) {
            this.f12420f.set(i2, c2);
        }
        return c2;
    }

    @Override // com.google.android.gms.internal.vision.k5
    public final Object j(int i2) {
        return this.f12420f.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        a();
        return a(this.f12420f.set(i2, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12420f.size();
    }

    public l5(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection<? extends String> collection) {
        a();
        if (collection instanceof k5) {
            collection = ((k5) collection).X();
        }
        boolean addAll = this.f12420f.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        Object remove = this.f12420f.remove(i2);
        ((AbstractList) this).modCount++;
        return a(remove);
    }

    private l5(ArrayList<Object> arrayList) {
        this.f12420f = arrayList;
    }
}
