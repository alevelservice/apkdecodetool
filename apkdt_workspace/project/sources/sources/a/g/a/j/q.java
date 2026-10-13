package a.g.a.j;

import java.util.ArrayList;

/* compiled from: WidgetContainer.java */
/* loaded from: classes.dex */
public class q extends f {
    protected ArrayList<f> k0 = new ArrayList<>();

    @Override // a.g.a.j.f
    public void D() {
        this.k0.clear();
        super.D();
    }

    @Override // a.g.a.j.f
    public void H() {
        super.H();
        ArrayList<f> arrayList = this.k0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.k0.get(i2);
            fVar.b(g(), h());
            if (!(fVar instanceof g)) {
                fVar.H();
            }
        }
    }

    public g J() {
        f k2 = k();
        g gVar = this instanceof g ? (g) this : null;
        while (k2 != null) {
            f k3 = k2.k();
            if (k2 instanceof g) {
                gVar = (g) k2;
            }
            k2 = k3;
        }
        return gVar;
    }

    public void K() {
        H();
        ArrayList<f> arrayList = this.k0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.k0.get(i2);
            if (fVar instanceof q) {
                ((q) fVar).K();
            }
        }
    }

    public void L() {
        this.k0.clear();
    }

    @Override // a.g.a.j.f
    public void a(a.g.a.c cVar) {
        super.a(cVar);
        int size = this.k0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.k0.get(i2).a(cVar);
        }
    }

    public void b(f fVar) {
        this.k0.add(fVar);
        if (fVar.k() != null) {
            ((q) fVar.k()).c(fVar);
        }
        fVar.a((f) this);
    }

    public void c(f fVar) {
        this.k0.remove(fVar);
        fVar.a((f) null);
    }

    @Override // a.g.a.j.f
    public void b(int i2, int i3) {
        super.b(i2, i3);
        int size = this.k0.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.k0.get(i4).b(o(), p());
        }
    }
}
