package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class jn1 extends pn1 {

    /* renamed from: b, reason: collision with root package name */
    private final SparseArray<Map<bn1, ln1>> f7533b = new SparseArray<>();

    /* renamed from: c, reason: collision with root package name */
    private final SparseBooleanArray f7534c = new SparseBooleanArray();

    public final void a(int i2, boolean z) {
        if (this.f7534c.get(i2) == z) {
            return;
        }
        this.f7534c.put(i2, z);
        a();
    }

    protected abstract on1[] a(sh1[] sh1VarArr, bn1[] bn1VarArr, int[][][] iArr);

    @Override // com.google.android.gms.internal.ads.pn1
    public final rn1 a(sh1[] sh1VarArr, bn1 bn1Var) {
        int[] iArr;
        int[] iArr2 = new int[sh1VarArr.length + 1];
        cn1[][] cn1VarArr = new cn1[sh1VarArr.length + 1];
        int[][][] iArr3 = new int[sh1VarArr.length + 1][];
        for (int i2 = 0; i2 < cn1VarArr.length; i2++) {
            int i3 = bn1Var.f5808a;
            cn1VarArr[i2] = new cn1[i3];
            iArr3[i2] = new int[i3];
        }
        int[] iArr4 = new int[sh1VarArr.length];
        for (int i4 = 0; i4 < iArr4.length; i4++) {
            iArr4[i4] = sh1VarArr[i4].d();
        }
        for (int i5 = 0; i5 < bn1Var.f5808a; i5++) {
            cn1 a2 = bn1Var.a(i5);
            int length = sh1VarArr.length;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                if (i6 >= sh1VarArr.length) {
                    i6 = length;
                    break;
                }
                sh1 sh1Var = sh1VarArr[i6];
                int i8 = length;
                int i9 = i7;
                for (int i10 = 0; i10 < a2.f6073a; i10++) {
                    int a3 = sh1Var.a(a2.a(i10)) & 3;
                    if (a3 > i9) {
                        if (a3 == 3) {
                            break;
                        }
                        i8 = i6;
                        i9 = a3;
                    }
                }
                i6++;
                i7 = i9;
                length = i8;
            }
            if (i6 == sh1VarArr.length) {
                iArr = new int[a2.f6073a];
            } else {
                sh1 sh1Var2 = sh1VarArr[i6];
                int[] iArr5 = new int[a2.f6073a];
                for (int i11 = 0; i11 < a2.f6073a; i11++) {
                    iArr5[i11] = sh1Var2.a(a2.a(i11));
                }
                iArr = iArr5;
            }
            int i12 = iArr2[i6];
            cn1VarArr[i6][i12] = a2;
            iArr3[i6][i12] = iArr;
            iArr2[i6] = iArr2[i6] + 1;
        }
        bn1[] bn1VarArr = new bn1[sh1VarArr.length];
        int[] iArr6 = new int[sh1VarArr.length];
        for (int i13 = 0; i13 < sh1VarArr.length; i13++) {
            int i14 = iArr2[i13];
            bn1VarArr[i13] = new bn1((cn1[]) Arrays.copyOf(cn1VarArr[i13], i14));
            iArr3[i13] = (int[][]) Arrays.copyOf(iArr3[i13], i14);
            iArr6[i13] = sh1VarArr[i13].m();
        }
        bn1 bn1Var2 = new bn1((cn1[]) Arrays.copyOf(cn1VarArr[sh1VarArr.length], iArr2[sh1VarArr.length]));
        on1[] a4 = a(sh1VarArr, bn1VarArr, iArr3);
        int i15 = 0;
        while (true) {
            if (i15 < sh1VarArr.length) {
                if (this.f7534c.get(i15)) {
                    a4[i15] = null;
                } else {
                    bn1 bn1Var3 = bn1VarArr[i15];
                    Map<bn1, ln1> map = this.f7533b.get(i15);
                    if ((map != null ? map.get(bn1Var3) : null) != null) {
                        throw new NoSuchMethodError();
                    }
                }
                i15++;
            } else {
                mn1 mn1Var = new mn1(iArr6, bn1VarArr, iArr4, iArr3, bn1Var2);
                rh1[] rh1VarArr = new rh1[sh1VarArr.length];
                for (int i16 = 0; i16 < sh1VarArr.length; i16++) {
                    rh1VarArr[i16] = a4[i16] != null ? rh1.f9134b : null;
                }
                return new rn1(bn1Var, new qn1(a4), mn1Var, rh1VarArr);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pn1
    public final void a(Object obj) {
    }
}
