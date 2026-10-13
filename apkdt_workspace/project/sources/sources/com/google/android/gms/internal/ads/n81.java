package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e91;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class n81 implements tc1 {

    /* renamed from: a, reason: collision with root package name */
    private final m81 f8303a;

    private n81(m81 m81Var) {
        f91.a(m81Var, "output");
        this.f8303a = m81Var;
        this.f8303a.f8050a = this;
    }

    public static n81 a(m81 m81Var) {
        n81 n81Var = m81Var.f8050a;
        return n81Var != null ? n81Var : new n81(m81Var);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2, int i3) {
        this.f8303a.d(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void c(int i2, long j2) {
        this.f8303a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void d(int i2, int i3) {
        this.f8303a.a(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void e(int i2, long j2) {
        this.f8303a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void f(int i2, long j2) {
        this.f8303a.a(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void g(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.g(list.get(i5).intValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.b(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void h(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.j(list.get(i5).intValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.d(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void i(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.g(list.get(i5).longValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void j(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.f(list.get(i5).longValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.b(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.b(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void k(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.e(list.get(i5).longValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void l(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.h(list.get(i5).intValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.c(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.c(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void m(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.b(list.get(i5).doubleValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).doubleValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void n(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.b(list.get(i5).floatValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).floatValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void f(int i2, int i3) {
        this.f8303a.d(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final int a() {
        return e91.d.f6382k;
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2, long j2) {
        this.f8303a.c(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void c(int i2, int i3) {
        this.f8303a.b(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void d(int i2, long j2) {
        this.f8303a.b(i2, j2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void e(int i2, int i3) {
        this.f8303a.c(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void f(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.i(list.get(i5).intValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.d(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, float f2) {
        this.f8303a.a(i2, f2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2, Object obj, db1 db1Var) {
        this.f8303a.a(i2, (oa1) obj, db1Var);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void c(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.k(list.get(i5).intValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void d(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.d(list.get(i5).longValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void e(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.h(list.get(i5).longValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, double d2) {
        this.f8303a.a(i2, d2);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2) {
        this.f8303a.e(i2, 4);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, int i3) {
        this.f8303a.a(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.f(list.get(i5).intValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).intValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, boolean z) {
        this.f8303a.a(i2, z);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, String str) {
        this.f8303a.a(i2, str);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, t71 t71Var) {
        this.f8303a.a(i2, t71Var);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, Object obj, db1 db1Var) {
        m81 m81Var = this.f8303a;
        m81Var.e(i2, 3);
        db1Var.a((db1) obj, (tc1) m81Var.f8050a);
        m81Var.e(i2, 4);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2) {
        this.f8303a.e(i2, 3);
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2, List<String> list) {
        int i3 = 0;
        if (list instanceof v91) {
            v91 v91Var = (v91) list;
            while (i3 < list.size()) {
                Object l2 = v91Var.l(i3);
                if (l2 instanceof String) {
                    this.f8303a.a(i2, (String) l2);
                } else {
                    this.f8303a.a(i2, (t71) l2);
                }
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3));
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, Object obj) {
        if (obj instanceof t71) {
            this.f8303a.b(i2, (t71) obj);
        } else {
            this.f8303a.b(i2, (oa1) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f8303a.e(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += m81.b(list.get(i5).booleanValue());
            }
            this.f8303a.b(i4);
            while (i3 < list.size()) {
                this.f8303a.a(list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f8303a.a(i2, list.get(i3).booleanValue());
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void b(int i2, List<?> list, db1 db1Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            b(i2, list.get(i3), db1Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, List<t71> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f8303a.a(i2, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.ads.tc1
    public final void a(int i2, List<?> list, db1 db1Var) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            a(i2, list.get(i3), db1Var);
        }
    }
}
