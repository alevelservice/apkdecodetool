package com.google.android.gms.internal.vision;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class z0<E> extends w0<E> {
    static final w0<Object> zzlt = new z0(new Object[0], 0);

    /* renamed from: g, reason: collision with root package name */
    private final transient Object[] f12610g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f12611h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0(Object[] objArr, int i2) {
        this.f12610g = objArr;
        this.f12611h = i2;
    }

    @Override // java.util.List
    public final E get(int i2) {
        j0.a(i2, this.f12611h);
        return (E) this.f12610g[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12611h;
    }

    @Override // com.google.android.gms.internal.vision.w0, com.google.android.gms.internal.vision.t0
    final int zza(Object[] objArr, int i2) {
        System.arraycopy(this.f12610g, 0, objArr, i2, this.f12611h);
        return i2 + this.f12611h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.t0
    public final Object[] zzbz() {
        return this.f12610g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.t0
    public final int zzca() {
        return 0;
    }

    @Override // com.google.android.gms.internal.vision.t0
    final int zzcb() {
        return this.f12611h;
    }
}
