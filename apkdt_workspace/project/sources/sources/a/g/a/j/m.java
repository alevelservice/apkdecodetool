package a.g.a.j;

import a.g.a.j.e;

/* compiled from: ResolutionAnchor.java */
/* loaded from: classes.dex */
public class m extends o {

    /* renamed from: c, reason: collision with root package name */
    e f268c;

    /* renamed from: d, reason: collision with root package name */
    m f269d;

    /* renamed from: e, reason: collision with root package name */
    float f270e;

    /* renamed from: f, reason: collision with root package name */
    m f271f;

    /* renamed from: g, reason: collision with root package name */
    float f272g;

    /* renamed from: i, reason: collision with root package name */
    private m f274i;

    /* renamed from: h, reason: collision with root package name */
    int f273h = 0;

    /* renamed from: j, reason: collision with root package name */
    private n f275j = null;

    /* renamed from: k, reason: collision with root package name */
    private int f276k = 1;

    /* renamed from: l, reason: collision with root package name */
    private n f277l = null;
    private int m = 1;

    public m(e eVar) {
        this.f268c = eVar;
    }

    String a(int i2) {
        return i2 == 1 ? "DIRECT" : i2 == 2 ? "CENTER" : i2 == 3 ? "MATCH" : i2 == 4 ? "CHAIN" : i2 == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void a(m mVar, float f2) {
        if (this.f280b == 0 || !(this.f271f == mVar || this.f272g == f2)) {
            this.f271f = mVar;
            this.f272g = f2;
            if (this.f280b == 1) {
                b();
            }
            a();
        }
    }

    public void b(int i2) {
        this.f273h = i2;
    }

    @Override // a.g.a.j.o
    public void d() {
        super.d();
        this.f269d = null;
        this.f270e = 0.0f;
        this.f275j = null;
        this.f276k = 1;
        this.f277l = null;
        this.m = 1;
        this.f271f = null;
        this.f272g = 0.0f;
        this.f274i = null;
        this.f273h = 0;
    }

    @Override // a.g.a.j.o
    public void e() {
        m mVar;
        m mVar2;
        m mVar3;
        m mVar4;
        m mVar5;
        m mVar6;
        float f2;
        float f3;
        float s;
        float f4;
        m mVar7;
        boolean z = true;
        if (this.f280b == 1 || this.f273h == 4) {
            return;
        }
        n nVar = this.f275j;
        if (nVar != null) {
            if (nVar.f280b != 1) {
                return;
            } else {
                this.f270e = this.f276k * nVar.f278c;
            }
        }
        n nVar2 = this.f277l;
        if (nVar2 != null) {
            if (nVar2.f280b != 1) {
                return;
            } else {
                float f5 = nVar2.f278c;
            }
        }
        if (this.f273h == 1 && ((mVar7 = this.f269d) == null || mVar7.f280b == 1)) {
            m mVar8 = this.f269d;
            if (mVar8 == null) {
                this.f271f = this;
                this.f272g = this.f270e;
            } else {
                this.f271f = mVar8.f271f;
                this.f272g = mVar8.f272g + this.f270e;
            }
            a();
            return;
        }
        if (this.f273h == 2 && (mVar4 = this.f269d) != null && mVar4.f280b == 1 && (mVar5 = this.f274i) != null && (mVar6 = mVar5.f269d) != null && mVar6.f280b == 1) {
            if (a.g.a.e.h() != null) {
                a.g.a.e.h().v++;
            }
            this.f271f = this.f269d.f271f;
            m mVar9 = this.f274i;
            mVar9.f271f = mVar9.f269d.f271f;
            e.d dVar = this.f268c.f229c;
            int i2 = 0;
            if (dVar != e.d.RIGHT && dVar != e.d.BOTTOM) {
                z = false;
            }
            if (z) {
                f2 = this.f269d.f272g;
                f3 = this.f274i.f269d.f272g;
            } else {
                f2 = this.f274i.f269d.f272g;
                f3 = this.f269d.f272g;
            }
            float f6 = f2 - f3;
            e.d dVar2 = this.f268c.f229c;
            if (dVar2 != e.d.LEFT && dVar2 != e.d.RIGHT) {
                s = f6 - r2.f228b.i();
                f4 = this.f268c.f228b.W;
            } else {
                s = f6 - this.f268c.f228b.s();
                f4 = this.f268c.f228b.V;
            }
            int b2 = this.f268c.b();
            int b3 = this.f274i.f268c.b();
            if (this.f268c.g() == this.f274i.f268c.g()) {
                f4 = 0.5f;
                b3 = 0;
            } else {
                i2 = b2;
            }
            float f7 = i2;
            float f8 = b3;
            float f9 = (s - f7) - f8;
            if (z) {
                m mVar10 = this.f274i;
                mVar10.f272g = mVar10.f269d.f272g + f8 + (f9 * f4);
                this.f272g = (this.f269d.f272g - f7) - (f9 * (1.0f - f4));
            } else {
                this.f272g = this.f269d.f272g + f7 + (f9 * f4);
                m mVar11 = this.f274i;
                mVar11.f272g = (mVar11.f269d.f272g - f8) - (f9 * (1.0f - f4));
            }
            a();
            this.f274i.a();
            return;
        }
        if (this.f273h == 3 && (mVar = this.f269d) != null && mVar.f280b == 1 && (mVar2 = this.f274i) != null && (mVar3 = mVar2.f269d) != null && mVar3.f280b == 1) {
            if (a.g.a.e.h() != null) {
                a.g.a.e.h().w++;
            }
            m mVar12 = this.f269d;
            this.f271f = mVar12.f271f;
            m mVar13 = this.f274i;
            m mVar14 = mVar13.f269d;
            mVar13.f271f = mVar14.f271f;
            this.f272g = mVar12.f272g + this.f270e;
            mVar13.f272g = mVar14.f272g + mVar13.f270e;
            a();
            this.f274i.a();
            return;
        }
        if (this.f273h == 5) {
            this.f268c.f228b.G();
        }
    }

    public float f() {
        return this.f272g;
    }

    public void g() {
        e g2 = this.f268c.g();
        if (g2 == null) {
            return;
        }
        if (g2.g() == this.f268c) {
            this.f273h = 4;
            g2.d().f273h = 4;
        }
        int b2 = this.f268c.b();
        e.d dVar = this.f268c.f229c;
        if (dVar == e.d.RIGHT || dVar == e.d.BOTTOM) {
            b2 = -b2;
        }
        a(g2.d(), b2);
    }

    public String toString() {
        if (this.f280b == 1) {
            if (this.f271f == this) {
                return "[" + this.f268c + ", RESOLVED: " + this.f272g + "]  type: " + a(this.f273h);
            }
            return "[" + this.f268c + ", RESOLVED: " + this.f271f + ":" + this.f272g + "] type: " + a(this.f273h);
        }
        return "{ " + this.f268c + " UNRESOLVED} type: " + a(this.f273h);
    }

    public void b(m mVar, float f2) {
        this.f274i = mVar;
    }

    public void b(m mVar, int i2, n nVar) {
        this.f274i = mVar;
        this.f277l = nVar;
        this.m = i2;
    }

    public void a(int i2, m mVar, int i3) {
        this.f273h = i2;
        this.f269d = mVar;
        this.f270e = i3;
        this.f269d.a(this);
    }

    public void a(m mVar, int i2) {
        this.f269d = mVar;
        this.f270e = i2;
        this.f269d.a(this);
    }

    public void a(m mVar, int i2, n nVar) {
        this.f269d = mVar;
        this.f269d.a(this);
        this.f275j = nVar;
        this.f276k = i2;
        this.f275j.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a.g.a.e eVar) {
        a.g.a.i e2 = this.f268c.e();
        m mVar = this.f271f;
        if (mVar == null) {
            eVar.a(e2, (int) (this.f272g + 0.5f));
        } else {
            eVar.a(e2, eVar.a(mVar.f268c), (int) (this.f272g + 0.5f), 6);
        }
    }
}
