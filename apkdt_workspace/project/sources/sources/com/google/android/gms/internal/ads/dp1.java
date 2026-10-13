package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dp1 {

    /* renamed from: a, reason: collision with root package name */
    public final List<byte[]> f6287a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6288b;

    /* renamed from: c, reason: collision with root package name */
    public final float f6289c;

    private dp1(List<byte[]> list, int i2, int i3, int i4, float f2) {
        this.f6287a = list;
        this.f6288b = i2;
        this.f6289c = f2;
    }

    public static dp1 a(vo1 vo1Var) {
        int i2;
        int i3;
        float f2;
        try {
            vo1Var.d(4);
            int g2 = (vo1Var.g() & 3) + 1;
            if (g2 != 3) {
                ArrayList arrayList = new ArrayList();
                int g3 = vo1Var.g() & 31;
                for (int i4 = 0; i4 < g3; i4++) {
                    arrayList.add(b(vo1Var));
                }
                int g4 = vo1Var.g();
                for (int i5 = 0; i5 < g4; i5++) {
                    arrayList.add(b(vo1Var));
                }
                if (g3 > 0) {
                    so1 a2 = to1.a((byte[]) arrayList.get(0), g2, ((byte[]) arrayList.get(0)).length);
                    int i6 = a2.f9410a;
                    int i7 = a2.f9411b;
                    f2 = a2.f9412c;
                    i2 = i6;
                    i3 = i7;
                } else {
                    i2 = -1;
                    i3 = -1;
                    f2 = 1.0f;
                }
                return new dp1(arrayList, g2, i2, i3, f2);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new nh1("Error parsing AVC config", e2);
        }
    }

    private static byte[] b(vo1 vo1Var) {
        int h2 = vo1Var.h();
        int b2 = vo1Var.b();
        vo1Var.d(h2);
        return mo1.a(vo1Var.f9967a, b2, h2);
    }
}
