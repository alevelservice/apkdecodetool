package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.s4;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class c4 implements e8 {

    /* renamed from: a, reason: collision with root package name */
    private final a4 f12316a;

    private c4(a4 a4Var) {
        t4.a(a4Var, "output");
        this.f12316a = a4Var;
        this.f12316a.f12289a = this;
    }

    public static c4 a(a4 a4Var) {
        c4 c4Var = a4Var.f12289a;
        return c4Var != null ? c4Var : new c4(a4Var);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2, long j2) {
        this.f12316a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void c(int i2, long j2) {
        this.f12316a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void d(int i2, int i3) {
        this.f12316a.c(i2, i3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void e(int i2, int i3) {
        this.f12316a.e(i2, i3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void f(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.i(list.get(i5).intValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.e(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void g(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.g(list.get(i5).intValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.b(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.c(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void h(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.j(list.get(i5).intValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.e(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void i(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.h(list.get(i5).longValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void j(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.g(list.get(i5).longValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.b(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.b(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void k(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.f(list.get(i5).longValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void l(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.h(list.get(i5).intValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.c(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.d(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void m(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.b(list.get(i5).doubleValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.a(i2, list.get(i3).doubleValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void n(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.b(list.get(i5).floatValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.a(i2, list.get(i3).floatValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void zzj(int i2, int i3) {
        this.f12316a.d(i2, i3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void d(int i2, long j2) {
        this.f12316a.b(i2, j2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final int a() {
        return s4.e.f12521k;
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2, int i3) {
        this.f12316a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void c(int i2, int i3) {
        this.f12316a.e(i2, i3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void d(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.e(list.get(i5).longValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void e(int i2, long j2) {
        this.f12316a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, float f2) {
        this.f12316a.a(i2, f2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void c(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.k(list.get(i5).intValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void e(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.i(list.get(i5).longValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, double d2) {
        this.f12316a.a(i2, d2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2, Object obj, r6 r6Var) {
        a4 a4Var = this.f12316a;
        a4Var.a(i2, 3);
        r6Var.a((r6) obj, (e8) a4Var.f12289a);
        a4Var.a(i2, 4);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, int i3) {
        this.f12316a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, long j2) {
        this.f12316a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, boolean z) {
        this.f12316a.a(i2, z);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, String str) {
        this.f12316a.a(i2, str);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2) {
        this.f12316a.a(i2, 3);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, j3 j3Var) {
        this.f12316a.a(i2, j3Var);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.f(list.get(i5).intValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, Object obj, r6 r6Var) {
        this.f12316a.a(i2, (d6) obj, r6Var);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2) {
        this.f12316a.a(i2, 4);
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, Object obj) {
        if (obj instanceof j3) {
            this.f12316a.b(i2, (j3) obj);
        } else {
            this.f12316a.a(i2, (d6) obj);
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f12316a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += a4.b(list.get(i5).booleanValue());
            }
            this.f12316a.b(i4);
            while (i3 < list.size()) {
                this.f12316a.a(list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.a(i2, list.get(i3).booleanValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2, List<String> list) {
        int i3 = 0;
        if (list instanceof k5) {
            k5 k5Var = (k5) list;
            while (i3 < list.size()) {
                Object j2 = k5Var.j(i3);
                if (j2 instanceof String) {
                    this.f12316a.a(i2, (String) j2);
                } else {
                    this.f12316a.a(i2, (j3) j2);
                }
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f12316a.a(i2, list.get(i3));
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, List<j3> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f12316a.a(i2, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void a(int i2, List<?> list, r6 r6Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            b(i2, list.get(i3), r6Var);
        }
    }

    @Override // com.google.android.gms.internal.vision.e8
    public final void b(int i2, List<?> list, r6 r6Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            a(i2, list.get(i3), r6Var);
        }
    }
}
