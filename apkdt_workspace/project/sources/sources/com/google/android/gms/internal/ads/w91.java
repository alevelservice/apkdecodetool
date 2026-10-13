package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class w91 extends n71<String> implements v91, RandomAccess {

    /* renamed from: g, reason: collision with root package name */
    private static final w91 f10061g;

    /* renamed from: f, reason: collision with root package name */
    private final List<Object> f10062f;

    static {
        w91 w91Var = new w91();
        f10061g = w91Var;
        w91Var.T();
    }

    public w91() {
        this(10);
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final void a(t71 t71Var) {
        a();
        this.f10062f.add(t71Var);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final List<?> a0() {
        return Collections.unmodifiableList(this.f10062f);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a();
        this.f10062f.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f10062f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final v91 d0() {
        return R() ? new ac1(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.l91
    public final /* synthetic */ l91 f(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f10062f);
            return new w91((ArrayList<Object>) arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        Object obj = this.f10062f.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof t71) {
            t71 t71Var = (t71) obj;
            String zzaxi = t71Var.zzaxi();
            if (t71Var.zzaxj()) {
                this.f10062f.set(i2, zzaxi);
            }
            return zzaxi;
        }
        byte[] bArr = (byte[]) obj;
        String c2 = f91.c(bArr);
        if (f91.b(bArr)) {
            this.f10062f.set(i2, c2);
        }
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.v91
    public final Object l(int i2) {
        return this.f10062f.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        a();
        return a(this.f10062f.set(i2, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10062f.size();
    }

    public w91(int i2) {
        this((ArrayList<Object>) new ArrayList(i2));
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection<? extends String> collection) {
        a();
        if (collection instanceof v91) {
            collection = ((v91) collection).a0();
        }
        boolean addAll = this.f10062f.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        Object remove = this.f10062f.remove(i2);
        ((AbstractList) this).modCount++;
        return a(remove);
    }

    private w91(ArrayList<Object> arrayList) {
        this.f10062f = arrayList;
    }

    private static String a(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof t71) {
            return ((t71) obj).zzaxi();
        }
        return f91.c((byte[]) obj);
    }
}
