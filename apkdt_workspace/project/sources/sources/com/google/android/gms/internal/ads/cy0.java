package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cy0<E> extends mx0<E> {

    /* renamed from: g, reason: collision with root package name */
    private final transient E f6127g;

    /* renamed from: h, reason: collision with root package name */
    private transient int f6128h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy0(E e2) {
        uw0.a(e2);
        this.f6127g = e2;
    }

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f6127g.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.mx0, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i2 = this.f6128h;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = this.f6127g.hashCode();
        this.f6128h = hashCode;
        return hashCode;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f6127g.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zza(Object[] objArr, int i2) {
        objArr[i2] = this.f6127g;
        return i2 + 1;
    }

    @Override // com.google.android.gms.internal.ads.mx0, com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzaoe */
    public final ay0<E> iterator() {
        return new ox0(this.f6127g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.mx0
    final boolean zzaol() {
        return this.f6128h != 0;
    }

    @Override // com.google.android.gms.internal.ads.mx0
    final jx0<E> zzaom() {
        return jx0.zzad(this.f6127g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy0(E e2, int i2) {
        this.f6127g = e2;
        this.f6128h = i2;
    }
}
