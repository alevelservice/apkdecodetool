package com.google.android.gms.internal.clearcut;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class j5 extends p4<j5> implements Cloneable {

    /* renamed from: g, reason: collision with root package name */
    public long f11448g = 0;

    /* renamed from: h, reason: collision with root package name */
    public long f11449h = 0;

    /* renamed from: i, reason: collision with root package name */
    private String f11450i = "";

    /* renamed from: j, reason: collision with root package name */
    public int f11451j = 0;

    /* renamed from: k, reason: collision with root package name */
    private String f11452k = "";

    /* renamed from: l, reason: collision with root package name */
    private k5[] f11453l = k5.e();
    private byte[] m;
    private x4 n;
    public byte[] o;
    private String p;
    private String q;
    private g5 r;
    private String s;
    public long t;
    private h5 u;
    public byte[] v;
    private String w;
    private int[] x;
    private y4 y;
    public boolean z;

    public j5() {
        byte[] bArr = w4.f11596e;
        this.m = bArr;
        this.n = null;
        this.o = bArr;
        this.p = "";
        this.q = "";
        this.r = null;
        this.s = "";
        this.t = 180000L;
        this.u = null;
        this.v = bArr;
        this.w = "";
        this.x = w4.f11592a;
        this.y = null;
        this.z = false;
        this.f11527f = null;
        this.f11575e = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final j5 clone() {
        try {
            j5 j5Var = (j5) super.clone();
            k5[] k5VarArr = this.f11453l;
            if (k5VarArr != null && k5VarArr.length > 0) {
                j5Var.f11453l = new k5[k5VarArr.length];
                int i2 = 0;
                while (true) {
                    k5[] k5VarArr2 = this.f11453l;
                    if (i2 >= k5VarArr2.length) {
                        break;
                    }
                    if (k5VarArr2[i2] != null) {
                        j5Var.f11453l[i2] = (k5) k5VarArr2[i2].clone();
                    }
                    i2++;
                }
            }
            x4 x4Var = this.n;
            if (x4Var != null) {
                j5Var.n = x4Var;
            }
            g5 g5Var = this.r;
            if (g5Var != null) {
                j5Var.r = (g5) g5Var.clone();
            }
            h5 h5Var = this.u;
            if (h5Var != null) {
                j5Var.u = (h5) h5Var.clone();
            }
            int[] iArr = this.x;
            if (iArr != null && iArr.length > 0) {
                j5Var.x = (int[]) iArr.clone();
            }
            y4 y4Var = this.y;
            if (y4Var != null) {
                j5Var.y = y4Var;
            }
            return j5Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final void a(n4 n4Var) {
        long j2 = this.f11448g;
        if (j2 != 0) {
            n4Var.a(1, j2);
        }
        String str = this.f11450i;
        if (str != null && !str.equals("")) {
            n4Var.a(2, this.f11450i);
        }
        k5[] k5VarArr = this.f11453l;
        int i2 = 0;
        if (k5VarArr != null && k5VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                k5[] k5VarArr2 = this.f11453l;
                if (i3 >= k5VarArr2.length) {
                    break;
                }
                k5 k5Var = k5VarArr2[i3];
                if (k5Var != null) {
                    n4Var.a(3, k5Var);
                }
                i3++;
            }
        }
        if (!Arrays.equals(this.m, w4.f11596e)) {
            n4Var.a(4, this.m);
        }
        if (!Arrays.equals(this.o, w4.f11596e)) {
            n4Var.a(6, this.o);
        }
        g5 g5Var = this.r;
        if (g5Var != null) {
            n4Var.a(7, g5Var);
        }
        String str2 = this.p;
        if (str2 != null && !str2.equals("")) {
            n4Var.a(8, this.p);
        }
        x4 x4Var = this.n;
        if (x4Var != null) {
            n4Var.a(9, x4Var);
        }
        int i4 = this.f11451j;
        if (i4 != 0) {
            n4Var.b(11, i4);
        }
        String str3 = this.q;
        if (str3 != null && !str3.equals("")) {
            n4Var.a(13, this.q);
        }
        String str4 = this.s;
        if (str4 != null && !str4.equals("")) {
            n4Var.a(14, this.s);
        }
        long j3 = this.t;
        if (j3 != 180000) {
            n4Var.a(15, 0);
            n4Var.a(n4.b(j3));
        }
        h5 h5Var = this.u;
        if (h5Var != null) {
            n4Var.a(16, h5Var);
        }
        long j4 = this.f11449h;
        if (j4 != 0) {
            n4Var.a(17, j4);
        }
        if (!Arrays.equals(this.v, w4.f11596e)) {
            n4Var.a(18, this.v);
        }
        int[] iArr = this.x;
        if (iArr != null && iArr.length > 0) {
            while (true) {
                int[] iArr2 = this.x;
                if (i2 >= iArr2.length) {
                    break;
                }
                n4Var.b(20, iArr2[i2]);
                i2++;
            }
        }
        y4 y4Var = this.y;
        if (y4Var != null) {
            n4Var.a(23, y4Var);
        }
        String str5 = this.w;
        if (str5 != null && !str5.equals("")) {
            n4Var.a(24, this.w);
        }
        boolean z = this.z;
        if (z) {
            n4Var.a(25, z);
        }
        String str6 = this.f11452k;
        if (str6 != null && !str6.equals("")) {
            n4Var.a(26, this.f11452k);
        }
        super.a(n4Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final int b() {
        int[] iArr;
        int b2 = super.b();
        long j2 = this.f11448g;
        if (j2 != 0) {
            b2 += n4.b(1, j2);
        }
        String str = this.f11450i;
        if (str != null && !str.equals("")) {
            b2 += n4.b(2, this.f11450i);
        }
        k5[] k5VarArr = this.f11453l;
        int i2 = 0;
        if (k5VarArr != null && k5VarArr.length > 0) {
            int i3 = b2;
            int i4 = 0;
            while (true) {
                k5[] k5VarArr2 = this.f11453l;
                if (i4 >= k5VarArr2.length) {
                    break;
                }
                k5 k5Var = k5VarArr2[i4];
                if (k5Var != null) {
                    i3 += n4.b(3, k5Var);
                }
                i4++;
            }
            b2 = i3;
        }
        if (!Arrays.equals(this.m, w4.f11596e)) {
            b2 += n4.b(4, this.m);
        }
        if (!Arrays.equals(this.o, w4.f11596e)) {
            b2 += n4.b(6, this.o);
        }
        g5 g5Var = this.r;
        if (g5Var != null) {
            b2 += n4.b(7, g5Var);
        }
        String str2 = this.p;
        if (str2 != null && !str2.equals("")) {
            b2 += n4.b(8, this.p);
        }
        x4 x4Var = this.n;
        if (x4Var != null) {
            b2 += k0.c(9, x4Var);
        }
        int i5 = this.f11451j;
        if (i5 != 0) {
            b2 += n4.c(11) + n4.d(i5);
        }
        String str3 = this.q;
        if (str3 != null && !str3.equals("")) {
            b2 += n4.b(13, this.q);
        }
        String str4 = this.s;
        if (str4 != null && !str4.equals("")) {
            b2 += n4.b(14, this.s);
        }
        long j3 = this.t;
        if (j3 != 180000) {
            b2 += n4.c(15) + n4.c(n4.b(j3));
        }
        h5 h5Var = this.u;
        if (h5Var != null) {
            b2 += n4.b(16, h5Var);
        }
        long j4 = this.f11449h;
        if (j4 != 0) {
            b2 += n4.b(17, j4);
        }
        if (!Arrays.equals(this.v, w4.f11596e)) {
            b2 += n4.b(18, this.v);
        }
        int[] iArr2 = this.x;
        if (iArr2 != null && iArr2.length > 0) {
            int i6 = 0;
            while (true) {
                iArr = this.x;
                if (i2 >= iArr.length) {
                    break;
                }
                i6 += n4.d(iArr[i2]);
                i2++;
            }
            b2 = b2 + i6 + (iArr.length * 2);
        }
        y4 y4Var = this.y;
        if (y4Var != null) {
            b2 += k0.c(23, y4Var);
        }
        String str5 = this.w;
        if (str5 != null && !str5.equals("")) {
            b2 += n4.b(24, this.w);
        }
        if (this.z) {
            b2 += n4.c(25) + 1;
        }
        String str6 = this.f11452k;
        return (str6 == null || str6.equals("")) ? b2 : b2 + n4.b(26, this.f11452k);
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: c */
    public final /* synthetic */ u4 clone() {
        return (j5) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.p4
    /* renamed from: d */
    public final /* synthetic */ j5 clone() {
        return (j5) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j5)) {
            return false;
        }
        j5 j5Var = (j5) obj;
        if (this.f11448g != j5Var.f11448g || this.f11449h != j5Var.f11449h) {
            return false;
        }
        String str = this.f11450i;
        if (str == null) {
            if (j5Var.f11450i != null) {
                return false;
            }
        } else if (!str.equals(j5Var.f11450i)) {
            return false;
        }
        if (this.f11451j != j5Var.f11451j) {
            return false;
        }
        String str2 = this.f11452k;
        if (str2 == null) {
            if (j5Var.f11452k != null) {
                return false;
            }
        } else if (!str2.equals(j5Var.f11452k)) {
            return false;
        }
        if (!t4.a(this.f11453l, j5Var.f11453l) || !Arrays.equals(this.m, j5Var.m)) {
            return false;
        }
        x4 x4Var = this.n;
        if (x4Var == null) {
            if (j5Var.n != null) {
                return false;
            }
        } else if (!x4Var.equals(j5Var.n)) {
            return false;
        }
        if (!Arrays.equals(this.o, j5Var.o)) {
            return false;
        }
        String str3 = this.p;
        if (str3 == null) {
            if (j5Var.p != null) {
                return false;
            }
        } else if (!str3.equals(j5Var.p)) {
            return false;
        }
        String str4 = this.q;
        if (str4 == null) {
            if (j5Var.q != null) {
                return false;
            }
        } else if (!str4.equals(j5Var.q)) {
            return false;
        }
        g5 g5Var = this.r;
        if (g5Var == null) {
            if (j5Var.r != null) {
                return false;
            }
        } else if (!g5Var.equals(j5Var.r)) {
            return false;
        }
        String str5 = this.s;
        if (str5 == null) {
            if (j5Var.s != null) {
                return false;
            }
        } else if (!str5.equals(j5Var.s)) {
            return false;
        }
        if (this.t != j5Var.t) {
            return false;
        }
        h5 h5Var = this.u;
        if (h5Var == null) {
            if (j5Var.u != null) {
                return false;
            }
        } else if (!h5Var.equals(j5Var.u)) {
            return false;
        }
        if (!Arrays.equals(this.v, j5Var.v)) {
            return false;
        }
        String str6 = this.w;
        if (str6 == null) {
            if (j5Var.w != null) {
                return false;
            }
        } else if (!str6.equals(j5Var.w)) {
            return false;
        }
        if (!t4.a(this.x, j5Var.x)) {
            return false;
        }
        y4 y4Var = this.y;
        if (y4Var == null) {
            if (j5Var.y != null) {
                return false;
            }
        } else if (!y4Var.equals(j5Var.y)) {
            return false;
        }
        if (this.z != j5Var.z) {
            return false;
        }
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            return this.f11527f.equals(j5Var.f11527f);
        }
        r4 r4Var2 = j5Var.f11527f;
        return r4Var2 == null || r4Var2.a();
    }

    public final int hashCode() {
        int hashCode = (j5.class.getName().hashCode() + 527) * 31;
        long j2 = this.f11448g;
        int i2 = (hashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f11449h;
        int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31 * 31;
        String str = this.f11450i;
        int i4 = 0;
        int hashCode2 = (((i3 + (str == null ? 0 : str.hashCode())) * 31) + this.f11451j) * 31;
        String str2 = this.f11452k;
        int hashCode3 = ((((((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31 * 31) + 1237) * 31) + t4.a(this.f11453l)) * 31) + Arrays.hashCode(this.m);
        x4 x4Var = this.n;
        int hashCode4 = ((((hashCode3 * 31) + (x4Var == null ? 0 : x4Var.hashCode())) * 31) + Arrays.hashCode(this.o)) * 31;
        String str3 = this.p;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.q;
        int hashCode6 = hashCode5 + (str4 == null ? 0 : str4.hashCode());
        g5 g5Var = this.r;
        int hashCode7 = ((hashCode6 * 31) + (g5Var == null ? 0 : g5Var.hashCode())) * 31;
        String str5 = this.s;
        int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        long j4 = this.t;
        h5 h5Var = this.u;
        int hashCode9 = (((((hashCode8 + ((int) (j4 ^ (j4 >>> 32)))) * 31) + (h5Var == null ? 0 : h5Var.hashCode())) * 31) + Arrays.hashCode(this.v)) * 31;
        String str6 = this.w;
        int hashCode10 = (((hashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31 * 31) + t4.a(this.x)) * 31;
        y4 y4Var = this.y;
        int hashCode11 = ((((hashCode10 * 31) + (y4Var == null ? 0 : y4Var.hashCode())) * 31) + (this.z ? 1231 : 1237)) * 31;
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            i4 = this.f11527f.hashCode();
        }
        return hashCode11 + i4;
    }
}
