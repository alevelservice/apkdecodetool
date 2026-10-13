package com.google.android.gms.internal.vision;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class d1<K> extends a1<K> {

    /* renamed from: g, reason: collision with root package name */
    private final transient x0<K, ?> f12319g;

    /* renamed from: h, reason: collision with root package name */
    private final transient w0<K> f12320h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(x0<K, ?> x0Var, w0<K> w0Var) {
        this.f12319g = x0Var;
        this.f12320h = w0Var;
    }

    @Override // com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        return this.f12319g.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f12319g.size();
    }

    @Override // com.google.android.gms.internal.vision.t0
    final int zza(Object[] objArr, int i2) {
        return zzcc().zza(objArr, i2);
    }

    @Override // com.google.android.gms.internal.vision.a1, com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzby */
    public final i1<K> iterator() {
        return (i1) zzcc().iterator();
    }

    @Override // com.google.android.gms.internal.vision.a1, com.google.android.gms.internal.vision.t0
    public final w0<K> zzcc() {
        return this.f12320h;
    }
}
