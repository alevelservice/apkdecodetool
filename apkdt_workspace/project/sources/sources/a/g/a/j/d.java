package a.g.a.j;

import a.g.a.j.f;
import java.util.ArrayList;

/* compiled from: ChainHead.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    protected f f215a;

    /* renamed from: b, reason: collision with root package name */
    protected f f216b;

    /* renamed from: c, reason: collision with root package name */
    protected f f217c;

    /* renamed from: d, reason: collision with root package name */
    protected f f218d;

    /* renamed from: e, reason: collision with root package name */
    protected f f219e;

    /* renamed from: f, reason: collision with root package name */
    protected f f220f;

    /* renamed from: g, reason: collision with root package name */
    protected f f221g;

    /* renamed from: h, reason: collision with root package name */
    protected ArrayList<f> f222h;

    /* renamed from: i, reason: collision with root package name */
    protected int f223i;

    /* renamed from: j, reason: collision with root package name */
    protected int f224j;

    /* renamed from: k, reason: collision with root package name */
    protected float f225k = 0.0f;

    /* renamed from: l, reason: collision with root package name */
    private int f226l;
    private boolean m;
    protected boolean n;
    protected boolean o;
    protected boolean p;
    private boolean q;

    public d(f fVar, int i2, boolean z) {
        this.m = false;
        this.f215a = fVar;
        this.f226l = i2;
        this.m = z;
    }

    private static boolean a(f fVar, int i2) {
        if (fVar.r() != 8 && fVar.C[i2] == f.b.MATCH_CONSTRAINT) {
            int[] iArr = fVar.f246g;
            if (iArr[i2] == 0 || iArr[i2] == 3) {
                return true;
            }
        }
        return false;
    }

    private void b() {
        int i2 = this.f226l * 2;
        boolean z = false;
        f fVar = this.f215a;
        f fVar2 = fVar;
        boolean z2 = false;
        while (!z2) {
            this.f223i++;
            f[] fVarArr = fVar.i0;
            int i3 = this.f226l;
            f fVar3 = null;
            fVarArr[i3] = null;
            fVar.h0[i3] = null;
            if (fVar.r() != 8) {
                if (this.f216b == null) {
                    this.f216b = fVar;
                }
                this.f218d = fVar;
                f.b[] bVarArr = fVar.C;
                int i4 = this.f226l;
                if (bVarArr[i4] == f.b.MATCH_CONSTRAINT) {
                    int[] iArr = fVar.f246g;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f224j++;
                        float[] fArr = fVar.g0;
                        int i5 = this.f226l;
                        float f2 = fArr[i5];
                        if (f2 > 0.0f) {
                            this.f225k += fArr[i5];
                        }
                        if (a(fVar, this.f226l)) {
                            if (f2 < 0.0f) {
                                this.n = true;
                            } else {
                                this.o = true;
                            }
                            if (this.f222h == null) {
                                this.f222h = new ArrayList<>();
                            }
                            this.f222h.add(fVar);
                        }
                        if (this.f220f == null) {
                            this.f220f = fVar;
                        }
                        f fVar4 = this.f221g;
                        if (fVar4 != null) {
                            fVar4.h0[this.f226l] = fVar;
                        }
                        this.f221g = fVar;
                    }
                }
            }
            if (fVar2 != fVar) {
                fVar2.i0[this.f226l] = fVar;
            }
            e eVar = fVar.A[i2 + 1].f230d;
            if (eVar != null) {
                f fVar5 = eVar.f228b;
                e[] eVarArr = fVar5.A;
                if (eVarArr[i2].f230d != null && eVarArr[i2].f230d.f228b == fVar) {
                    fVar3 = fVar5;
                }
            }
            if (fVar3 == null) {
                fVar3 = fVar;
                z2 = true;
            }
            fVar2 = fVar;
            fVar = fVar3;
        }
        this.f217c = fVar;
        if (this.f226l == 0 && this.m) {
            this.f219e = this.f217c;
        } else {
            this.f219e = this.f215a;
        }
        if (this.o && this.n) {
            z = true;
        }
        this.p = z;
    }

    public void a() {
        if (!this.q) {
            b();
        }
        this.q = true;
    }
}
