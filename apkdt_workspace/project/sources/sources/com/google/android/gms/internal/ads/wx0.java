package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class wx0 extends jx0<Object> {

    /* renamed from: g, reason: collision with root package name */
    private final transient Object[] f10234g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f10235h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f10236i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wx0(Object[] objArr, int i2, int i3) {
        this.f10234g = objArr;
        this.f10235h = i2;
        this.f10236i = i3;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        uw0.a(i2, this.f10236i);
        return this.f10234g[(i2 * 2) + this.f10235h];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10236i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return true;
    }
}
