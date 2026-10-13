package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class qm1 {

    /* renamed from: a, reason: collision with root package name */
    private int f8963a = 1000;

    /* renamed from: b, reason: collision with root package name */
    private int[] f8964b;

    /* renamed from: c, reason: collision with root package name */
    private long[] f8965c;

    /* renamed from: d, reason: collision with root package name */
    private int[] f8966d;

    /* renamed from: e, reason: collision with root package name */
    private int[] f8967e;

    /* renamed from: f, reason: collision with root package name */
    private long[] f8968f;

    /* renamed from: g, reason: collision with root package name */
    private ak1[] f8969g;

    /* renamed from: h, reason: collision with root package name */
    private zzgq[] f8970h;

    /* renamed from: i, reason: collision with root package name */
    private int f8971i;

    /* renamed from: j, reason: collision with root package name */
    private int f8972j;

    /* renamed from: k, reason: collision with root package name */
    private int f8973k;

    /* renamed from: l, reason: collision with root package name */
    private int f8974l;
    private long m;
    private long n;
    private boolean o;
    private boolean p;
    private zzgq q;

    public qm1() {
        int i2 = this.f8963a;
        this.f8964b = new int[i2];
        this.f8965c = new long[i2];
        this.f8968f = new long[i2];
        this.f8967e = new int[i2];
        this.f8966d = new int[i2];
        this.f8969g = new ak1[i2];
        this.f8970h = new zzgq[i2];
        this.m = Long.MIN_VALUE;
        this.n = Long.MIN_VALUE;
        this.p = true;
        this.o = true;
    }

    public final synchronized long a() {
        return Math.max(this.m, this.n);
    }

    public final void b() {
        this.f8972j = 0;
        this.f8973k = 0;
        this.f8974l = 0;
        this.f8971i = 0;
        this.o = true;
    }

    public final void c() {
        this.m = Long.MIN_VALUE;
        this.n = Long.MIN_VALUE;
    }

    public final int d() {
        return this.f8972j + this.f8971i;
    }

    public final synchronized boolean e() {
        return this.f8971i != 0;
    }

    public final synchronized zzgq f() {
        if (this.p) {
            return null;
        }
        return this.q;
    }

    public final synchronized long g() {
        if (!e()) {
            return -1L;
        }
        int i2 = ((this.f8973k + this.f8971i) - 1) % this.f8963a;
        this.f8973k = (this.f8973k + this.f8971i) % this.f8963a;
        this.f8972j += this.f8971i;
        this.f8971i = 0;
        return this.f8965c[i2] + this.f8966d[i2];
    }

    public final synchronized int a(mh1 mh1Var, hj1 hj1Var, boolean z, boolean z2, zzgq zzgqVar, um1 um1Var) {
        if (!e()) {
            if (z2) {
                hj1Var.a(4);
                return -4;
            }
            if (this.q == null || (!z && this.q == zzgqVar)) {
                return -3;
            }
            mh1Var.f8140a = this.q;
            return -5;
        }
        if (!z && this.f8970h[this.f8973k] == zzgqVar) {
            if (hj1Var.f7091c == null) {
                return -3;
            }
            hj1Var.f7092d = this.f8968f[this.f8973k];
            hj1Var.a(this.f8967e[this.f8973k]);
            um1Var.f9774a = this.f8966d[this.f8973k];
            um1Var.f9775b = this.f8965c[this.f8973k];
            um1Var.f9777d = this.f8969g[this.f8973k];
            this.m = Math.max(this.m, hj1Var.f7092d);
            this.f8971i--;
            this.f8973k++;
            this.f8972j++;
            if (this.f8973k == this.f8963a) {
                this.f8973k = 0;
            }
            um1Var.f9776c = this.f8971i > 0 ? this.f8965c[this.f8973k] : um1Var.f9775b + um1Var.f9774a;
            return -4;
        }
        mh1Var.f8140a = this.f8970h[this.f8973k];
        return -5;
    }

    public final synchronized long a(long j2, boolean z) {
        if (e() && j2 >= this.f8968f[this.f8973k]) {
            if (j2 > this.n && !z) {
                return -1L;
            }
            int i2 = this.f8973k;
            int i3 = -1;
            int i4 = 0;
            while (i2 != this.f8974l && this.f8968f[i2] <= j2) {
                if ((this.f8967e[i2] & 1) != 0) {
                    i3 = i4;
                }
                i2 = (i2 + 1) % this.f8963a;
                i4++;
            }
            if (i3 == -1) {
                return -1L;
            }
            this.f8973k = (this.f8973k + i3) % this.f8963a;
            this.f8972j += i3;
            this.f8971i -= i3;
            return this.f8965c[this.f8973k];
        }
        return -1L;
    }

    public final synchronized boolean a(zzgq zzgqVar) {
        if (zzgqVar == null) {
            this.p = true;
            return false;
        }
        this.p = false;
        if (cp1.a(zzgqVar, this.q)) {
            return false;
        }
        this.q = zzgqVar;
        return true;
    }

    public final synchronized void a(long j2, int i2, long j3, int i3, ak1 ak1Var) {
        if (this.o) {
            if ((i2 & 1) == 0) {
                return;
            } else {
                this.o = false;
            }
        }
        no1.b(!this.p);
        a(j2);
        this.f8968f[this.f8974l] = j2;
        this.f8965c[this.f8974l] = j3;
        this.f8966d[this.f8974l] = i3;
        this.f8967e[this.f8974l] = i2;
        this.f8969g[this.f8974l] = ak1Var;
        this.f8970h[this.f8974l] = this.q;
        this.f8964b[this.f8974l] = 0;
        this.f8971i++;
        if (this.f8971i == this.f8963a) {
            int i4 = this.f8963a + 1000;
            int[] iArr = new int[i4];
            long[] jArr = new long[i4];
            long[] jArr2 = new long[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            ak1[] ak1VarArr = new ak1[i4];
            zzgq[] zzgqVarArr = new zzgq[i4];
            int i5 = this.f8963a - this.f8973k;
            System.arraycopy(this.f8965c, this.f8973k, jArr, 0, i5);
            System.arraycopy(this.f8968f, this.f8973k, jArr2, 0, i5);
            System.arraycopy(this.f8967e, this.f8973k, iArr2, 0, i5);
            System.arraycopy(this.f8966d, this.f8973k, iArr3, 0, i5);
            System.arraycopy(this.f8969g, this.f8973k, ak1VarArr, 0, i5);
            System.arraycopy(this.f8970h, this.f8973k, zzgqVarArr, 0, i5);
            System.arraycopy(this.f8964b, this.f8973k, iArr, 0, i5);
            int i6 = this.f8973k;
            System.arraycopy(this.f8965c, 0, jArr, i5, i6);
            System.arraycopy(this.f8968f, 0, jArr2, i5, i6);
            System.arraycopy(this.f8967e, 0, iArr2, i5, i6);
            System.arraycopy(this.f8966d, 0, iArr3, i5, i6);
            System.arraycopy(this.f8969g, 0, ak1VarArr, i5, i6);
            System.arraycopy(this.f8970h, 0, zzgqVarArr, i5, i6);
            System.arraycopy(this.f8964b, 0, iArr, i5, i6);
            this.f8965c = jArr;
            this.f8968f = jArr2;
            this.f8967e = iArr2;
            this.f8966d = iArr3;
            this.f8969g = ak1VarArr;
            this.f8970h = zzgqVarArr;
            this.f8964b = iArr;
            this.f8973k = 0;
            this.f8974l = this.f8963a;
            this.f8971i = this.f8963a;
            this.f8963a = i4;
            return;
        }
        this.f8974l++;
        if (this.f8974l == this.f8963a) {
            this.f8974l = 0;
        }
    }

    public final synchronized void a(long j2) {
        this.n = Math.max(this.n, j2);
    }
}
