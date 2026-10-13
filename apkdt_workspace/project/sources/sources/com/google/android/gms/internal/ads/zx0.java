package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zx0<E> extends mx0<E> {
    static final zx0<Object> zzgpg = new zx0<>(new Object[0], 0, null, 0, 0);

    /* renamed from: g, reason: collision with root package name */
    private final transient Object[] f10865g;

    /* renamed from: h, reason: collision with root package name */
    private final transient Object[] f10866h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f10867i;

    /* renamed from: j, reason: collision with root package name */
    private final transient int f10868j;

    /* renamed from: k, reason: collision with root package name */
    private final transient int f10869k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zx0(Object[] objArr, int i2, Object[] objArr2, int i3, int i4) {
        this.f10865g = objArr;
        this.f10866h = objArr2;
        this.f10867i = i3;
        this.f10868j = i2;
        this.f10869k = i4;
    }

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f10866h;
        if (obj == null || objArr == null) {
            return false;
        }
        int a2 = fx0.a(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i2 = a2 & this.f10867i;
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

    @Override // com.google.android.gms.internal.ads.mx0, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f10868j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f10869k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zza(Object[] objArr, int i2) {
        System.arraycopy(this.f10865g, 0, objArr, i2, this.f10869k);
        return i2 + this.f10869k;
    }

    @Override // com.google.android.gms.internal.ads.mx0, com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzaoe */
    public final ay0<E> iterator() {
        return (ay0) zzaoi().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final Object[] zzaof() {
        return this.f10865g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zzaog() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.ex0
    final int zzaoh() {
        return this.f10869k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.mx0
    final boolean zzaol() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.mx0
    final jx0<E> zzaom() {
        return jx0.zzb(this.f10865g, this.f10869k);
    }
}
