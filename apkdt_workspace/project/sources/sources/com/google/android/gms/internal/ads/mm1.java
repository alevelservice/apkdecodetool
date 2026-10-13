package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.IdentityHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class mm1 implements im1, lm1 {

    /* renamed from: e, reason: collision with root package name */
    public final im1[] f8188e;

    /* renamed from: f, reason: collision with root package name */
    private final IdentityHashMap<ym1, Integer> f8189f = new IdentityHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private lm1 f8190g;

    /* renamed from: h, reason: collision with root package name */
    private int f8191h;

    /* renamed from: i, reason: collision with root package name */
    private bn1 f8192i;

    /* renamed from: j, reason: collision with root package name */
    private im1[] f8193j;

    /* renamed from: k, reason: collision with root package name */
    private xm1 f8194k;

    public mm1(im1... im1VarArr) {
        this.f8188e = im1VarArr;
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final bn1 X() {
        return this.f8192i;
    }

    @Override // com.google.android.gms.internal.ads.im1, com.google.android.gms.internal.ads.xm1
    public final long Y() {
        return this.f8194k.Y();
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long Z() {
        long Z = this.f8188e[0].Z();
        int i2 = 1;
        while (true) {
            im1[] im1VarArr = this.f8188e;
            if (i2 >= im1VarArr.length) {
                if (Z != -9223372036854775807L) {
                    for (im1 im1Var : this.f8193j) {
                        if (im1Var != this.f8188e[0] && im1Var.b(Z) != Z) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return Z;
            }
            if (im1VarArr[i2].Z() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final void a(lm1 lm1Var, long j2) {
        this.f8190g = lm1Var;
        im1[] im1VarArr = this.f8188e;
        this.f8191h = im1VarArr.length;
        for (im1 im1Var : im1VarArr) {
            im1Var.a(this, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long a0() {
        long j2 = Long.MAX_VALUE;
        for (im1 im1Var : this.f8193j) {
            long a0 = im1Var.a0();
            if (a0 != Long.MIN_VALUE) {
                j2 = Math.min(j2, a0);
            }
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long b(long j2) {
        long b2 = this.f8193j[0].b(j2);
        int i2 = 1;
        while (true) {
            im1[] im1VarArr = this.f8193j;
            if (i2 >= im1VarArr.length) {
                return b2;
            }
            if (im1VarArr[i2].b(b2) != b2) {
                throw new IllegalStateException("Children seeked to different positions");
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final void b0() {
        for (im1 im1Var : this.f8188e) {
            im1Var.b0();
        }
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final void c(long j2) {
        for (im1 im1Var : this.f8193j) {
            im1Var.c(j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.im1
    public final long a(on1[] on1VarArr, boolean[] zArr, ym1[] ym1VarArr, boolean[] zArr2, long j2) {
        int[] iArr = new int[on1VarArr.length];
        int[] iArr2 = new int[on1VarArr.length];
        for (int i2 = 0; i2 < on1VarArr.length; i2++) {
            iArr[i2] = ym1VarArr[i2] == null ? -1 : this.f8189f.get(ym1VarArr[i2]).intValue();
            iArr2[i2] = -1;
            if (on1VarArr[i2] != null) {
                cn1 a2 = on1VarArr[i2].a();
                int i3 = 0;
                while (true) {
                    im1[] im1VarArr = this.f8188e;
                    if (i3 >= im1VarArr.length) {
                        break;
                    }
                    if (im1VarArr[i3].X().a(a2) != -1) {
                        iArr2[i2] = i3;
                        break;
                    }
                    i3++;
                }
            }
        }
        this.f8189f.clear();
        ym1[] ym1VarArr2 = new ym1[on1VarArr.length];
        ym1[] ym1VarArr3 = new ym1[on1VarArr.length];
        on1[] on1VarArr2 = new on1[on1VarArr.length];
        ArrayList arrayList = new ArrayList(this.f8188e.length);
        long j3 = j2;
        int i4 = 0;
        while (i4 < this.f8188e.length) {
            for (int i5 = 0; i5 < on1VarArr.length; i5++) {
                on1 on1Var = null;
                ym1VarArr3[i5] = iArr[i5] == i4 ? ym1VarArr[i5] : null;
                if (iArr2[i5] == i4) {
                    on1Var = on1VarArr[i5];
                }
                on1VarArr2[i5] = on1Var;
            }
            on1[] on1VarArr3 = on1VarArr2;
            ArrayList arrayList2 = arrayList;
            on1[] on1VarArr4 = on1VarArr2;
            int i6 = i4;
            long a3 = this.f8188e[i4].a(on1VarArr3, zArr, ym1VarArr3, zArr2, j3);
            if (i6 == 0) {
                j3 = a3;
            } else if (a3 != j3) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i7 = 0; i7 < on1VarArr.length; i7++) {
                if (iArr2[i7] == i6) {
                    no1.b(ym1VarArr3[i7] != null);
                    ym1VarArr2[i7] = ym1VarArr3[i7];
                    this.f8189f.put(ym1VarArr3[i7], Integer.valueOf(i6));
                    z = true;
                } else if (iArr[i7] == i6) {
                    no1.b(ym1VarArr3[i7] == null);
                }
            }
            if (z) {
                arrayList2.add(this.f8188e[i6]);
            }
            i4 = i6 + 1;
            arrayList = arrayList2;
            on1VarArr2 = on1VarArr4;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(ym1VarArr2, 0, ym1VarArr, 0, ym1VarArr2.length);
        this.f8193j = new im1[arrayList3.size()];
        arrayList3.toArray(this.f8193j);
        this.f8194k = new zl1(this.f8193j);
        return j3;
    }

    @Override // com.google.android.gms.internal.ads.im1, com.google.android.gms.internal.ads.xm1
    public final boolean a(long j2) {
        return this.f8194k.a(j2);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.lm1
    public final void a(im1 im1Var) {
        int i2 = this.f8191h - 1;
        this.f8191h = i2;
        if (i2 > 0) {
            return;
        }
        int i3 = 0;
        for (im1 im1Var2 : this.f8188e) {
            i3 += im1Var2.X().f5808a;
        }
        cn1[] cn1VarArr = new cn1[i3];
        im1[] im1VarArr = this.f8188e;
        int length = im1VarArr.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            bn1 X = im1VarArr[i4].X();
            int i6 = X.f5808a;
            int i7 = i5;
            int i8 = 0;
            while (i8 < i6) {
                cn1VarArr[i7] = X.a(i8);
                i8++;
                i7++;
            }
            i4++;
            i5 = i7;
        }
        this.f8192i = new bn1(cn1VarArr);
        this.f8190g.a((im1) this);
    }

    @Override // com.google.android.gms.internal.ads.an1
    public final /* synthetic */ void a(im1 im1Var) {
        if (this.f8192i != null) {
            this.f8190g.a((lm1) this);
        }
    }
}
