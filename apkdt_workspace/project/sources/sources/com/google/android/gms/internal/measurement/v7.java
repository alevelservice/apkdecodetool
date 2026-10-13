package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class v7 implements Cloneable {

    /* renamed from: h, reason: collision with root package name */
    private static final u7 f12154h = new u7();

    /* renamed from: e, reason: collision with root package name */
    private int[] f12155e;

    /* renamed from: f, reason: collision with root package name */
    private u7[] f12156f;

    /* renamed from: g, reason: collision with root package name */
    private int f12157g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v7() {
        this(10);
    }

    private static int c(int i2) {
        int i3 = i2 << 2;
        int i4 = 4;
        while (true) {
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (i3 <= i5) {
                i3 = i5;
                break;
            }
            i4++;
        }
        return i3 / 4;
    }

    private final int d(int i2) {
        int i3 = this.f12157g - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = this.f12155e[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final u7 a(int i2) {
        int d2 = d(i2);
        if (d2 < 0) {
            return null;
        }
        u7[] u7VarArr = this.f12156f;
        if (u7VarArr[d2] == f12154h) {
            return null;
        }
        return u7VarArr[d2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.f12157g;
    }

    public final /* synthetic */ Object clone() {
        int i2 = this.f12157g;
        v7 v7Var = new v7(i2);
        System.arraycopy(this.f12155e, 0, v7Var.f12155e, 0, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            u7[] u7VarArr = this.f12156f;
            if (u7VarArr[i3] != null) {
                v7Var.f12156f[i3] = (u7) u7VarArr[i3].clone();
            }
        }
        v7Var.f12157g = i2;
        return v7Var;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v7)) {
            return false;
        }
        v7 v7Var = (v7) obj;
        int i2 = this.f12157g;
        if (i2 != v7Var.f12157g) {
            return false;
        }
        int[] iArr = this.f12155e;
        int[] iArr2 = v7Var.f12155e;
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
            u7[] u7VarArr = this.f12156f;
            u7[] u7VarArr2 = v7Var.f12156f;
            int i4 = this.f12157g;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    z2 = true;
                    break;
                }
                if (!u7VarArr[i5].equals(u7VarArr2[i5])) {
                    z2 = false;
                    break;
                }
                i5++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = 17;
        for (int i3 = 0; i3 < this.f12157g; i3++) {
            i2 = (((i2 * 31) + this.f12155e[i3]) * 31) + this.f12156f[i3].hashCode();
        }
        return i2;
    }

    private v7(int i2) {
        int c2 = c(i2);
        this.f12155e = new int[c2];
        this.f12156f = new u7[c2];
        this.f12157g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final u7 b(int i2) {
        return this.f12156f[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2, u7 u7Var) {
        int d2 = d(i2);
        if (d2 >= 0) {
            this.f12156f[d2] = u7Var;
            return;
        }
        int i3 = d2 ^ (-1);
        if (i3 < this.f12157g) {
            u7[] u7VarArr = this.f12156f;
            if (u7VarArr[i3] == f12154h) {
                this.f12155e[i3] = i2;
                u7VarArr[i3] = u7Var;
                return;
            }
        }
        int i4 = this.f12157g;
        if (i4 >= this.f12155e.length) {
            int c2 = c(i4 + 1);
            int[] iArr = new int[c2];
            u7[] u7VarArr2 = new u7[c2];
            int[] iArr2 = this.f12155e;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            u7[] u7VarArr3 = this.f12156f;
            System.arraycopy(u7VarArr3, 0, u7VarArr2, 0, u7VarArr3.length);
            this.f12155e = iArr;
            this.f12156f = u7VarArr2;
        }
        int i5 = this.f12157g;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f12155e;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            u7[] u7VarArr4 = this.f12156f;
            System.arraycopy(u7VarArr4, i3, u7VarArr4, i6, this.f12157g - i3);
        }
        this.f12155e[i3] = i2;
        this.f12156f[i3] = u7Var;
        this.f12157g++;
    }

    public final boolean a() {
        return this.f12157g == 0;
    }
}
