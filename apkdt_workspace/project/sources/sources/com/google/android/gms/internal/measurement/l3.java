package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.b4;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l3 implements p7 {

    /* renamed from: a, reason: collision with root package name */
    private final i3 f11956a;

    private l3(i3 i3Var) {
        c4.a(i3Var, "output");
        this.f11956a = i3Var;
        this.f11956a.f11902a = this;
    }

    public static l3 a(i3 i3Var) {
        l3 l3Var = i3Var.f11902a;
        return l3Var != null ? l3Var : new l3(i3Var);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2, long j2) {
        this.f11956a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void c(int i2, long j2) {
        this.f11956a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void d(int i2, int i3) {
        this.f11956a.c(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void e(int i2, long j2) {
        this.f11956a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void f(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.i(list.get(i5).intValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.e(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void g(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.g(list.get(i5).intValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.b(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.c(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void h(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.j(list.get(i5).intValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.e(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void i(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.g(list.get(i5).longValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void j(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.f(list.get(i5).longValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.b(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.b(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void k(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.e(list.get(i5).longValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void l(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.h(list.get(i5).intValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.c(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.d(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void m(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.b(list.get(i5).doubleValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.a(i2, list.get(i3).doubleValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void n(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.b(list.get(i5).floatValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.a(i2, list.get(i3).floatValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void zzm(int i2, int i3) {
        this.f11956a.e(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void d(int i2, long j2) {
        this.f11956a.b(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void e(int i2, int i3) {
        this.f11956a.d(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final int a() {
        return b4.d.f11775k;
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2, int i3) {
        this.f11956a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void c(int i2, int i3) {
        this.f11956a.e(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void d(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.d(list.get(i5).longValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void e(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.h(list.get(i5).longValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, float f2) {
        this.f11956a.a(i2, f2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void c(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.k(list.get(i5).intValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, double d2) {
        this.f11956a.a(i2, d2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2, Object obj, y5 y5Var) {
        i3 i3Var = this.f11956a;
        i3Var.a(i2, 3);
        y5Var.a((y5) obj, (p7) i3Var.f11902a);
        i3Var.a(i2, 4);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, int i3) {
        this.f11956a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, long j2) {
        this.f11956a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, boolean z) {
        this.f11956a.a(i2, z);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, String str) {
        this.f11956a.a(i2, str);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2) {
        this.f11956a.a(i2, 4);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, t2 t2Var) {
        this.f11956a.a(i2, t2Var);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.f(list.get(i5).intValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, Object obj, y5 y5Var) {
        this.f11956a.a(i2, (k5) obj, y5Var);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2) {
        this.f11956a.a(i2, 3);
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, Object obj) {
        if (obj instanceof t2) {
            this.f11956a.b(i2, (t2) obj);
        } else {
            this.f11956a.b(i2, (k5) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f11956a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += i3.b(list.get(i5).booleanValue());
            }
            this.f11956a.b(i4);
            while (i3 < list.size()) {
                this.f11956a.a(list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.a(i2, list.get(i3).booleanValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2, List<String> list) {
        int i3 = 0;
        if (list instanceof s4) {
            s4 s4Var = (s4) list;
            while (i3 < list.size()) {
                Object k2 = s4Var.k(i3);
                if (k2 instanceof String) {
                    this.f11956a.a(i2, (String) k2);
                } else {
                    this.f11956a.a(i2, (t2) k2);
                }
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f11956a.a(i2, list.get(i3));
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, List<t2> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f11956a.a(i2, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void a(int i2, List<?> list, y5 y5Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            a(i2, list.get(i3), y5Var);
        }
    }

    @Override // com.google.android.gms.internal.measurement.p7
    public final void b(int i2, List<?> list, y5 y5Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            b(i2, list.get(i3), y5Var);
        }
    }
}
