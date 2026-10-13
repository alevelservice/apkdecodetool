package a.g.a.j;

import a.g.a.j.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Analyzer.java */
/* loaded from: classes.dex */
public class a {
    public static void a(g gVar) {
        if ((gVar.M() & 32) != 32) {
            b(gVar);
            return;
        }
        gVar.D0 = true;
        gVar.x0 = false;
        gVar.y0 = false;
        gVar.z0 = false;
        ArrayList<f> arrayList = gVar.k0;
        List<h> list = gVar.w0;
        boolean z = gVar.j() == f.b.WRAP_CONTENT;
        boolean z2 = gVar.q() == f.b.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (f fVar : arrayList) {
            fVar.p = null;
            fVar.d0 = false;
            fVar.F();
        }
        for (f fVar2 : arrayList) {
            if (fVar2.p == null && !a(fVar2, list, z3)) {
                b(gVar);
                gVar.D0 = false;
                return;
            }
        }
        int i2 = 0;
        int i3 = 0;
        for (h hVar : list) {
            i2 = Math.max(i2, a(hVar, 0));
            i3 = Math.max(i3, a(hVar, 1));
        }
        if (z) {
            gVar.a(f.b.FIXED);
            gVar.o(i2);
            gVar.x0 = true;
            gVar.y0 = true;
            gVar.A0 = i2;
        }
        if (z2) {
            gVar.b(f.b.FIXED);
            gVar.g(i3);
            gVar.x0 = true;
            gVar.z0 = true;
            gVar.B0 = i3;
        }
        a(list, 0, gVar.s());
        a(list, 1, gVar.i());
    }

    private static void b(g gVar) {
        gVar.w0.clear();
        gVar.w0.add(0, new h(gVar.k0));
    }

    private static boolean a(f fVar, List<h> list, boolean z) {
        h hVar = new h(new ArrayList(), true);
        list.add(hVar);
        return a(fVar, hVar, list, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x0181, code lost:
    
        if (r3.f228b == r4) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0128, code lost:
    
        if (r3.f228b == r4) goto L92;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(a.g.a.j.f r8, a.g.a.j.h r9, java.util.List<a.g.a.j.h> r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.g.a.j.a.a(a.g.a.j.f, a.g.a.j.h, java.util.List, boolean):boolean");
    }

    private static void a(g gVar, f fVar, h hVar) {
        hVar.f258d = false;
        gVar.D0 = false;
        fVar.b0 = false;
    }

    private static int a(h hVar, int i2) {
        int i3 = i2 * 2;
        List<f> a2 = hVar.a(i2);
        int size = a2.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            f fVar = a2.get(i5);
            e[] eVarArr = fVar.A;
            int i6 = i3 + 1;
            i4 = Math.max(i4, a(fVar, i2, eVarArr[i6].f230d == null || !(eVarArr[i3].f230d == null || eVarArr[i6].f230d == null), 0));
        }
        hVar.f259e[i2] = i4;
        return i4;
    }

    private static int a(f fVar, int i2, boolean z, int i3) {
        int i4;
        int c2;
        int i5;
        int i6;
        int i7;
        int i8;
        int s;
        int i9;
        int i10;
        int i11;
        int i12 = 0;
        if (!fVar.b0) {
            return 0;
        }
        boolean z2 = fVar.w.f230d != null && i2 == 1;
        if (z) {
            i4 = fVar.c();
            c2 = fVar.i() - fVar.c();
            i6 = i2 * 2;
            i5 = i6 + 1;
        } else {
            i4 = fVar.i() - fVar.c();
            c2 = fVar.c();
            i5 = i2 * 2;
            i6 = i5 + 1;
        }
        e[] eVarArr = fVar.A;
        if (eVarArr[i5].f230d == null || eVarArr[i6].f230d != null) {
            i7 = i5;
            i8 = 1;
        } else {
            i7 = i6;
            i6 = i5;
            i8 = -1;
        }
        int i13 = z2 ? i3 - i4 : i3;
        int b2 = (fVar.A[i6].b() * i8) + a(fVar, i2);
        int i14 = i13 + b2;
        int s2 = (i2 == 0 ? fVar.s() : fVar.i()) * i8;
        Iterator<o> it = fVar.A[i6].d().f279a.iterator();
        while (it.hasNext()) {
            i12 = Math.max(i12, a(((m) it.next()).f268c.f228b, i2, z, i14));
        }
        int i15 = 0;
        for (Iterator<o> it2 = fVar.A[i7].d().f279a.iterator(); it2.hasNext(); it2 = it2) {
            i15 = Math.max(i15, a(((m) it2.next()).f268c.f228b, i2, z, s2 + i14));
        }
        if (z2) {
            i12 -= i4;
            s = i15 + c2;
        } else {
            s = i15 + ((i2 == 0 ? fVar.s() : fVar.i()) * i8);
        }
        int i16 = 1;
        if (i2 == 1) {
            Iterator<o> it3 = fVar.w.d().f279a.iterator();
            int i17 = 0;
            while (it3.hasNext()) {
                Iterator<o> it4 = it3;
                m mVar = (m) it3.next();
                if (i8 == i16) {
                    i17 = Math.max(i17, a(mVar.f268c.f228b, i2, z, i4 + i14));
                    i11 = i7;
                } else {
                    i11 = i7;
                    i17 = Math.max(i17, a(mVar.f268c.f228b, i2, z, (c2 * i8) + i14));
                }
                it3 = it4;
                i7 = i11;
                i16 = 1;
            }
            i9 = i7;
            int i18 = i17;
            i10 = (fVar.w.d().f279a.size() <= 0 || z2) ? i18 : i8 == 1 ? i18 + i4 : i18 - c2;
        } else {
            i9 = i7;
            i10 = 0;
        }
        int max = b2 + Math.max(i12, Math.max(s, i10));
        int i19 = i14 + s2;
        if (i8 != -1) {
            i14 = i19;
            i19 = i14;
        }
        if (z) {
            k.a(fVar, i2, i19);
            fVar.a(i19, i14, i2);
        } else {
            fVar.p.a(fVar, i2);
            fVar.d(i19, i2);
        }
        if (fVar.c(i2) == f.b.MATCH_CONSTRAINT && fVar.G != 0.0f) {
            fVar.p.a(fVar, i2);
        }
        e[] eVarArr2 = fVar.A;
        if (eVarArr2[i6].f230d != null && eVarArr2[i9].f230d != null) {
            f k2 = fVar.k();
            e[] eVarArr3 = fVar.A;
            if (eVarArr3[i6].f230d.f228b == k2 && eVarArr3[i9].f230d.f228b == k2) {
                fVar.p.a(fVar, i2);
            }
        }
        return max;
    }

    private static void a(e eVar) {
        m d2 = eVar.d();
        e eVar2 = eVar.f230d;
        if (eVar2 == null || eVar2.f230d == eVar) {
            return;
        }
        eVar2.d().a(d2);
    }

    public static void a(List<h> list, int i2, int i3) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            for (f fVar : list.get(i4).b(i2)) {
                if (fVar.b0) {
                    a(fVar, i2, i3);
                }
            }
        }
    }

    private static void a(f fVar, int i2, int i3) {
        int i4 = i2 * 2;
        e[] eVarArr = fVar.A;
        e eVar = eVarArr[i4];
        e eVar2 = eVarArr[i4 + 1];
        if ((eVar.f230d == null || eVar2.f230d == null) ? false : true) {
            k.a(fVar, i2, a(fVar, i2) + eVar.b());
            return;
        }
        if (fVar.G != 0.0f && fVar.c(i2) == f.b.MATCH_CONSTRAINT) {
            int a2 = a(fVar);
            int i5 = (int) fVar.A[i4].d().f272g;
            eVar2.d().f271f = eVar.d();
            eVar2.d().f272g = a2;
            eVar2.d().f280b = 1;
            fVar.a(i5, i5 + a2, i2);
            return;
        }
        int e2 = i3 - fVar.e(i2);
        int d2 = e2 - fVar.d(i2);
        fVar.a(d2, e2, i2);
        k.a(fVar, i2, d2);
    }

    private static int a(f fVar, int i2) {
        e eVar;
        int i3 = i2 * 2;
        e[] eVarArr = fVar.A;
        e eVar2 = eVarArr[i3];
        e eVar3 = eVarArr[i3 + 1];
        e eVar4 = eVar2.f230d;
        if (eVar4 == null) {
            return 0;
        }
        f fVar2 = eVar4.f228b;
        f fVar3 = fVar.D;
        if (fVar2 != fVar3 || (eVar = eVar3.f230d) == null || eVar.f228b != fVar3) {
            return 0;
        }
        return (int) ((((fVar3.d(i2) - eVar2.b()) - eVar3.b()) - fVar.d(i2)) * (i2 == 0 ? fVar.V : fVar.W));
    }

    private static int a(f fVar) {
        float s;
        float i2;
        if (fVar.j() == f.b.MATCH_CONSTRAINT) {
            if (fVar.H == 0) {
                i2 = fVar.i() * fVar.G;
            } else {
                i2 = fVar.i() / fVar.G;
            }
            int i3 = (int) i2;
            fVar.o(i3);
            return i3;
        }
        if (fVar.q() != f.b.MATCH_CONSTRAINT) {
            return -1;
        }
        if (fVar.H == 1) {
            s = fVar.s() * fVar.G;
        } else {
            s = fVar.s() / fVar.G;
        }
        int i4 = (int) s;
        fVar.g(i4);
        return i4;
    }
}
