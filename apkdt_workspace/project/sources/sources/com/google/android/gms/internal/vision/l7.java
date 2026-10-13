package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class l7 {

    /* renamed from: f, reason: collision with root package name */
    private static final l7 f12421f = new l7(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    private int f12422a;

    /* renamed from: b, reason: collision with root package name */
    private int[] f12423b;

    /* renamed from: c, reason: collision with root package name */
    private Object[] f12424c;

    /* renamed from: d, reason: collision with root package name */
    private int f12425d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f12426e;

    private l7() {
        this(0, new int[8], new Object[8], true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l7 a(l7 l7Var, l7 l7Var2) {
        int i2 = l7Var.f12422a + l7Var2.f12422a;
        int[] copyOf = Arrays.copyOf(l7Var.f12423b, i2);
        System.arraycopy(l7Var2.f12423b, 0, copyOf, l7Var.f12422a, l7Var2.f12422a);
        Object[] copyOf2 = Arrays.copyOf(l7Var.f12424c, i2);
        System.arraycopy(l7Var2.f12424c, 0, copyOf2, l7Var.f12422a, l7Var2.f12422a);
        return new l7(i2, copyOf, copyOf2, true);
    }

    public static l7 d() {
        return f12421f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l7 e() {
        return new l7();
    }

    public final void b(e8 e8Var) {
        if (this.f12422a == 0) {
            return;
        }
        if (e8Var.a() == s4.e.f12521k) {
            for (int i2 = 0; i2 < this.f12422a; i2++) {
                a(this.f12423b[i2], this.f12424c[i2], e8Var);
            }
            return;
        }
        for (int i3 = this.f12422a - 1; i3 >= 0; i3--) {
            a(this.f12423b[i3], this.f12424c[i3], e8Var);
        }
    }

    public final int c() {
        int i2 = this.f12425d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f12422a; i4++) {
            i3 += a4.d(this.f12423b[i4] >>> 3, (j3) this.f12424c[i4]);
        }
        this.f12425d = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof l7)) {
            return false;
        }
        l7 l7Var = (l7) obj;
        int i2 = this.f12422a;
        if (i2 == l7Var.f12422a) {
            int[] iArr = this.f12423b;
            int[] iArr2 = l7Var.f12423b;
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
                Object[] objArr = this.f12424c;
                Object[] objArr2 = l7Var.f12424c;
                int i4 = this.f12422a;
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
        int i2 = this.f12422a;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f12423b;
        int i4 = 17;
        int i5 = 17;
        for (int i6 = 0; i6 < i2; i6++) {
            i5 = (i5 * 31) + iArr[i6];
        }
        int i7 = (i3 + i5) * 31;
        Object[] objArr = this.f12424c;
        int i8 = this.f12422a;
        for (int i9 = 0; i9 < i8; i9++) {
            i4 = (i4 * 31) + objArr[i9].hashCode();
        }
        return i7 + i4;
    }

    private l7(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f12425d = -1;
        this.f12422a = i2;
        this.f12423b = iArr;
        this.f12424c = objArr;
        this.f12426e = z;
    }

    public final void a() {
        this.f12426e = false;
    }

    public final int b() {
        int e2;
        int i2 = this.f12425d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f12422a; i4++) {
            int i5 = this.f12423b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                e2 = a4.e(i6, ((Long) this.f12424c[i4]).longValue());
            } else if (i7 == 1) {
                e2 = a4.g(i6, ((Long) this.f12424c[i4]).longValue());
            } else if (i7 == 2) {
                e2 = a4.c(i6, (j3) this.f12424c[i4]);
            } else if (i7 == 3) {
                e2 = (a4.e(i6) << 1) + ((l7) this.f12424c[i4]).b();
            } else if (i7 == 5) {
                e2 = a4.i(i6, ((Integer) this.f12424c[i4]).intValue());
            } else {
                throw new IllegalStateException(d5.zzgr());
            }
            i3 += e2;
        }
        this.f12425d = i3;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e8 e8Var) {
        if (e8Var.a() == s4.e.f12522l) {
            for (int i2 = this.f12422a - 1; i2 >= 0; i2--) {
                e8Var.a(this.f12423b[i2] >>> 3, this.f12424c[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.f12422a; i3++) {
            e8Var.a(this.f12423b[i3] >>> 3, this.f12424c[i3]);
        }
    }

    private static void a(int i2, Object obj, e8 e8Var) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            e8Var.b(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            e8Var.a(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            e8Var.a(i3, (j3) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                e8Var.c(i3, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(d5.zzgr());
        }
        if (e8Var.a() == s4.e.f12521k) {
            e8Var.b(i3);
            ((l7) obj).b(e8Var);
            e8Var.a(i3);
        } else {
            e8Var.a(i3);
            ((l7) obj).b(e8Var);
            e8Var.b(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.f12422a; i3++) {
            e6.a(sb, i2, String.valueOf(this.f12423b[i3] >>> 3), this.f12424c[i3]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, Object obj) {
        if (this.f12426e) {
            int i3 = this.f12422a;
            if (i3 == this.f12423b.length) {
                int i4 = this.f12422a + (i3 < 4 ? 8 : i3 >> 1);
                this.f12423b = Arrays.copyOf(this.f12423b, i4);
                this.f12424c = Arrays.copyOf(this.f12424c, i4);
            }
            int[] iArr = this.f12423b;
            int i5 = this.f12422a;
            iArr[i5] = i2;
            this.f12424c[i5] = obj;
            this.f12422a = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
