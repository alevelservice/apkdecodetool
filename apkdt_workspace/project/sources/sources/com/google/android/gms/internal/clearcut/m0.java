package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.d1;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m0 implements m4 {

    /* renamed from: a, reason: collision with root package name */
    private final k0 f11484a;

    private m0(k0 k0Var) {
        f1.a(k0Var, "output");
        this.f11484a = k0Var;
        this.f11484a.f11456a = this;
    }

    public static m0 a(k0 k0Var) {
        m0 m0Var = k0Var.f11456a;
        return m0Var != null ? m0Var : new m0(k0Var);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final int a() {
        return d1.e.f11400k;
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2) {
        this.f11484a.a(i2, 4);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, double d2) {
        this.f11484a.a(i2, d2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, float f2) {
        this.f11484a.a(i2, f2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, int i3) {
        this.f11484a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, long j2) {
        this.f11484a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, y yVar) {
        this.f11484a.a(i2, yVar);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, Object obj) {
        if (obj instanceof y) {
            this.f11484a.b(i2, (y) obj);
        } else {
            this.f11484a.b(i2, (i2) obj);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, Object obj, z2 z2Var) {
        this.f11484a.a(i2, (i2) obj, z2Var);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, String str) {
        this.f11484a.a(i2, str);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, List<y> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f11484a.a(i2, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, List<?> list, z2 z2Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            b(i2, list.get(i3), z2Var);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.a(i2, list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.b(list.get(i5).booleanValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).booleanValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void a(int i2, boolean z) {
        this.f11484a.a(i2, z);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2) {
        this.f11484a.a(i2, 3);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2, int i3) {
        this.f11484a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2, long j2) {
        this.f11484a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2, Object obj, z2 z2Var) {
        k0 k0Var = this.f11484a;
        k0Var.a(i2, 3);
        z2Var.a((z2) obj, (m4) k0Var.f11456a);
        k0Var.a(i2, 4);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2, List<String> list) {
        int i3 = 0;
        if (!(list instanceof s1)) {
            while (i3 < list.size()) {
                this.f11484a.a(i2, list.get(i3));
                i3++;
            }
            return;
        }
        s1 s1Var = (s1) list;
        while (i3 < list.size()) {
            Object j2 = s1Var.j(i3);
            if (j2 instanceof String) {
                this.f11484a.a(i2, (String) j2);
            } else {
                this.f11484a.a(i2, (y) j2);
            }
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2, List<?> list, z2 z2Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            a(i2, list.get(i3), z2Var);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void b(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.b(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.f(list.get(i5).intValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void c(int i2, int i3) {
        this.f11484a.e(i2, i3);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void c(int i2, long j2) {
        this.f11484a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void c(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.b(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.k(list.get(i5).intValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void d(int i2, int i3) {
        this.f11484a.c(i2, i3);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void d(int i2, long j2) {
        this.f11484a.b(i2, j2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void d(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.a(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.d(list.get(i5).longValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void e(int i2, int i3) {
        this.f11484a.d(i2, i3);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void e(int i2, long j2) {
        this.f11484a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void e(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.c(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.h(list.get(i5).longValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.c(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void f(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.e(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.i(list.get(i5).intValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.d(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void g(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.c(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.g(list.get(i5).intValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.b(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void h(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.e(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.j(list.get(i5).intValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.d(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void i(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.c(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.g(list.get(i5).longValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.c(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void j(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.b(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.f(list.get(i5).longValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.b(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void k(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.a(i2, list.get(i3).longValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.e(list.get(i5).longValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void l(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.d(i2, list.get(i3).intValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.h(list.get(i5).intValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.c(list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void m(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.a(i2, list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.b(list.get(i5).doubleValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).doubleValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void n(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                this.f11484a.a(i2, list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        this.f11484a.a(i2, 2);
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            i4 += k0.b(list.get(i5).floatValue());
        }
        this.f11484a.b(i4);
        while (i3 < list.size()) {
            this.f11484a.a(list.get(i3).floatValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.m4
    public final void zzm(int i2, int i3) {
        this.f11484a.e(i2, i3);
    }
}
