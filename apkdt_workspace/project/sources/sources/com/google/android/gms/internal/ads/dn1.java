package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class dn1 implements on1 {

    /* renamed from: a, reason: collision with root package name */
    private final cn1 f6261a;

    /* renamed from: b, reason: collision with root package name */
    private final int f6262b;

    /* renamed from: c, reason: collision with root package name */
    private final int[] f6263c;

    /* renamed from: d, reason: collision with root package name */
    private final zzgq[] f6264d;

    /* renamed from: e, reason: collision with root package name */
    private int f6265e;

    public dn1(cn1 cn1Var, int... iArr) {
        int i2 = 0;
        no1.b(iArr.length > 0);
        no1.a(cn1Var);
        this.f6261a = cn1Var;
        this.f6262b = iArr.length;
        this.f6264d = new zzgq[this.f6262b];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.f6264d[i3] = cn1Var.a(iArr[i3]);
        }
        Arrays.sort(this.f6264d, new fn1());
        this.f6263c = new int[this.f6262b];
        while (true) {
            int i4 = this.f6262b;
            if (i2 < i4) {
                this.f6263c[i2] = cn1Var.a(this.f6264d[i2]);
                i2++;
            } else {
                long[] jArr = new long[i4];
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.on1
    public final cn1 a() {
        return this.f6261a;
    }

    @Override // com.google.android.gms.internal.ads.on1
    public final int b(int i2) {
        return this.f6263c[0];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            dn1 dn1Var = (dn1) obj;
            if (this.f6261a == dn1Var.f6261a && Arrays.equals(this.f6263c, dn1Var.f6263c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.f6265e == 0) {
            this.f6265e = (System.identityHashCode(this.f6261a) * 31) + Arrays.hashCode(this.f6263c);
        }
        return this.f6265e;
    }

    @Override // com.google.android.gms.internal.ads.on1
    public final int length() {
        return this.f6263c.length;
    }

    @Override // com.google.android.gms.internal.ads.on1
    public final zzgq a(int i2) {
        return this.f6264d[i2];
    }
}
