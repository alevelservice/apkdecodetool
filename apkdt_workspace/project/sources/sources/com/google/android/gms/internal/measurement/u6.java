package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class u6 {

    /* renamed from: f, reason: collision with root package name */
    private static final u6 f12126f = new u6(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    private int f12127a;

    /* renamed from: b, reason: collision with root package name */
    private int[] f12128b;

    /* renamed from: c, reason: collision with root package name */
    private Object[] f12129c;

    /* renamed from: d, reason: collision with root package name */
    private int f12130d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f12131e;

    private u6() {
        this(0, new int[8], new Object[8], true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u6 a(u6 u6Var, u6 u6Var2) {
        int i2 = u6Var.f12127a + u6Var2.f12127a;
        int[] copyOf = Arrays.copyOf(u6Var.f12128b, i2);
        System.arraycopy(u6Var2.f12128b, 0, copyOf, u6Var.f12127a, u6Var2.f12127a);
        Object[] copyOf2 = Arrays.copyOf(u6Var.f12129c, i2);
        System.arraycopy(u6Var2.f12129c, 0, copyOf2, u6Var.f12127a, u6Var2.f12127a);
        return new u6(i2, copyOf, copyOf2, true);
    }

    public static u6 d() {
        return f12126f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u6 e() {
        return new u6();
    }

    public final void b(p7 p7Var) {
        if (this.f12127a == 0) {
            return;
        }
        if (p7Var.a() == b4.d.f11775k) {
            for (int i2 = 0; i2 < this.f12127a; i2++) {
                a(this.f12128b[i2], this.f12129c[i2], p7Var);
            }
            return;
        }
        for (int i3 = this.f12127a - 1; i3 >= 0; i3--) {
            a(this.f12128b[i3], this.f12129c[i3], p7Var);
        }
    }

    public final int c() {
        int i2 = this.f12130d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f12127a; i4++) {
            i3 += i3.d(this.f12128b[i4] >>> 3, (t2) this.f12129c[i4]);
        }
        this.f12130d = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof u6)) {
            return false;
        }
        u6 u6Var = (u6) obj;
        int i2 = this.f12127a;
        if (i2 == u6Var.f12127a) {
            int[] iArr = this.f12128b;
            int[] iArr2 = u6Var.f12128b;
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
                Object[] objArr = this.f12129c;
                Object[] objArr2 = u6Var.f12129c;
                int i4 = this.f12127a;
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
        int i2 = this.f12127a;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f12128b;
        int i4 = 17;
        int i5 = 17;
        for (int i6 = 0; i6 < i2; i6++) {
            i5 = (i5 * 31) + iArr[i6];
        }
        int i7 = (i3 + i5) * 31;
        Object[] objArr = this.f12129c;
        int i8 = this.f12127a;
        for (int i9 = 0; i9 < i8; i9++) {
            i4 = (i4 * 31) + objArr[i9].hashCode();
        }
        return i7 + i4;
    }

    private u6(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f12130d = -1;
        this.f12127a = i2;
        this.f12128b = iArr;
        this.f12129c = objArr;
        this.f12131e = z;
    }

    public final void a() {
        this.f12131e = false;
    }

    public final int b() {
        int e2;
        int i2 = this.f12130d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f12127a; i4++) {
            int i5 = this.f12128b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                e2 = i3.e(i6, ((Long) this.f12129c[i4]).longValue());
            } else if (i7 == 1) {
                e2 = i3.g(i6, ((Long) this.f12129c[i4]).longValue());
            } else if (i7 == 2) {
                e2 = i3.c(i6, (t2) this.f12129c[i4]);
            } else if (i7 == 3) {
                e2 = (i3.e(i6) << 1) + ((u6) this.f12129c[i4]).b();
            } else if (i7 == 5) {
                e2 = i3.i(i6, ((Integer) this.f12129c[i4]).intValue());
            } else {
                throw new IllegalStateException(l4.zzuy());
            }
            i3 += e2;
        }
        this.f12130d = i3;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(p7 p7Var) {
        if (p7Var.a() == b4.d.f11776l) {
            for (int i2 = this.f12127a - 1; i2 >= 0; i2--) {
                p7Var.a(this.f12128b[i2] >>> 3, this.f12129c[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.f12127a; i3++) {
            p7Var.a(this.f12128b[i3] >>> 3, this.f12129c[i3]);
        }
    }

    private static void a(int i2, Object obj, p7 p7Var) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            p7Var.b(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            p7Var.a(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            p7Var.a(i3, (t2) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                p7Var.c(i3, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(l4.zzuy());
        }
        if (p7Var.a() == b4.d.f11775k) {
            p7Var.a(i3);
            ((u6) obj).b(p7Var);
            p7Var.b(i3);
        } else {
            p7Var.b(i3);
            ((u6) obj).b(p7Var);
            p7Var.a(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.f12127a; i3++) {
            l5.a(sb, i2, String.valueOf(this.f12128b[i3] >>> 3), this.f12129c[i3]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, Object obj) {
        if (this.f12131e) {
            int i3 = this.f12127a;
            if (i3 == this.f12128b.length) {
                int i4 = this.f12127a + (i3 < 4 ? 8 : i3 >> 1);
                this.f12128b = Arrays.copyOf(this.f12128b, i4);
                this.f12129c = Arrays.copyOf(this.f12129c, i4);
            }
            int[] iArr = this.f12128b;
            int i5 = this.f12127a;
            iArr[i5] = i2;
            this.f12129c[i5] = obj;
            this.f12127a = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
