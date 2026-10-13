package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class p5<T> implements y5<T> {

    /* renamed from: a, reason: collision with root package name */
    private final k5 f12042a;

    /* renamed from: b, reason: collision with root package name */
    private final r6<?, ?> f12043b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f12044c;

    /* renamed from: d, reason: collision with root package name */
    private final q3<?> f12045d;

    private p5(r6<?, ?> r6Var, q3<?> q3Var, k5 k5Var) {
        this.f12043b = r6Var;
        this.f12044c = q3Var.a(k5Var);
        this.f12045d = q3Var;
        this.f12042a = k5Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> p5<T> a(r6<?, ?> r6Var, q3<?> q3Var, k5 k5Var) {
        return new p5<>(r6Var, q3Var, k5Var);
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final void b(T t, T t2) {
        a6.a(this.f12043b, t, t2);
        if (this.f12044c) {
            a6.a(this.f12045d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final int c(T t) {
        int hashCode = this.f12043b.d(t).hashCode();
        return this.f12044c ? (hashCode * 53) + this.f12045d.a(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final void d(T t) {
        this.f12043b.a(t);
        this.f12045d.c(t);
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final T a() {
        return (T) this.f12042a.c().r();
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final boolean a(T t, T t2) {
        if (!this.f12043b.d(t).equals(this.f12043b.d(t2))) {
            return false;
        }
        if (this.f12044c) {
            return this.f12045d.a(t).equals(this.f12045d.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final int b(T t) {
        r6<?, ?> r6Var = this.f12043b;
        int f2 = r6Var.f(r6Var.d(t)) + 0;
        return this.f12044c ? f2 + this.f12045d.a(t).f() : f2;
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final void a(T t, p7 p7Var) {
        Iterator<Map.Entry<?, Object>> d2 = this.f12045d.a(t).d();
        while (d2.hasNext()) {
            Map.Entry<?, Object> next = d2.next();
            t3 t3Var = (t3) next.getKey();
            if (t3Var.I() == m7.MESSAGE && !t3Var.H() && !t3Var.O()) {
                if (next instanceof o4) {
                    p7Var.a(t3Var.zzlg(), (Object) ((o4) next).a().a());
                } else {
                    p7Var.a(t3Var.zzlg(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        r6<?, ?> r6Var = this.f12043b;
        r6Var.b((r6<?, ?>) r6Var.d(t), p7Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099 A[EDGE_INSN: B:24:0x0099->B:25:0x0099 BREAK  A[LOOP:1: B:10:0x0053->B:18:0x0053], SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.y5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.measurement.o2 r14) {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.measurement.b4 r0 = (com.google.android.gms.internal.measurement.b4) r0
            com.google.android.gms.internal.measurement.u6 r1 = r0.zzahz
            com.google.android.gms.internal.measurement.u6 r2 = com.google.android.gms.internal.measurement.u6.d()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.measurement.u6 r1 = com.google.android.gms.internal.measurement.u6.e()
            r0.zzahz = r1
        L11:
            com.google.android.gms.internal.measurement.b4$b r10 = (com.google.android.gms.internal.measurement.b4.b) r10
            r10.n()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.measurement.p2.a(r11, r12, r14)
            int r2 = r14.f12007a
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.measurement.q3<?> r12 = r9.f12045d
            com.google.android.gms.internal.measurement.o3 r0 = r14.f12010d
            com.google.android.gms.internal.measurement.k5 r3 = r9.f12042a
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.a(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.measurement.b4$e r0 = (com.google.android.gms.internal.measurement.b4.e) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.p2.a(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.measurement.u5.a()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.measurement.p2.a(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.measurement.p2.a(r11, r4, r14)
            int r5 = r14.f12007a
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.measurement.p2.e(r11, r4, r14)
            java.lang.Object r2 = r14.f12009c
            com.google.android.gms.internal.measurement.t2 r2 = (com.google.android.gms.internal.measurement.t2) r2
            goto L53
        L72:
            com.google.android.gms.internal.measurement.u5.a()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.measurement.p2.a(r11, r4, r14)
            int r12 = r14.f12007a
            com.google.android.gms.internal.measurement.q3<?> r0 = r9.f12045d
            com.google.android.gms.internal.measurement.o3 r5 = r14.f12010d
            com.google.android.gms.internal.measurement.k5 r6 = r9.f12042a
            java.lang.Object r0 = r0.a(r5, r6, r12)
            com.google.android.gms.internal.measurement.b4$e r0 = (com.google.android.gms.internal.measurement.b4.e) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.measurement.p2.a(r5, r11, r4, r13, r14)
            goto L53
        L99:
            if (r2 == 0) goto La1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.a(r12, r2)
        La1:
            r12 = r4
            goto L18
        La4:
            if (r12 != r13) goto La7
            return
        La7:
            com.google.android.gms.internal.measurement.l4 r10 = com.google.android.gms.internal.measurement.l4.zzva()
            goto Lad
        Lac:
            throw r10
        Lad:
            goto Lac
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.p5.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.o2):void");
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final void a(T t, z5 z5Var, o3 o3Var) {
        boolean z;
        r6<?, ?> r6Var = this.f12043b;
        q3<?> q3Var = this.f12045d;
        Object e2 = r6Var.e(t);
        r3<?> b2 = q3Var.b(t);
        while (z5Var.e() != Integer.MAX_VALUE) {
            try {
                int tag = z5Var.getTag();
                if (tag == 11) {
                    Object obj = null;
                    t2 t2Var = null;
                    int i2 = 0;
                    while (z5Var.e() != Integer.MAX_VALUE) {
                        int tag2 = z5Var.getTag();
                        if (tag2 == 16) {
                            i2 = z5Var.c();
                            obj = q3Var.a(o3Var, this.f12042a, i2);
                        } else if (tag2 == 26) {
                            if (obj == null) {
                                t2Var = z5Var.l();
                            } else {
                                q3Var.a(z5Var, obj, o3Var, b2);
                                throw null;
                            }
                        } else if (!z5Var.k()) {
                            break;
                        }
                    }
                    if (z5Var.getTag() != 12) {
                        throw l4.zzux();
                    }
                    if (t2Var != null) {
                        if (obj == null) {
                            r6Var.a((r6<?, ?>) e2, i2, t2Var);
                        } else {
                            q3Var.a(t2Var, obj, o3Var, b2);
                            throw null;
                        }
                    }
                    z = true;
                } else if ((tag & 7) == 2) {
                    Object a2 = q3Var.a(o3Var, this.f12042a, tag >>> 3);
                    if (a2 == null) {
                        z = r6Var.a((r6<?, ?>) e2, z5Var);
                    } else {
                        q3Var.a(z5Var, a2, o3Var, b2);
                        throw null;
                    }
                } else {
                    z = z5Var.k();
                }
                if (!z) {
                    return;
                }
            } finally {
                r6Var.b((Object) t, (T) e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.y5
    public final boolean a(T t) {
        return this.f12045d.a(t).c();
    }
}
