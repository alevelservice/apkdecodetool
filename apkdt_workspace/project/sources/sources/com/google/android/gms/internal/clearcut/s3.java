package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class s3 {

    /* renamed from: f, reason: collision with root package name */
    private static final s3 f11552f = new s3(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    private int f11553a;

    /* renamed from: b, reason: collision with root package name */
    private int[] f11554b;

    /* renamed from: c, reason: collision with root package name */
    private Object[] f11555c;

    /* renamed from: d, reason: collision with root package name */
    private int f11556d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f11557e;

    private s3() {
        this(0, new int[8], new Object[8], true);
    }

    private s3(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f11556d = -1;
        this.f11553a = i2;
        this.f11554b = iArr;
        this.f11555c = objArr;
        this.f11557e = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s3 a(s3 s3Var, s3 s3Var2) {
        int i2 = s3Var.f11553a + s3Var2.f11553a;
        int[] copyOf = Arrays.copyOf(s3Var.f11554b, i2);
        System.arraycopy(s3Var2.f11554b, 0, copyOf, s3Var.f11553a, s3Var2.f11553a);
        Object[] copyOf2 = Arrays.copyOf(s3Var.f11555c, i2);
        System.arraycopy(s3Var2.f11555c, 0, copyOf2, s3Var.f11553a, s3Var2.f11553a);
        return new s3(i2, copyOf, copyOf2, true);
    }

    private static void a(int i2, Object obj, m4 m4Var) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            m4Var.b(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            m4Var.a(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            m4Var.a(i3, (y) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new RuntimeException(j1.zzbn());
            }
            m4Var.c(i3, ((Integer) obj).intValue());
        } else if (m4Var.a() == d1.e.f11400k) {
            m4Var.b(i3);
            ((s3) obj).b(m4Var);
            m4Var.a(i3);
        } else {
            m4Var.a(i3);
            ((s3) obj).b(m4Var);
            m4Var.b(i3);
        }
    }

    public static s3 d() {
        return f11552f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s3 e() {
        return new s3();
    }

    public final int a() {
        int e2;
        int i2 = this.f11556d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f11553a; i4++) {
            int i5 = this.f11554b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                e2 = k0.e(i6, ((Long) this.f11555c[i4]).longValue());
            } else if (i7 == 1) {
                e2 = k0.g(i6, ((Long) this.f11555c[i4]).longValue());
            } else if (i7 == 2) {
                e2 = k0.c(i6, (y) this.f11555c[i4]);
            } else if (i7 == 3) {
                e2 = (k0.e(i6) << 1) + ((s3) this.f11555c[i4]).a();
            } else {
                if (i7 != 5) {
                    throw new IllegalStateException(j1.zzbn());
                }
                e2 = k0.i(i6, ((Integer) this.f11555c[i4]).intValue());
            }
            i3 += e2;
        }
        this.f11556d = i3;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, Object obj) {
        if (!this.f11557e) {
            throw new UnsupportedOperationException();
        }
        int i3 = this.f11553a;
        if (i3 == this.f11554b.length) {
            int i4 = this.f11553a + (i3 < 4 ? 8 : i3 >> 1);
            this.f11554b = Arrays.copyOf(this.f11554b, i4);
            this.f11555c = Arrays.copyOf(this.f11555c, i4);
        }
        int[] iArr = this.f11554b;
        int i5 = this.f11553a;
        iArr[i5] = i2;
        this.f11555c[i5] = obj;
        this.f11553a = i5 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(m4 m4Var) {
        if (m4Var.a() == d1.e.f11401l) {
            for (int i2 = this.f11553a - 1; i2 >= 0; i2--) {
                m4Var.a(this.f11554b[i2] >>> 3, this.f11555c[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.f11553a; i3++) {
            m4Var.a(this.f11554b[i3] >>> 3, this.f11555c[i3]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.f11553a; i3++) {
            l2.a(sb, i2, String.valueOf(this.f11554b[i3] >>> 3), this.f11555c[i3]);
        }
    }

    public final int b() {
        int i2 = this.f11556d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f11553a; i4++) {
            i3 += k0.d(this.f11554b[i4] >>> 3, (y) this.f11555c[i4]);
        }
        this.f11556d = i3;
        return i3;
    }

    public final void b(m4 m4Var) {
        if (this.f11553a == 0) {
            return;
        }
        if (m4Var.a() == d1.e.f11400k) {
            for (int i2 = 0; i2 < this.f11553a; i2++) {
                a(this.f11554b[i2], this.f11555c[i2], m4Var);
            }
            return;
        }
        for (int i3 = this.f11553a - 1; i3 >= 0; i3--) {
            a(this.f11554b[i3], this.f11555c[i3], m4Var);
        }
    }

    public final void c() {
        this.f11557e = false;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof s3)) {
            return false;
        }
        s3 s3Var = (s3) obj;
        int i2 = this.f11553a;
        if (i2 == s3Var.f11553a) {
            int[] iArr = this.f11554b;
            int[] iArr2 = s3Var.f11554b;
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
                Object[] objArr = this.f11555c;
                Object[] objArr2 = s3Var.f11555c;
                int i4 = this.f11553a;
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
        int i2 = this.f11553a;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f11554b;
        int i4 = 17;
        int i5 = 17;
        for (int i6 = 0; i6 < i2; i6++) {
            i5 = (i5 * 31) + iArr[i6];
        }
        int i7 = (i3 + i5) * 31;
        Object[] objArr = this.f11555c;
        int i8 = this.f11553a;
        for (int i9 = 0; i9 < i8; i9++) {
            i4 = (i4 * 31) + objArr[i9].hashCode();
        }
        return i7 + i4;
    }
}
