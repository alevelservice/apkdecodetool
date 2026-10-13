package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class g5 extends p4<g5> implements Cloneable {

    /* renamed from: g, reason: collision with root package name */
    private String[] f11430g;

    /* renamed from: h, reason: collision with root package name */
    private String[] f11431h;

    /* renamed from: i, reason: collision with root package name */
    private int[] f11432i;

    /* renamed from: j, reason: collision with root package name */
    private long[] f11433j;

    /* renamed from: k, reason: collision with root package name */
    private long[] f11434k;

    public g5() {
        String[] strArr = w4.f11594c;
        this.f11430g = strArr;
        this.f11431h = strArr;
        this.f11432i = w4.f11592a;
        long[] jArr = w4.f11593b;
        this.f11433j = jArr;
        this.f11434k = jArr;
        this.f11527f = null;
        this.f11575e = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final g5 clone() {
        try {
            g5 g5Var = (g5) super.clone();
            String[] strArr = this.f11430g;
            if (strArr != null && strArr.length > 0) {
                g5Var.f11430g = (String[]) strArr.clone();
            }
            String[] strArr2 = this.f11431h;
            if (strArr2 != null && strArr2.length > 0) {
                g5Var.f11431h = (String[]) strArr2.clone();
            }
            int[] iArr = this.f11432i;
            if (iArr != null && iArr.length > 0) {
                g5Var.f11432i = (int[]) iArr.clone();
            }
            long[] jArr = this.f11433j;
            if (jArr != null && jArr.length > 0) {
                g5Var.f11433j = (long[]) jArr.clone();
            }
            long[] jArr2 = this.f11434k;
            if (jArr2 != null && jArr2.length > 0) {
                g5Var.f11434k = (long[]) jArr2.clone();
            }
            return g5Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final void a(n4 n4Var) {
        String[] strArr = this.f11430g;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.f11430g;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    n4Var.a(1, str);
                }
                i3++;
            }
        }
        String[] strArr3 = this.f11431h;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr4 = this.f11431h;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i4];
                if (str2 != null) {
                    n4Var.a(2, str2);
                }
                i4++;
            }
        }
        int[] iArr = this.f11432i;
        if (iArr != null && iArr.length > 0) {
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.f11432i;
                if (i5 >= iArr2.length) {
                    break;
                }
                n4Var.b(3, iArr2[i5]);
                i5++;
            }
        }
        long[] jArr = this.f11433j;
        if (jArr != null && jArr.length > 0) {
            int i6 = 0;
            while (true) {
                long[] jArr2 = this.f11433j;
                if (i6 >= jArr2.length) {
                    break;
                }
                n4Var.a(4, jArr2[i6]);
                i6++;
            }
        }
        long[] jArr3 = this.f11434k;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.f11434k;
                if (i2 >= jArr4.length) {
                    break;
                }
                n4Var.a(5, jArr4[i2]);
                i2++;
            }
        }
        super.a(n4Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final int b() {
        long[] jArr;
        int[] iArr;
        int b2 = super.b();
        String[] strArr = this.f11430g;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                String[] strArr2 = this.f11430g;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    i5++;
                    i4 += n4.a(str);
                }
                i3++;
            }
            b2 = b2 + i4 + (i5 * 1);
        }
        String[] strArr3 = this.f11431h;
        if (strArr3 != null && strArr3.length > 0) {
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                String[] strArr4 = this.f11431h;
                if (i6 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i6];
                if (str2 != null) {
                    i8++;
                    i7 += n4.a(str2);
                }
                i6++;
            }
            b2 = b2 + i7 + (i8 * 1);
        }
        int[] iArr2 = this.f11432i;
        if (iArr2 != null && iArr2.length > 0) {
            int i9 = 0;
            int i10 = 0;
            while (true) {
                iArr = this.f11432i;
                if (i9 >= iArr.length) {
                    break;
                }
                i10 += n4.d(iArr[i9]);
                i9++;
            }
            b2 = b2 + i10 + (iArr.length * 1);
        }
        long[] jArr2 = this.f11433j;
        if (jArr2 != null && jArr2.length > 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                jArr = this.f11433j;
                if (i11 >= jArr.length) {
                    break;
                }
                i12 += n4.c(jArr[i11]);
                i11++;
            }
            b2 = b2 + i12 + (jArr.length * 1);
        }
        long[] jArr3 = this.f11434k;
        if (jArr3 == null || jArr3.length <= 0) {
            return b2;
        }
        int i13 = 0;
        while (true) {
            long[] jArr4 = this.f11434k;
            if (i2 >= jArr4.length) {
                return b2 + i13 + (jArr4.length * 1);
            }
            i13 += n4.c(jArr4[i2]);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: c */
    public final /* synthetic */ u4 clone() {
        return (g5) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.p4
    /* renamed from: d */
    public final /* synthetic */ g5 clone() {
        return (g5) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g5)) {
            return false;
        }
        g5 g5Var = (g5) obj;
        if (!t4.a(this.f11430g, g5Var.f11430g) || !t4.a(this.f11431h, g5Var.f11431h) || !t4.a(this.f11432i, g5Var.f11432i) || !t4.a(this.f11433j, g5Var.f11433j) || !t4.a(this.f11434k, g5Var.f11434k)) {
            return false;
        }
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            return this.f11527f.equals(g5Var.f11527f);
        }
        r4 r4Var2 = g5Var.f11527f;
        return r4Var2 == null || r4Var2.a();
    }

    public final int hashCode() {
        int hashCode = (((((((((((g5.class.getName().hashCode() + 527) * 31) + t4.a(this.f11430g)) * 31) + t4.a(this.f11431h)) * 31) + t4.a(this.f11432i)) * 31) + t4.a(this.f11433j)) * 31) + t4.a(this.f11434k)) * 31;
        r4 r4Var = this.f11527f;
        return hashCode + ((r4Var == null || r4Var.a()) ? 0 : this.f11527f.hashCode());
    }
}
