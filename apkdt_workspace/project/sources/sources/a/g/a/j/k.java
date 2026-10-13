package a.g.a.j;

import a.g.a.j.f;

/* compiled from: Optimizer.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    static boolean[] f267a = new boolean[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(g gVar, a.g.a.e eVar, f fVar) {
        if (gVar.C[0] != f.b.WRAP_CONTENT && fVar.C[0] == f.b.MATCH_PARENT) {
            int i2 = fVar.s.f231e;
            int s = gVar.s() - fVar.u.f231e;
            e eVar2 = fVar.s;
            eVar2.f235i = eVar.a(eVar2);
            e eVar3 = fVar.u;
            eVar3.f235i = eVar.a(eVar3);
            eVar.a(fVar.s.f235i, i2);
            eVar.a(fVar.u.f235i, s);
            fVar.f240a = 2;
            fVar.a(i2, s);
        }
        if (gVar.C[1] == f.b.WRAP_CONTENT || fVar.C[1] != f.b.MATCH_PARENT) {
            return;
        }
        int i3 = fVar.t.f231e;
        int i4 = gVar.i() - fVar.v.f231e;
        e eVar4 = fVar.t;
        eVar4.f235i = eVar.a(eVar4);
        e eVar5 = fVar.v;
        eVar5.f235i = eVar.a(eVar5);
        eVar.a(fVar.t.f235i, i3);
        eVar.a(fVar.v.f235i, i4);
        if (fVar.Q > 0 || fVar.r() == 8) {
            e eVar6 = fVar.w;
            eVar6.f235i = eVar.a(eVar6);
            eVar.a(fVar.w.f235i, fVar.Q + i3);
        }
        fVar.f241b = 2;
        fVar.e(i3, i4);
    }

    private static boolean a(f fVar, int i2) {
        f.b[] bVarArr = fVar.C;
        if (bVarArr[i2] != f.b.MATCH_CONSTRAINT) {
            return false;
        }
        if (fVar.G != 0.0f) {
            if (bVarArr[i2 != 0 ? (char) 0 : (char) 1] == f.b.MATCH_CONSTRAINT) {
            }
            return false;
        }
        if (i2 == 0) {
            if (fVar.f244e != 0 || fVar.f247h != 0 || fVar.f248i != 0) {
                return false;
            }
        } else if (fVar.f245f != 0 || fVar.f250k != 0 || fVar.f251l != 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i2, f fVar) {
        fVar.I();
        m d2 = fVar.s.d();
        m d3 = fVar.t.d();
        m d4 = fVar.u.d();
        m d5 = fVar.v.d();
        boolean z = (i2 & 8) == 8;
        boolean z2 = fVar.C[0] == f.b.MATCH_CONSTRAINT && a(fVar, 0);
        if (d2.f273h != 4 && d4.f273h != 4) {
            if (fVar.C[0] == f.b.FIXED || (z2 && fVar.r() == 8)) {
                if (fVar.s.f230d == null && fVar.u.f230d == null) {
                    d2.b(1);
                    d4.b(1);
                    if (z) {
                        d4.a(d2, 1, fVar.m());
                    } else {
                        d4.a(d2, fVar.s());
                    }
                } else if (fVar.s.f230d != null && fVar.u.f230d == null) {
                    d2.b(1);
                    d4.b(1);
                    if (z) {
                        d4.a(d2, 1, fVar.m());
                    } else {
                        d4.a(d2, fVar.s());
                    }
                } else if (fVar.s.f230d == null && fVar.u.f230d != null) {
                    d2.b(1);
                    d4.b(1);
                    d2.a(d4, -fVar.s());
                    if (z) {
                        d2.a(d4, -1, fVar.m());
                    } else {
                        d2.a(d4, -fVar.s());
                    }
                } else if (fVar.s.f230d != null && fVar.u.f230d != null) {
                    d2.b(2);
                    d4.b(2);
                    if (z) {
                        fVar.m().a(d2);
                        fVar.m().a(d4);
                        d2.b(d4, -1, fVar.m());
                        d4.b(d2, 1, fVar.m());
                    } else {
                        d2.b(d4, -fVar.s());
                        d4.b(d2, fVar.s());
                    }
                }
            } else if (z2) {
                int s = fVar.s();
                d2.b(1);
                d4.b(1);
                if (fVar.s.f230d == null && fVar.u.f230d == null) {
                    if (z) {
                        d4.a(d2, 1, fVar.m());
                    } else {
                        d4.a(d2, s);
                    }
                } else if (fVar.s.f230d == null || fVar.u.f230d != null) {
                    if (fVar.s.f230d != null || fVar.u.f230d == null) {
                        if (fVar.s.f230d != null && fVar.u.f230d != null) {
                            if (z) {
                                fVar.m().a(d2);
                                fVar.m().a(d4);
                            }
                            if (fVar.G == 0.0f) {
                                d2.b(3);
                                d4.b(3);
                                d2.b(d4, 0.0f);
                                d4.b(d2, 0.0f);
                            } else {
                                d2.b(2);
                                d4.b(2);
                                d2.b(d4, -s);
                                d4.b(d2, s);
                                fVar.o(s);
                            }
                        }
                    } else if (z) {
                        d2.a(d4, -1, fVar.m());
                    } else {
                        d2.a(d4, -s);
                    }
                } else if (z) {
                    d4.a(d2, 1, fVar.m());
                } else {
                    d4.a(d2, s);
                }
            }
        }
        boolean z3 = fVar.C[1] == f.b.MATCH_CONSTRAINT && a(fVar, 1);
        if (d3.f273h == 4 || d5.f273h == 4) {
            return;
        }
        if (fVar.C[1] != f.b.FIXED && (!z3 || fVar.r() != 8)) {
            if (z3) {
                int i3 = fVar.i();
                d3.b(1);
                d5.b(1);
                if (fVar.t.f230d == null && fVar.v.f230d == null) {
                    if (z) {
                        d5.a(d3, 1, fVar.l());
                        return;
                    } else {
                        d5.a(d3, i3);
                        return;
                    }
                }
                if (fVar.t.f230d != null && fVar.v.f230d == null) {
                    if (z) {
                        d5.a(d3, 1, fVar.l());
                        return;
                    } else {
                        d5.a(d3, i3);
                        return;
                    }
                }
                if (fVar.t.f230d == null && fVar.v.f230d != null) {
                    if (z) {
                        d3.a(d5, -1, fVar.l());
                        return;
                    } else {
                        d3.a(d5, -i3);
                        return;
                    }
                }
                if (fVar.t.f230d == null || fVar.v.f230d == null) {
                    return;
                }
                if (z) {
                    fVar.l().a(d3);
                    fVar.m().a(d5);
                }
                if (fVar.G == 0.0f) {
                    d3.b(3);
                    d5.b(3);
                    d3.b(d5, 0.0f);
                    d5.b(d3, 0.0f);
                    return;
                }
                d3.b(2);
                d5.b(2);
                d3.b(d5, -i3);
                d5.b(d3, i3);
                fVar.g(i3);
                if (fVar.Q > 0) {
                    fVar.w.d().a(1, d3, fVar.Q);
                    return;
                }
                return;
            }
            return;
        }
        if (fVar.t.f230d == null && fVar.v.f230d == null) {
            d3.b(1);
            d5.b(1);
            if (z) {
                d5.a(d3, 1, fVar.l());
            } else {
                d5.a(d3, fVar.i());
            }
            e eVar = fVar.w;
            if (eVar.f230d != null) {
                eVar.d().b(1);
                d3.a(1, fVar.w.d(), -fVar.Q);
                return;
            }
            return;
        }
        if (fVar.t.f230d != null && fVar.v.f230d == null) {
            d3.b(1);
            d5.b(1);
            if (z) {
                d5.a(d3, 1, fVar.l());
            } else {
                d5.a(d3, fVar.i());
            }
            if (fVar.Q > 0) {
                fVar.w.d().a(1, d3, fVar.Q);
                return;
            }
            return;
        }
        if (fVar.t.f230d == null && fVar.v.f230d != null) {
            d3.b(1);
            d5.b(1);
            if (z) {
                d3.a(d5, -1, fVar.l());
            } else {
                d3.a(d5, -fVar.i());
            }
            if (fVar.Q > 0) {
                fVar.w.d().a(1, d3, fVar.Q);
                return;
            }
            return;
        }
        if (fVar.t.f230d == null || fVar.v.f230d == null) {
            return;
        }
        d3.b(2);
        d5.b(2);
        if (z) {
            d3.b(d5, -1, fVar.l());
            d5.b(d3, 1, fVar.l());
            fVar.l().a(d3);
            fVar.m().a(d5);
        } else {
            d3.b(d5, -fVar.i());
            d5.b(d3, fVar.i());
        }
        if (fVar.Q > 0) {
            fVar.w.d().a(1, d3, fVar.Q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        if (r7.e0 == 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0036, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0048, code lost:
    
        if (r7.f0 == 2) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0105 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(a.g.a.j.g r24, a.g.a.e r25, int r26, int r27, a.g.a.j.d r28) {
        /*
            Method dump skipped, instructions count: 900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.g.a.j.k.a(a.g.a.j.g, a.g.a.e, int, int, a.g.a.j.d):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(f fVar, int i2, int i3) {
        int i4 = i2 * 2;
        int i5 = i4 + 1;
        fVar.A[i4].d().f271f = fVar.k().s.d();
        fVar.A[i4].d().f272g = i3;
        fVar.A[i4].d().f280b = 1;
        fVar.A[i5].d().f271f = fVar.A[i4].d();
        fVar.A[i5].d().f272g = fVar.d(i2);
        fVar.A[i5].d().f280b = 1;
    }
}
