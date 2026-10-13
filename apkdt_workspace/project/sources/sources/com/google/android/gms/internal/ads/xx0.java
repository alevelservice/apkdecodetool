package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xx0<K> extends mx0<K> {

    /* renamed from: g, reason: collision with root package name */
    private final transient nx0<K, ?> f10442g;

    /* renamed from: h, reason: collision with root package name */
    private final transient jx0<K> f10443h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xx0(nx0<K, ?> nx0Var, jx0<K> jx0Var) {
        this.f10442g = nx0Var;
        this.f10443h = jx0Var;
    }

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        return this.f10442g.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f10442g.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zza(Object[] objArr, int i2) {
        return zzaoi().zza(objArr, i2);
    }

    @Override // com.google.android.gms.internal.ads.mx0, com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzaoe */
    public final ay0<K> iterator() {
        return (ay0) zzaoi().iterator();
    }

    @Override // com.google.android.gms.internal.ads.mx0, com.google.android.gms.internal.ads.ex0
    public final jx0<K> zzaoi() {
        return this.f10443h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return true;
    }
}
