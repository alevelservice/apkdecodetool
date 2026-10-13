package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class ta1<T> implements db1<T> {

    /* renamed from: a, reason: collision with root package name */
    private final oa1 f9540a;

    /* renamed from: b, reason: collision with root package name */
    private final vb1<?, ?> f9541b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f9542c;

    /* renamed from: d, reason: collision with root package name */
    private final s81<?> f9543d;

    private ta1(vb1<?, ?> vb1Var, s81<?> s81Var, oa1 oa1Var) {
        this.f9541b = vb1Var;
        this.f9542c = s81Var.a(oa1Var);
        this.f9543d = s81Var;
        this.f9540a = oa1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ta1<T> a(vb1<?, ?> vb1Var, s81<?> s81Var, oa1 oa1Var) {
        return new ta1<>(vb1Var, s81Var, oa1Var);
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final void b(T t, T t2) {
        fb1.a(this.f9541b, t, t2);
        if (this.f9542c) {
            fb1.a(this.f9543d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final int c(T t) {
        int hashCode = this.f9541b.d(t).hashCode();
        return this.f9542c ? (hashCode * 53) + this.f9543d.a(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final boolean d(T t) {
        return this.f9543d.a(t).c();
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final void e(T t) {
        this.f9541b.a(t);
        this.f9543d.c(t);
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final int f(T t) {
        vb1<?, ?> vb1Var = this.f9541b;
        int f2 = vb1Var.f(vb1Var.d(t)) + 0;
        return this.f9542c ? f2 + this.f9543d.a(t).f() : f2;
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final T a() {
        return (T) this.f9540a.c().p();
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final boolean a(T t, T t2) {
        if (!this.f9541b.d(t).equals(this.f9541b.d(t2))) {
            return false;
        }
        if (this.f9542c) {
            return this.f9543d.a(t).equals(this.f9543d.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final void a(T t, tc1 tc1Var) {
        Iterator<Map.Entry<?, Object>> d2 = this.f9543d.a(t).d();
        while (d2.hasNext()) {
            Map.Entry<?, Object> next = d2.next();
            v81 v81Var = (v81) next.getKey();
            if (v81Var.L() == qc1.MESSAGE && !v81Var.M() && !v81Var.N()) {
                if (next instanceof r91) {
                    tc1Var.a(v81Var.zzab(), (Object) ((r91) next).a().a());
                } else {
                    tc1Var.a(v81Var.zzab(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        vb1<?, ?> vb1Var = this.f9541b;
        vb1Var.b((vb1<?, ?>) vb1Var.d(t), tc1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099 A[EDGE_INSN: B:24:0x0099->B:25:0x0099 BREAK  A[LOOP:1: B:10:0x0053->B:18:0x0053], SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.db1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.ads.s71 r14) {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.ads.e91 r0 = (com.google.android.gms.internal.ads.e91) r0
            com.google.android.gms.internal.ads.yb1 r1 = r0.zzhkd
            com.google.android.gms.internal.ads.yb1 r2 = com.google.android.gms.internal.ads.yb1.d()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.ads.yb1 r1 = com.google.android.gms.internal.ads.yb1.e()
            r0.zzhkd = r1
        L11:
            com.google.android.gms.internal.ads.e91$b r10 = (com.google.android.gms.internal.ads.e91.b) r10
            r10.k()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.ads.p71.a(r11, r12, r14)
            int r2 = r14.f9285a
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.ads.s81<?> r12 = r9.f9543d
            com.google.android.gms.internal.ads.q81 r0 = r14.f9288d
            com.google.android.gms.internal.ads.oa1 r3 = r9.f9540a
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.a(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.ads.e91$e r0 = (com.google.android.gms.internal.ads.e91.e) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.ads.p71.a(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.ads.ya1.a()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.ads.p71.a(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.ads.p71.a(r11, r4, r14)
            int r5 = r14.f9285a
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.ads.p71.e(r11, r4, r14)
            java.lang.Object r2 = r14.f9287c
            com.google.android.gms.internal.ads.t71 r2 = (com.google.android.gms.internal.ads.t71) r2
            goto L53
        L72:
            com.google.android.gms.internal.ads.ya1.a()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.ads.p71.a(r11, r4, r14)
            int r12 = r14.f9285a
            com.google.android.gms.internal.ads.s81<?> r0 = r9.f9543d
            com.google.android.gms.internal.ads.q81 r5 = r14.f9288d
            com.google.android.gms.internal.ads.oa1 r6 = r9.f9540a
            java.lang.Object r0 = r0.a(r5, r6, r12)
            com.google.android.gms.internal.ads.e91$e r0 = (com.google.android.gms.internal.ads.e91.e) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.ads.p71.a(r5, r11, r4, r13, r14)
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
            com.google.android.gms.internal.ads.o91 r10 = com.google.android.gms.internal.ads.o91.zzbad()
            goto Lad
        Lac:
            throw r10
        Lad:
            goto Lac
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ta1.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.s71):void");
    }

    @Override // com.google.android.gms.internal.ads.db1
    public final void a(T t, eb1 eb1Var, q81 q81Var) {
        boolean z;
        vb1<?, ?> vb1Var = this.f9541b;
        s81<?> s81Var = this.f9543d;
        Object e2 = vb1Var.e(t);
        t81<?> b2 = s81Var.b(t);
        while (eb1Var.s() != Integer.MAX_VALUE) {
            try {
                int tag = eb1Var.getTag();
                if (tag == 11) {
                    Object obj = null;
                    t71 t71Var = null;
                    int i2 = 0;
                    while (eb1Var.s() != Integer.MAX_VALUE) {
                        int tag2 = eb1Var.getTag();
                        if (tag2 == 16) {
                            i2 = eb1Var.o();
                            obj = s81Var.a(q81Var, this.f9540a, i2);
                        } else if (tag2 == 26) {
                            if (obj == null) {
                                t71Var = eb1Var.l();
                            } else {
                                s81Var.a(eb1Var, obj, q81Var, b2);
                                throw null;
                            }
                        } else if (!eb1Var.e()) {
                            break;
                        }
                    }
                    if (eb1Var.getTag() != 12) {
                        throw o91.zzbab();
                    }
                    if (t71Var != null) {
                        if (obj == null) {
                            vb1Var.a((vb1<?, ?>) e2, i2, t71Var);
                        } else {
                            s81Var.a(t71Var, obj, q81Var, b2);
                            throw null;
                        }
                    }
                    z = true;
                } else if ((tag & 7) == 2) {
                    Object a2 = s81Var.a(q81Var, this.f9540a, tag >>> 3);
                    if (a2 == null) {
                        z = vb1Var.a((vb1<?, ?>) e2, eb1Var);
                    } else {
                        s81Var.a(eb1Var, a2, q81Var, b2);
                        throw null;
                    }
                } else {
                    z = eb1Var.e();
                }
                if (!z) {
                    return;
                }
            } finally {
                vb1Var.b((Object) t, (T) e2);
            }
        }
    }
}
