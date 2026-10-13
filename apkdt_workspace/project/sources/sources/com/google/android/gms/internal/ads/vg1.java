package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class vg1 implements ph1, sh1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f9914a;

    /* renamed from: b, reason: collision with root package name */
    private rh1 f9915b;

    /* renamed from: c, reason: collision with root package name */
    private int f9916c;

    /* renamed from: d, reason: collision with root package name */
    private int f9917d;

    /* renamed from: e, reason: collision with root package name */
    private ym1 f9918e;

    /* renamed from: f, reason: collision with root package name */
    private long f9919f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f9920g = true;

    /* renamed from: h, reason: collision with root package name */
    private boolean f9921h;

    public vg1(int i2) {
        this.f9914a = i2;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void a(int i2) {
        this.f9916c = i2;
    }

    @Override // com.google.android.gms.internal.ads.bh1
    public void a(int i2, Object obj) {
    }

    protected abstract void a(long j2, boolean z);

    protected abstract void a(boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(zzgq[] zzgqVarArr, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final int b() {
        return this.f9917d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int e() {
        return this.f9916c;
    }

    protected abstract void f();

    protected abstract void g();

    protected abstract void h();

    @Override // com.google.android.gms.internal.ads.ph1
    public final void i() {
        this.f9918e.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final rh1 j() {
        return this.f9915b;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void k() {
        this.f9921h = true;
    }

    @Override // com.google.android.gms.internal.ads.ph1, com.google.android.gms.internal.ads.sh1
    public final int m() {
        return this.f9914a;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public ro1 n() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final ym1 o() {
        return this.f9918e;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final sh1 p() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final boolean q() {
        return this.f9921h;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void r() {
        no1.b(this.f9917d == 1);
        this.f9917d = 0;
        this.f9918e = null;
        this.f9921h = false;
        h();
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final boolean s() {
        return this.f9920g;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void start() {
        no1.b(this.f9917d == 1);
        this.f9917d = 2;
        f();
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void stop() {
        no1.b(this.f9917d == 2);
        this.f9917d = 1;
        g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean t() {
        return this.f9920g ? this.f9921h : this.f9918e.isReady();
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void a(rh1 rh1Var, zzgq[] zzgqVarArr, ym1 ym1Var, long j2, boolean z, long j3) {
        no1.b(this.f9917d == 0);
        this.f9915b = rh1Var;
        this.f9917d = 1;
        a(z);
        a(zzgqVarArr, ym1Var, j3);
        a(j2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(long j2) {
        this.f9918e.a(j2 - this.f9919f);
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void a(zzgq[] zzgqVarArr, ym1 ym1Var, long j2) {
        no1.b(!this.f9921h);
        this.f9918e = ym1Var;
        this.f9920g = false;
        this.f9919f = j2;
        a(zzgqVarArr, j2);
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void a(long j2) {
        this.f9921h = false;
        this.f9920g = false;
        a(j2, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(mh1 mh1Var, hj1 hj1Var, boolean z) {
        int a2 = this.f9918e.a(mh1Var, hj1Var, z);
        if (a2 == -4) {
            if (hj1Var.c()) {
                this.f9920g = true;
                return this.f9921h ? -4 : -3;
            }
            hj1Var.f7092d += this.f9919f;
        } else if (a2 == -5) {
            zzgq zzgqVar = mh1Var.f8140a;
            long j2 = zzgqVar.A;
            if (j2 != Long.MAX_VALUE) {
                mh1Var.f8140a = zzgqVar.a(j2 + this.f9919f);
            }
        }
        return a2;
    }
}
