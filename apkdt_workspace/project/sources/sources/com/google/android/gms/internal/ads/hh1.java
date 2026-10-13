package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hh1 {

    /* renamed from: a, reason: collision with root package name */
    public final im1 f7072a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7073b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7074c;

    /* renamed from: d, reason: collision with root package name */
    public final ym1[] f7075d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean[] f7076e;

    /* renamed from: f, reason: collision with root package name */
    public final long f7077f;

    /* renamed from: g, reason: collision with root package name */
    public int f7078g;

    /* renamed from: h, reason: collision with root package name */
    public long f7079h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7080i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7081j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7082k;

    /* renamed from: l, reason: collision with root package name */
    public hh1 f7083l;
    public rn1 m;
    private final ph1[] n;
    private final sh1[] o;
    private final pn1 p;
    private final oh1 q;
    private final km1 r;
    private rn1 s;

    public hh1(ph1[] ph1VarArr, sh1[] sh1VarArr, long j2, pn1 pn1Var, oh1 oh1Var, km1 km1Var, Object obj, int i2, int i3, boolean z, long j3) {
        this.n = ph1VarArr;
        this.o = sh1VarArr;
        this.f7077f = j2;
        this.p = pn1Var;
        this.q = oh1Var;
        this.r = km1Var;
        no1.a(obj);
        this.f7073b = obj;
        this.f7074c = i2;
        this.f7078g = i3;
        this.f7080i = z;
        this.f7079h = j3;
        this.f7075d = new ym1[ph1VarArr.length];
        this.f7076e = new boolean[ph1VarArr.length];
        this.f7072a = km1Var.a(i3, oh1Var.a());
    }

    public final void a(int i2, boolean z) {
        this.f7078g = i2;
        this.f7080i = z;
    }

    public final long b() {
        return this.f7077f - this.f7079h;
    }

    public final boolean c() {
        if (this.f7081j) {
            return !this.f7082k || this.f7072a.a0() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.pn1 r0 = r6.p
            com.google.android.gms.internal.ads.sh1[] r1 = r6.o
            com.google.android.gms.internal.ads.im1 r2 = r6.f7072a
            com.google.android.gms.internal.ads.bn1 r2 = r2.X()
            com.google.android.gms.internal.ads.rn1 r0 = r0.a(r1, r2)
            com.google.android.gms.internal.ads.rn1 r1 = r6.s
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L16
        L14:
            r1 = 0
            goto L28
        L16:
            r4 = 0
        L17:
            com.google.android.gms.internal.ads.qn1 r5 = r0.f9181b
            int r5 = r5.f8984a
            if (r4 >= r5) goto L27
            boolean r5 = r0.a(r1, r4)
            if (r5 != 0) goto L24
            goto L14
        L24:
            int r4 = r4 + 1
            goto L17
        L27:
            r1 = 1
        L28:
            if (r1 == 0) goto L2b
            return r3
        L2b:
            r6.m = r0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hh1.d():boolean");
    }

    public final long a(long j2, boolean z) {
        return a(j2, false, new boolean[this.n.length]);
    }

    public final long a(long j2, boolean z, boolean[] zArr) {
        qn1 qn1Var = this.m.f9181b;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= qn1Var.f8984a) {
                break;
            }
            boolean[] zArr2 = this.f7076e;
            if (z || !this.m.a(this.s, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        long a2 = this.f7072a.a(qn1Var.a(), this.f7076e, this.f7075d, zArr, j2);
        this.s = this.m;
        this.f7082k = false;
        int i3 = 0;
        while (true) {
            ym1[] ym1VarArr = this.f7075d;
            if (i3 < ym1VarArr.length) {
                if (ym1VarArr[i3] != null) {
                    no1.b(qn1Var.a(i3) != null);
                    this.f7082k = true;
                } else {
                    no1.b(qn1Var.a(i3) == null);
                }
                i3++;
            } else {
                this.q.a(this.n, this.m.f9180a, qn1Var);
                return a2;
            }
        }
    }

    public final void a() {
        try {
            this.r.a(this.f7072a);
        } catch (RuntimeException unused) {
        }
    }
}
