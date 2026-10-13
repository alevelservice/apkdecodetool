package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ug1 implements t {

    /* renamed from: a, reason: collision with root package name */
    private int f9727a;

    /* renamed from: b, reason: collision with root package name */
    private int f9728b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9729c;

    /* renamed from: d, reason: collision with root package name */
    private final float f9730d;

    public ug1() {
        this(2500, 1, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.t
    public final int a() {
        return this.f9727a;
    }

    @Override // com.google.android.gms.internal.ads.t
    public final int zzb() {
        return this.f9728b;
    }

    private ug1(int i2, int i3, float f2) {
        this.f9727a = 2500;
        this.f9729c = 1;
        this.f9730d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.t
    public final void a(r0 r0Var) {
        this.f9728b++;
        int i2 = this.f9727a;
        this.f9727a = i2 + ((int) (i2 * this.f9730d));
        if (!(this.f9728b <= this.f9729c)) {
            throw r0Var;
        }
    }
}
