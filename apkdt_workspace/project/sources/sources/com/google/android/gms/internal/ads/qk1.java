package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class qk1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f8937a;

    /* renamed from: b, reason: collision with root package name */
    public int f8938b;

    /* renamed from: c, reason: collision with root package name */
    public int f8939c;

    /* renamed from: d, reason: collision with root package name */
    public long f8940d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f8941e;

    /* renamed from: f, reason: collision with root package name */
    private final vo1 f8942f;

    /* renamed from: g, reason: collision with root package name */
    private final vo1 f8943g;

    /* renamed from: h, reason: collision with root package name */
    private int f8944h;

    /* renamed from: i, reason: collision with root package name */
    private int f8945i;

    public qk1(vo1 vo1Var, vo1 vo1Var2, boolean z) {
        this.f8943g = vo1Var;
        this.f8942f = vo1Var2;
        this.f8941e = z;
        vo1Var2.c(12);
        this.f8937a = vo1Var2.o();
        vo1Var.c(12);
        this.f8945i = vo1Var.o();
        no1.b(vo1Var.d() == 1, "first_chunk must be 1");
        this.f8938b = -1;
    }

    public final boolean a() {
        int i2 = this.f8938b + 1;
        this.f8938b = i2;
        if (i2 == this.f8937a) {
            return false;
        }
        this.f8940d = this.f8941e ? this.f8942f.p() : this.f8942f.l();
        if (this.f8938b == this.f8944h) {
            this.f8939c = this.f8943g.o();
            this.f8943g.d(4);
            int i3 = this.f8945i - 1;
            this.f8945i = i3;
            this.f8944h = i3 > 0 ? this.f8943g.o() - 1 : -1;
        }
        return true;
    }
}
