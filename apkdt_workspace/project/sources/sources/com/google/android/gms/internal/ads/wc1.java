package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wc1 implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    private int[] f10086e;

    /* renamed from: f, reason: collision with root package name */
    private zc1[] f10087f;

    /* renamed from: g, reason: collision with root package name */
    private int f10088g;

    static {
        new zc1();
    }

    wc1() {
        this(10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f10088g;
    }

    public final /* synthetic */ Object clone() {
        int i2 = this.f10088g;
        wc1 wc1Var = new wc1(i2);
        System.arraycopy(this.f10086e, 0, wc1Var.f10086e, 0, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            zc1[] zc1VarArr = this.f10087f;
            if (zc1VarArr[i3] != null) {
                wc1Var.f10087f[i3] = (zc1) zc1VarArr[i3].clone();
            }
        }
        wc1Var.f10088g = i2;
        return wc1Var;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wc1)) {
            return false;
        }
        wc1 wc1Var = (wc1) obj;
        int i2 = this.f10088g;
        if (i2 != wc1Var.f10088g) {
            return false;
        }
        int[] iArr = this.f10086e;
        int[] iArr2 = wc1Var.f10086e;
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
            zc1[] zc1VarArr = this.f10087f;
            zc1[] zc1VarArr2 = wc1Var.f10087f;
            int i4 = this.f10088g;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    z2 = true;
                    break;
                }
                if (!zc1VarArr[i5].equals(zc1VarArr2[i5])) {
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
        for (int i3 = 0; i3 < this.f10088g; i3++) {
            i2 = (((i2 * 31) + this.f10086e[i3]) * 31) + this.f10087f[i3].hashCode();
        }
        return i2;
    }

    private wc1(int i2) {
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
        this.f10086e = new int[i6];
        this.f10087f = new zc1[i6];
        this.f10088g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zc1 a(int i2) {
        return this.f10087f[i2];
    }
}
