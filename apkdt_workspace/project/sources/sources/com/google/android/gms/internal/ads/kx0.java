package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class kx0<E> extends jx0<E> {

    /* renamed from: g, reason: collision with root package name */
    private final transient int f7777g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f7778h;
    private final /* synthetic */ jx0 zzgoo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kx0(jx0 jx0Var, int i2, int i3) {
        this.zzgoo = jx0Var;
        this.f7777g = i2;
        this.f7778h = i3;
    }

    @Override // java.util.List
    public final E get(int i2) {
        uw0.a(i2, this.f7778h);
        return this.zzgoo.get(i2 + this.f7777g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7778h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final Object[] zzaof() {
        return this.zzgoo.zzaof();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zzaog() {
        return this.zzgoo.zzaog() + this.f7777g;
    }

    @Override // com.google.android.gms.internal.ads.ex0
    final int zzaoh() {
        return this.zzgoo.zzaog() + this.f7777g + this.f7778h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.jx0, java.util.List
    /* renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public final jx0<E> subList(int i2, int i3) {
        uw0.a(i2, i3, this.f7778h);
        jx0 jx0Var = this.zzgoo;
        int i4 = this.f7777g;
        return (jx0) jx0Var.subList(i2 + i4, i3 + i4);
    }
}
