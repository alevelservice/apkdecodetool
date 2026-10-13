package com.google.android.gms.internal.vision;

/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class y0<E> extends w0<E> {

    /* renamed from: g, reason: collision with root package name */
    private final transient int f12606g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f12607h;
    private final /* synthetic */ w0 zzls;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(w0 w0Var, int i2, int i3) {
        this.zzls = w0Var;
        this.f12606g = i2;
        this.f12607h = i3;
    }

    @Override // java.util.List
    public final E get(int i2) {
        j0.a(i2, this.f12607h);
        return this.zzls.get(i2 + this.f12606g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12607h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.t0
    public final Object[] zzbz() {
        return this.zzls.zzbz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.t0
    public final int zzca() {
        return this.zzls.zzca() + this.f12606g;
    }

    @Override // com.google.android.gms.internal.vision.t0
    final int zzcb() {
        return this.zzls.zzca() + this.f12606g + this.f12607h;
    }

    @Override // com.google.android.gms.internal.vision.w0, java.util.List
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final w0<E> subList(int i2, int i3) {
        j0.a(i2, i3, this.f12607h);
        w0 w0Var = this.zzls;
        int i4 = this.f12606g;
        return (w0) w0Var.subList(i2 + i4, i3 + i4);
    }
}
