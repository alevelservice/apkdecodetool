package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ip1 {

    /* renamed from: a, reason: collision with root package name */
    public final List<byte[]> f7354a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7355b;

    private ip1(List<byte[]> list, int i2) {
        this.f7354a = list;
        this.f7355b = i2;
    }

    public static ip1 a(vo1 vo1Var) {
        try {
            vo1Var.d(21);
            int g2 = vo1Var.g() & 3;
            int g3 = vo1Var.g();
            int b2 = vo1Var.b();
            int i2 = 0;
            int i3 = 0;
            while (i2 < g3) {
                vo1Var.d(1);
                int h2 = vo1Var.h();
                int i4 = i3;
                for (int i5 = 0; i5 < h2; i5++) {
                    int h3 = vo1Var.h();
                    i4 += h3 + 4;
                    vo1Var.d(h3);
                }
                i2++;
                i3 = i4;
            }
            vo1Var.c(b2);
            byte[] bArr = new byte[i3];
            int i6 = 0;
            int i7 = 0;
            while (i6 < g3) {
                vo1Var.d(1);
                int h4 = vo1Var.h();
                int i8 = i7;
                for (int i9 = 0; i9 < h4; i9++) {
                    int h5 = vo1Var.h();
                    System.arraycopy(to1.f9623a, 0, bArr, i8, to1.f9623a.length);
                    int length = i8 + to1.f9623a.length;
                    System.arraycopy(vo1Var.f9967a, vo1Var.b(), bArr, length, h5);
                    i8 = length + h5;
                    vo1Var.d(h5);
                }
                i6++;
                i7 = i8;
            }
            return new ip1(i3 == 0 ? null : Collections.singletonList(bArr), g2 + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new nh1("Error parsing HEVC config", e2);
        }
    }
}
