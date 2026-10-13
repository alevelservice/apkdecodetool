package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class r4 implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    private int[] f11547e;

    /* renamed from: f, reason: collision with root package name */
    private s4[] f11548f;

    /* renamed from: g, reason: collision with root package name */
    private int f11549g;

    static {
        new s4();
    }

    r4() {
        this(10);
    }

    private r4(int i2) {
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
        int i6 = i3 / 4;
        this.f11547e = new int[i6];
        this.f11548f = new s4[i6];
        this.f11549g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final s4 a(int i2) {
        return this.f11548f[i2];
    }

    public final boolean a() {
        return this.f11549g == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.f11549g;
    }

    public final /* synthetic */ Object clone() {
        int i2 = this.f11549g;
        r4 r4Var = new r4(i2);
        System.arraycopy(this.f11547e, 0, r4Var.f11547e, 0, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            s4[] s4VarArr = this.f11548f;
            if (s4VarArr[i3] != null) {
                r4Var.f11548f[i3] = (s4) s4VarArr[i3].clone();
            }
        }
        r4Var.f11549g = i2;
        return r4Var;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r4)) {
            return false;
        }
        r4 r4Var = (r4) obj;
        int i2 = this.f11549g;
        if (i2 != r4Var.f11549g) {
            return false;
        }
        int[] iArr = this.f11547e;
        int[] iArr2 = r4Var.f11547e;
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
            s4[] s4VarArr = this.f11548f;
            s4[] s4VarArr2 = r4Var.f11548f;
            int i4 = this.f11549g;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    z2 = true;
                    break;
                }
                if (!s4VarArr[i5].equals(s4VarArr2[i5])) {
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
        for (int i3 = 0; i3 < this.f11549g; i3++) {
            i2 = (((i2 * 31) + this.f11547e[i3]) * 31) + this.f11548f[i3].hashCode();
        }
        return i2;
    }
}
