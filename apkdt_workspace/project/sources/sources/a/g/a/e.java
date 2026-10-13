package a.g.a;

import a.g.a.i;
import a.g.a.j.e;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: LinearSystem.java */
/* loaded from: classes.dex */
public class e {
    private static int p = 1000;
    public static f q;

    /* renamed from: c, reason: collision with root package name */
    private a f179c;

    /* renamed from: e, reason: collision with root package name */
    private int f181e;

    /* renamed from: f, reason: collision with root package name */
    b[] f182f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f183g;

    /* renamed from: h, reason: collision with root package name */
    private boolean[] f184h;

    /* renamed from: i, reason: collision with root package name */
    int f185i;

    /* renamed from: j, reason: collision with root package name */
    int f186j;

    /* renamed from: k, reason: collision with root package name */
    private int f187k;

    /* renamed from: l, reason: collision with root package name */
    final c f188l;
    private i[] m;
    private int n;
    private final a o;

    /* renamed from: a, reason: collision with root package name */
    int f177a = 0;

    /* renamed from: b, reason: collision with root package name */
    private HashMap<String, i> f178b = null;

    /* renamed from: d, reason: collision with root package name */
    private int f180d = 32;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinearSystem.java */
    /* loaded from: classes.dex */
    public interface a {
        i a(e eVar, boolean[] zArr);

        void a(a aVar);

        void a(i iVar);

        void clear();

        i getKey();
    }

    public e() {
        int i2 = this.f180d;
        this.f181e = i2;
        this.f182f = null;
        this.f183g = false;
        this.f184h = new boolean[i2];
        this.f185i = 1;
        this.f186j = 0;
        this.f187k = i2;
        this.m = new i[p];
        this.n = 0;
        b[] bVarArr = new b[i2];
        this.f182f = new b[i2];
        j();
        this.f188l = new c();
        this.f179c = new d(this.f188l);
        this.o = new b(this.f188l);
    }

    private final void d(b bVar) {
        if (this.f186j > 0) {
            bVar.f172d.a(bVar, this.f182f);
            if (bVar.f172d.f158a == 0) {
                bVar.f173e = true;
            }
        }
    }

    private void g() {
        for (int i2 = 0; i2 < this.f186j; i2++) {
            b bVar = this.f182f[i2];
            bVar.f169a.f208e = bVar.f170b;
        }
    }

    public static f h() {
        return q;
    }

    private void i() {
        this.f180d *= 2;
        this.f182f = (b[]) Arrays.copyOf(this.f182f, this.f180d);
        c cVar = this.f188l;
        cVar.f176c = (i[]) Arrays.copyOf(cVar.f176c, this.f180d);
        int i2 = this.f180d;
        this.f184h = new boolean[i2];
        this.f181e = i2;
        this.f187k = i2;
        f fVar = q;
        if (fVar != null) {
            fVar.f192d++;
            fVar.o = Math.max(fVar.o, i2);
            f fVar2 = q;
            fVar2.A = fVar2.o;
        }
    }

    private void j() {
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.f182f;
            if (i2 >= bVarArr.length) {
                return;
            }
            b bVar = bVarArr[i2];
            if (bVar != null) {
                this.f188l.f174a.a(bVar);
            }
            this.f182f[i2] = null;
            i2++;
        }
    }

    public void a(f fVar) {
        q = fVar;
    }

    public b b() {
        b a2 = this.f188l.f174a.a();
        if (a2 == null) {
            a2 = new b(this.f188l);
        } else {
            a2.d();
        }
        i.b();
        return a2;
    }

    public i c() {
        f fVar = q;
        if (fVar != null) {
            fVar.m++;
        }
        if (this.f185i + 1 >= this.f181e) {
            i();
        }
        i a2 = a(i.a.SLACK, (String) null);
        this.f177a++;
        this.f185i++;
        int i2 = this.f177a;
        a2.f205b = i2;
        this.f188l.f176c[i2] = a2;
        return a2;
    }

    public void e() {
        f fVar = q;
        if (fVar != null) {
            fVar.f193e++;
        }
        if (this.f183g) {
            f fVar2 = q;
            if (fVar2 != null) {
                fVar2.q++;
            }
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f186j) {
                    z = true;
                    break;
                } else if (!this.f182f[i2].f173e) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                a(this.f179c);
                return;
            }
            f fVar3 = q;
            if (fVar3 != null) {
                fVar3.p++;
            }
            g();
            return;
        }
        a(this.f179c);
    }

    public void f() {
        c cVar;
        int i2 = 0;
        while (true) {
            cVar = this.f188l;
            i[] iVarArr = cVar.f176c;
            if (i2 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i2];
            if (iVar != null) {
                iVar.a();
            }
            i2++;
        }
        cVar.f175b.a(this.m, this.n);
        this.n = 0;
        Arrays.fill(this.f188l.f176c, (Object) null);
        HashMap<String, i> hashMap = this.f178b;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f177a = 0;
        this.f179c.clear();
        this.f185i = 1;
        for (int i3 = 0; i3 < this.f186j; i3++) {
            this.f182f[i3].f171c = false;
        }
        j();
        this.f186j = 0;
    }

    public i a(Object obj) {
        i iVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f185i + 1 >= this.f181e) {
            i();
        }
        if (obj instanceof a.g.a.j.e) {
            a.g.a.j.e eVar = (a.g.a.j.e) obj;
            iVar = eVar.e();
            if (iVar == null) {
                eVar.a(this.f188l);
                iVar = eVar.e();
            }
            int i2 = iVar.f205b;
            if (i2 == -1 || i2 > this.f177a || this.f188l.f176c[i2] == null) {
                if (iVar.f205b != -1) {
                    iVar.a();
                }
                this.f177a++;
                this.f185i++;
                int i3 = this.f177a;
                iVar.f205b = i3;
                iVar.f210g = i.a.UNRESTRICTED;
                this.f188l.f176c[i3] = iVar;
            }
        }
        return iVar;
    }

    private void b(b bVar) {
        bVar.a(this, 0);
    }

    public c d() {
        return this.f188l;
    }

    public int b(Object obj) {
        i e2 = ((a.g.a.j.e) obj).e();
        if (e2 != null) {
            return (int) (e2.f208e + 0.5f);
        }
        return 0;
    }

    private int b(a aVar) {
        float f2;
        boolean z;
        int i2 = 0;
        while (true) {
            f2 = 0.0f;
            if (i2 >= this.f186j) {
                z = false;
                break;
            }
            b[] bVarArr = this.f182f;
            if (bVarArr[i2].f169a.f210g != i.a.UNRESTRICTED && bVarArr[i2].f170b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            f fVar = q;
            if (fVar != null) {
                fVar.f199k++;
            }
            i3++;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            float f3 = Float.MAX_VALUE;
            int i7 = 0;
            while (i4 < this.f186j) {
                b bVar = this.f182f[i4];
                if (bVar.f169a.f210g != i.a.UNRESTRICTED && !bVar.f173e && bVar.f170b < f2) {
                    int i8 = 1;
                    while (i8 < this.f185i) {
                        i iVar = this.f188l.f176c[i8];
                        float b2 = bVar.f172d.b(iVar);
                        if (b2 > f2) {
                            int i9 = i7;
                            float f4 = f3;
                            int i10 = i6;
                            int i11 = i5;
                            for (int i12 = 0; i12 < 7; i12++) {
                                float f5 = iVar.f209f[i12] / b2;
                                if ((f5 < f4 && i12 == i9) || i12 > i9) {
                                    i10 = i8;
                                    i11 = i4;
                                    f4 = f5;
                                    i9 = i12;
                                }
                            }
                            i5 = i11;
                            i6 = i10;
                            f3 = f4;
                            i7 = i9;
                        }
                        i8++;
                        f2 = 0.0f;
                    }
                }
                i4++;
                f2 = 0.0f;
            }
            if (i5 != -1) {
                b bVar2 = this.f182f[i5];
                bVar2.f169a.f206c = -1;
                f fVar2 = q;
                if (fVar2 != null) {
                    fVar2.f198j++;
                }
                bVar2.d(this.f188l.f176c[i6]);
                i iVar2 = bVar2.f169a;
                iVar2.f206c = i5;
                iVar2.c(bVar2);
            } else {
                z2 = true;
            }
            if (i3 > this.f185i / 2) {
                z2 = true;
            }
            f2 = 0.0f;
        }
        return i3;
    }

    private final void c(b bVar) {
        b[] bVarArr = this.f182f;
        int i2 = this.f186j;
        if (bVarArr[i2] != null) {
            this.f188l.f174a.a(bVarArr[i2]);
        }
        b[] bVarArr2 = this.f182f;
        int i3 = this.f186j;
        bVarArr2[i3] = bVar;
        i iVar = bVar.f169a;
        iVar.f206c = i3;
        this.f186j = i3 + 1;
        iVar.c(bVar);
    }

    public i a() {
        f fVar = q;
        if (fVar != null) {
            fVar.n++;
        }
        if (this.f185i + 1 >= this.f181e) {
            i();
        }
        i a2 = a(i.a.SLACK, (String) null);
        this.f177a++;
        this.f185i++;
        int i2 = this.f177a;
        a2.f205b = i2;
        this.f188l.f176c[i2] = a2;
        return a2;
    }

    public void c(i iVar, i iVar2, int i2, int i3) {
        b b2 = b();
        i c2 = c();
        c2.f207d = 0;
        b2.b(iVar, iVar2, c2, i2);
        if (i3 != 6) {
            a(b2, (int) (b2.f172d.b(c2) * (-1.0f)), i3);
        }
        a(b2);
    }

    void a(b bVar, int i2, int i3) {
        bVar.a(a(i3, (String) null), i2);
    }

    public i a(int i2, String str) {
        f fVar = q;
        if (fVar != null) {
            fVar.f200l++;
        }
        if (this.f185i + 1 >= this.f181e) {
            i();
        }
        i a2 = a(i.a.ERROR, str);
        this.f177a++;
        this.f185i++;
        int i3 = this.f177a;
        a2.f205b = i3;
        a2.f207d = i2;
        this.f188l.f176c[i3] = a2;
        this.f179c.a(a2);
        return a2;
    }

    public void b(i iVar, i iVar2, int i2, int i3) {
        b b2 = b();
        i c2 = c();
        c2.f207d = 0;
        b2.a(iVar, iVar2, c2, i2);
        if (i3 != 6) {
            a(b2, (int) (b2.f172d.b(c2) * (-1.0f)), i3);
        }
        a(b2);
    }

    private i a(i.a aVar, String str) {
        i a2 = this.f188l.f175b.a();
        if (a2 == null) {
            a2 = new i(aVar, str);
            a2.a(aVar, str);
        } else {
            a2.a();
            a2.a(aVar, str);
        }
        int i2 = this.n;
        int i3 = p;
        if (i2 >= i3) {
            p = i3 * 2;
            this.m = (i[]) Arrays.copyOf(this.m, p);
        }
        i[] iVarArr = this.m;
        int i4 = this.n;
        this.n = i4 + 1;
        iVarArr[i4] = a2;
        return a2;
    }

    public void b(i iVar, i iVar2, boolean z) {
        b b2 = b();
        i c2 = c();
        c2.f207d = 0;
        b2.b(iVar, iVar2, c2, 0);
        if (z) {
            a(b2, (int) (b2.f172d.b(c2) * (-1.0f)), 1);
        }
        a(b2);
    }

    void a(a aVar) {
        f fVar = q;
        if (fVar != null) {
            fVar.s++;
            fVar.t = Math.max(fVar.t, this.f185i);
            f fVar2 = q;
            fVar2.u = Math.max(fVar2.u, this.f186j);
        }
        d((b) aVar);
        b(aVar);
        a(aVar, false);
        g();
    }

    public void a(b bVar) {
        i c2;
        if (bVar == null) {
            return;
        }
        f fVar = q;
        if (fVar != null) {
            fVar.f194f++;
            if (bVar.f173e) {
                fVar.f195g++;
            }
        }
        if (this.f186j + 1 >= this.f187k || this.f185i + 1 >= this.f181e) {
            i();
        }
        boolean z = false;
        if (!bVar.f173e) {
            d(bVar);
            if (bVar.c()) {
                return;
            }
            bVar.a();
            if (bVar.a(this)) {
                i a2 = a();
                bVar.f169a = a2;
                c(bVar);
                this.o.a(bVar);
                a(this.o, true);
                if (a2.f206c == -1) {
                    if (bVar.f169a == a2 && (c2 = bVar.c(a2)) != null) {
                        f fVar2 = q;
                        if (fVar2 != null) {
                            fVar2.f198j++;
                        }
                        bVar.d(c2);
                    }
                    if (!bVar.f173e) {
                        bVar.f169a.c(bVar);
                    }
                    this.f186j--;
                }
                z = true;
            }
            if (!bVar.b()) {
                return;
            }
        }
        if (z) {
            return;
        }
        c(bVar);
    }

    private final int a(a aVar, boolean z) {
        f fVar = q;
        if (fVar != null) {
            fVar.f196h++;
        }
        for (int i2 = 0; i2 < this.f185i; i2++) {
            this.f184h[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            f fVar2 = q;
            if (fVar2 != null) {
                fVar2.f197i++;
            }
            i3++;
            if (i3 >= this.f185i * 2) {
                return i3;
            }
            if (aVar.getKey() != null) {
                this.f184h[aVar.getKey().f205b] = true;
            }
            i a2 = aVar.a(this, this.f184h);
            if (a2 != null) {
                boolean[] zArr = this.f184h;
                int i4 = a2.f205b;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (a2 != null) {
                int i5 = -1;
                float f2 = Float.MAX_VALUE;
                for (int i6 = 0; i6 < this.f186j; i6++) {
                    b bVar = this.f182f[i6];
                    if (bVar.f169a.f210g != i.a.UNRESTRICTED && !bVar.f173e && bVar.b(a2)) {
                        float b2 = bVar.f172d.b(a2);
                        if (b2 < 0.0f) {
                            float f3 = (-bVar.f170b) / b2;
                            if (f3 < f2) {
                                i5 = i6;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    b bVar2 = this.f182f[i5];
                    bVar2.f169a.f206c = -1;
                    f fVar3 = q;
                    if (fVar3 != null) {
                        fVar3.f198j++;
                    }
                    bVar2.d(a2);
                    i iVar = bVar2.f169a;
                    iVar.f206c = i5;
                    iVar.c(bVar2);
                }
            }
            z2 = true;
        }
        return i3;
    }

    public void a(i iVar, i iVar2, boolean z) {
        b b2 = b();
        i c2 = c();
        c2.f207d = 0;
        b2.a(iVar, iVar2, c2, 0);
        if (z) {
            a(b2, (int) (b2.f172d.b(c2) * (-1.0f)), 1);
        }
        a(b2);
    }

    public void a(i iVar, i iVar2, int i2, float f2, i iVar3, i iVar4, int i3, int i4) {
        b b2 = b();
        b2.a(iVar, iVar2, i2, f2, iVar3, iVar4, i3);
        if (i4 != 6) {
            b2.a(this, i4);
        }
        a(b2);
    }

    public void a(i iVar, i iVar2, i iVar3, i iVar4, float f2, int i2) {
        b b2 = b();
        b2.a(iVar, iVar2, iVar3, iVar4, f2);
        if (i2 != 6) {
            b2.a(this, i2);
        }
        a(b2);
    }

    public b a(i iVar, i iVar2, int i2, int i3) {
        b b2 = b();
        b2.a(iVar, iVar2, i2);
        if (i3 != 6) {
            b2.a(this, i3);
        }
        a(b2);
        return b2;
    }

    public void a(i iVar, int i2) {
        int i3 = iVar.f206c;
        if (i3 != -1) {
            b bVar = this.f182f[i3];
            if (bVar.f173e) {
                bVar.f170b = i2;
                return;
            }
            if (bVar.f172d.f158a == 0) {
                bVar.f173e = true;
                bVar.f170b = i2;
                return;
            } else {
                b b2 = b();
                b2.c(iVar, i2);
                a(b2);
                return;
            }
        }
        b b3 = b();
        b3.b(iVar, i2);
        a(b3);
    }

    public static b a(e eVar, i iVar, i iVar2, i iVar3, float f2, boolean z) {
        b b2 = eVar.b();
        if (z) {
            eVar.b(b2);
        }
        b2.a(iVar, iVar2, iVar3, f2);
        return b2;
    }

    public void a(a.g.a.j.f fVar, a.g.a.j.f fVar2, float f2, int i2) {
        i a2 = a(fVar.a(e.d.LEFT));
        i a3 = a(fVar.a(e.d.TOP));
        i a4 = a(fVar.a(e.d.RIGHT));
        i a5 = a(fVar.a(e.d.BOTTOM));
        i a6 = a(fVar2.a(e.d.LEFT));
        i a7 = a(fVar2.a(e.d.TOP));
        i a8 = a(fVar2.a(e.d.RIGHT));
        i a9 = a(fVar2.a(e.d.BOTTOM));
        b b2 = b();
        double d2 = f2;
        double sin = Math.sin(d2);
        double d3 = i2;
        Double.isNaN(d3);
        b2.b(a3, a5, a7, a9, (float) (sin * d3));
        a(b2);
        b b3 = b();
        double cos = Math.cos(d2);
        Double.isNaN(d3);
        b3.b(a2, a4, a6, a8, (float) (cos * d3));
        a(b3);
    }
}
