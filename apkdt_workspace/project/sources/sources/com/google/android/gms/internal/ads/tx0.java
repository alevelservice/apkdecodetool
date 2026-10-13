package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tx0<E> extends jx0<E> {
    static final jx0<Object> zzgpb = new tx0(new Object[0], 0);

    /* renamed from: g, reason: collision with root package name */
    private final transient Object[] f9648g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f9649h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tx0(Object[] objArr, int i2) {
        this.f9648g = objArr;
        this.f9649h = i2;
    }

    @Override // java.util.List
    public final E get(int i2) {
        uw0.a(i2, this.f9649h);
        return (E) this.f9648g[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9649h;
    }

    @Override // com.google.android.gms.internal.ads.jx0, com.google.android.gms.internal.ads.ex0
    final int zza(Object[] objArr, int i2) {
        System.arraycopy(this.f9648g, 0, objArr, i2, this.f9649h);
        return i2 + this.f9649h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final Object[] zzaof() {
        return this.f9648g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zzaog() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.ex0
    final int zzaoh() {
        return this.f9649h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return false;
    }
}
