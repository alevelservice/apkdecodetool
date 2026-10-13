package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class yb1 {

    /* renamed from: f, reason: collision with root package name */
    private static final yb1 f10531f = new yb1(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    private int f10532a;

    /* renamed from: b, reason: collision with root package name */
    private int[] f10533b;

    /* renamed from: c, reason: collision with root package name */
    private Object[] f10534c;

    /* renamed from: d, reason: collision with root package name */
    private int f10535d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f10536e;

    private yb1() {
        this(0, new int[8], new Object[8], true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static yb1 a(yb1 yb1Var, yb1 yb1Var2) {
        int i2 = yb1Var.f10532a + yb1Var2.f10532a;
        int[] copyOf = Arrays.copyOf(yb1Var.f10533b, i2);
        System.arraycopy(yb1Var2.f10533b, 0, copyOf, yb1Var.f10532a, yb1Var2.f10532a);
        Object[] copyOf2 = Arrays.copyOf(yb1Var.f10534c, i2);
        System.arraycopy(yb1Var2.f10534c, 0, copyOf2, yb1Var.f10532a, yb1Var2.f10532a);
        return new yb1(i2, copyOf, copyOf2, true);
    }

    public static yb1 d() {
        return f10531f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static yb1 e() {
        return new yb1();
    }

    public final void b(tc1 tc1Var) {
        if (this.f10532a == 0) {
            return;
        }
        if (tc1Var.a() == e91.d.f6382k) {
            for (int i2 = 0; i2 < this.f10532a; i2++) {
                a(this.f10533b[i2], this.f10534c[i2], tc1Var);
            }
            return;
        }
        for (int i3 = this.f10532a - 1; i3 >= 0; i3--) {
            a(this.f10533b[i3], this.f10534c[i3], tc1Var);
        }
    }

    public final int c() {
        int i2 = this.f10535d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f10532a; i4++) {
            i3 += m81.d(this.f10533b[i4] >>> 3, (t71) this.f10534c[i4]);
        }
        this.f10535d = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof yb1)) {
            return false;
        }
        yb1 yb1Var = (yb1) obj;
        int i2 = this.f10532a;
        if (i2 == yb1Var.f10532a) {
            int[] iArr = this.f10533b;
            int[] iArr2 = yb1Var.f10533b;
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    z = true;
                    break;
                }
                if (iArr[i3] != iArr2[i3]) {
                    z = false;
                    break;
                }
                i3++;
            }
            if (z) {
                Object[] objArr = this.f10534c;
                Object[] objArr2 = yb1Var.f10534c;
                int i4 = this.f10532a;
                int i5 = 0;
                while (true) {
                    if (i5 >= i4) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i5].equals(objArr2[i5])) {
                        z2 = false;
                        break;
                    }
                    i5++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f10532a;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f10533b;
        int i4 = 17;
        int i5 = 17;
        for (int i6 = 0; i6 < i2; i6++) {
            i5 = (i5 * 31) + iArr[i6];
        }
        int i7 = (i3 + i5) * 31;
        Object[] objArr = this.f10534c;
        int i8 = this.f10532a;
        for (int i9 = 0; i9 < i8; i9++) {
            i4 = (i4 * 31) + objArr[i9].hashCode();
        }
        return i7 + i4;
    }

    private yb1(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f10535d = -1;
        this.f10532a = i2;
        this.f10533b = iArr;
        this.f10534c = objArr;
        this.f10536e = z;
    }

    public final void a() {
        this.f10536e = false;
    }

    public final int b() {
        int e2;
        int i2 = this.f10535d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f10532a; i4++) {
            int i5 = this.f10533b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                e2 = m81.e(i6, ((Long) this.f10534c[i4]).longValue());
            } else if (i7 == 1) {
                e2 = m81.g(i6, ((Long) this.f10534c[i4]).longValue());
            } else if (i7 == 2) {
                e2 = m81.c(i6, (t71) this.f10534c[i4]);
            } else if (i7 == 3) {
                e2 = (m81.e(i6) << 1) + ((yb1) this.f10534c[i4]).b();
            } else if (i7 == 5) {
                e2 = m81.i(i6, ((Integer) this.f10534c[i4]).intValue());
            } else {
                throw new IllegalStateException(o91.zzbac());
            }
            i3 += e2;
        }
        this.f10535d = i3;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(tc1 tc1Var) {
        if (tc1Var.a() == e91.d.f6383l) {
            for (int i2 = this.f10532a - 1; i2 >= 0; i2--) {
                tc1Var.a(this.f10533b[i2] >>> 3, this.f10534c[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.f10532a; i3++) {
            tc1Var.a(this.f10533b[i3] >>> 3, this.f10534c[i3]);
        }
    }

    private static void a(int i2, Object obj, tc1 tc1Var) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            tc1Var.e(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            tc1Var.b(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            tc1Var.a(i3, (t71) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                tc1Var.f(i3, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(o91.zzbac());
        }
        if (tc1Var.a() == e91.d.f6382k) {
            tc1Var.a(i3);
            ((yb1) obj).b(tc1Var);
            tc1Var.b(i3);
        } else {
            tc1Var.b(i3);
            ((yb1) obj).b(tc1Var);
            tc1Var.a(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.f10532a; i3++) {
            pa1.a(sb, i2, String.valueOf(this.f10533b[i3] >>> 3), this.f10534c[i3]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, Object obj) {
        if (this.f10536e) {
            int i3 = this.f10532a;
            if (i3 == this.f10533b.length) {
                int i4 = this.f10532a + (i3 < 4 ? 8 : i3 >> 1);
                this.f10533b = Arrays.copyOf(this.f10533b, i4);
                this.f10534c = Arrays.copyOf(this.f10534c, i4);
            }
            int[] iArr = this.f10533b;
            int i5 = this.f10532a;
            iArr[i5] = i2;
            this.f10534c[i5] = obj;
            this.f10532a = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
