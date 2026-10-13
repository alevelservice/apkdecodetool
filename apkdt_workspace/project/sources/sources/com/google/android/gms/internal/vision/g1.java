package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class g1 extends w0<Object> {

    /* renamed from: g, reason: collision with root package name */
    private final transient Object[] f12348g;

    /* renamed from: h, reason: collision with root package name */
    private final transient int f12349h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f12350i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(Object[] objArr, int i2, int i3) {
        this.f12348g = objArr;
        this.f12349h = i2;
        this.f12350i = i3;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        j0.a(i2, this.f12350i);
        return this.f12348g[(i2 * 2) + this.f12349h];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12350i;
    }
}
