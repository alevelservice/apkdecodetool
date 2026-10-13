package a.g.a;

import a.g.a.e;
import a.g.a.i;

/* compiled from: ArrayRow.java */
/* loaded from: classes.dex */
public class b implements e.a {

    /* renamed from: c, reason: collision with root package name */
    boolean f171c;

    /* renamed from: d, reason: collision with root package name */
    public final a f172d;

    /* renamed from: a, reason: collision with root package name */
    i f169a = null;

    /* renamed from: b, reason: collision with root package name */
    float f170b = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    boolean f173e = false;

    public b(c cVar) {
        this.f172d = new a(this, cVar);
    }

    public b a(i iVar, i iVar2, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f170b = i2;
        }
        if (!z) {
            this.f172d.a(iVar, -1.0f);
            this.f172d.a(iVar2, 1.0f);
        } else {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        i iVar = this.f169a;
        return iVar != null && (iVar.f210g == i.a.UNRESTRICTED || this.f170b >= 0.0f);
    }

    public b c(i iVar, int i2) {
        if (i2 < 0) {
            this.f170b = i2 * (-1);
            this.f172d.a(iVar, 1.0f);
        } else {
            this.f170b = i2;
            this.f172d.a(iVar, -1.0f);
        }
        return this;
    }

    @Override // a.g.a.e.a
    public void clear() {
        this.f172d.a();
        this.f169a = null;
        this.f170b = 0.0f;
    }

    public void d() {
        this.f169a = null;
        this.f172d.a();
        this.f170b = 0.0f;
        this.f173e = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String e() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.g.a.b.e():java.lang.String");
    }

    @Override // a.g.a.e.a
    public i getKey() {
        return this.f169a;
    }

    public String toString() {
        return e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(i iVar) {
        return this.f172d.a(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b b(i iVar, int i2) {
        this.f169a = iVar;
        float f2 = i2;
        iVar.f208e = f2;
        this.f170b = f2;
        this.f173e = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i c(i iVar) {
        return this.f172d.a((boolean[]) null, iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(i iVar) {
        i iVar2 = this.f169a;
        if (iVar2 != null) {
            this.f172d.a(iVar2, -1.0f);
            this.f169a = null;
        }
        float a2 = this.f172d.a(iVar, true) * (-1.0f);
        this.f169a = iVar;
        if (a2 == 1.0f) {
            return;
        }
        this.f170b /= a2;
        this.f172d.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(i iVar, int i2) {
        this.f172d.a(iVar, i2);
        return this;
    }

    public boolean c() {
        return this.f169a == null && this.f170b == 0.0f && this.f172d.f158a == 0;
    }

    public b a(i iVar, i iVar2, i iVar3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f170b = i2;
        }
        if (!z) {
            this.f172d.a(iVar, -1.0f);
            this.f172d.a(iVar2, 1.0f);
            this.f172d.a(iVar3, 1.0f);
        } else {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
            this.f172d.a(iVar3, -1.0f);
        }
        return this;
    }

    public b b(i iVar, i iVar2, i iVar3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f170b = i2;
        }
        if (!z) {
            this.f172d.a(iVar, -1.0f);
            this.f172d.a(iVar2, 1.0f);
            this.f172d.a(iVar3, -1.0f);
        } else {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
            this.f172d.a(iVar3, 1.0f);
        }
        return this;
    }

    public b a(float f2, float f3, float f4, i iVar, i iVar2, i iVar3, i iVar4) {
        this.f170b = 0.0f;
        if (f3 == 0.0f || f2 == f4) {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
            this.f172d.a(iVar4, 1.0f);
            this.f172d.a(iVar3, -1.0f);
        } else if (f2 == 0.0f) {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
        } else if (f4 == 0.0f) {
            this.f172d.a(iVar3, 1.0f);
            this.f172d.a(iVar4, -1.0f);
        } else {
            float f5 = (f2 / f3) / (f4 / f3);
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
            this.f172d.a(iVar4, f5);
            this.f172d.a(iVar3, -f5);
        }
        return this;
    }

    public b b(i iVar, i iVar2, i iVar3, i iVar4, float f2) {
        this.f172d.a(iVar3, 0.5f);
        this.f172d.a(iVar4, 0.5f);
        this.f172d.a(iVar, -0.5f);
        this.f172d.a(iVar2, -0.5f);
        this.f170b = -f2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(i iVar, i iVar2, int i2, float f2, i iVar3, i iVar4, int i3) {
        if (iVar2 == iVar3) {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar4, 1.0f);
            this.f172d.a(iVar2, -2.0f);
            return this;
        }
        if (f2 == 0.5f) {
            this.f172d.a(iVar, 1.0f);
            this.f172d.a(iVar2, -1.0f);
            this.f172d.a(iVar3, -1.0f);
            this.f172d.a(iVar4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                this.f170b = (-i2) + i3;
            }
        } else if (f2 <= 0.0f) {
            this.f172d.a(iVar, -1.0f);
            this.f172d.a(iVar2, 1.0f);
            this.f170b = i2;
        } else if (f2 >= 1.0f) {
            this.f172d.a(iVar3, -1.0f);
            this.f172d.a(iVar4, 1.0f);
            this.f170b = i3;
        } else {
            float f3 = 1.0f - f2;
            this.f172d.a(iVar, f3 * 1.0f);
            this.f172d.a(iVar2, f3 * (-1.0f));
            this.f172d.a(iVar3, (-1.0f) * f2);
            this.f172d.a(iVar4, 1.0f * f2);
            if (i2 > 0 || i3 > 0) {
                this.f170b = ((-i2) * f3) + (i3 * f2);
            }
        }
        return this;
    }

    public b a(e eVar, int i2) {
        this.f172d.a(eVar.a(i2, "ep"), 1.0f);
        this.f172d.a(eVar.a(i2, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(i iVar, i iVar2, i iVar3, float f2) {
        this.f172d.a(iVar, -1.0f);
        this.f172d.a(iVar2, 1.0f - f2);
        this.f172d.a(iVar3, f2);
        return this;
    }

    public b a(i iVar, i iVar2, i iVar3, i iVar4, float f2) {
        this.f172d.a(iVar, -1.0f);
        this.f172d.a(iVar2, 1.0f);
        this.f172d.a(iVar3, f2);
        this.f172d.a(iVar4, -f2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        float f2 = this.f170b;
        if (f2 < 0.0f) {
            this.f170b = f2 * (-1.0f);
            this.f172d.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(e eVar) {
        boolean z;
        i a2 = this.f172d.a(eVar);
        if (a2 == null) {
            z = true;
        } else {
            d(a2);
            z = false;
        }
        if (this.f172d.f158a == 0) {
            this.f173e = true;
        }
        return z;
    }

    @Override // a.g.a.e.a
    public i a(e eVar, boolean[] zArr) {
        return this.f172d.a(zArr, (i) null);
    }

    @Override // a.g.a.e.a
    public void a(e.a aVar) {
        if (!(aVar instanceof b)) {
            return;
        }
        b bVar = (b) aVar;
        this.f169a = null;
        this.f172d.a();
        int i2 = 0;
        while (true) {
            a aVar2 = bVar.f172d;
            if (i2 >= aVar2.f158a) {
                return;
            }
            this.f172d.a(aVar2.a(i2), bVar.f172d.b(i2), true);
            i2++;
        }
    }

    @Override // a.g.a.e.a
    public void a(i iVar) {
        int i2 = iVar.f207d;
        float f2 = 1.0f;
        if (i2 != 1) {
            if (i2 == 2) {
                f2 = 1000.0f;
            } else if (i2 == 3) {
                f2 = 1000000.0f;
            } else if (i2 == 4) {
                f2 = 1.0E9f;
            } else if (i2 == 5) {
                f2 = 1.0E12f;
            }
        }
        this.f172d.a(iVar, f2);
    }
}
