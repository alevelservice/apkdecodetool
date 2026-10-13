package a.g.a.j;

/* compiled from: ResolutionDimension.java */
/* loaded from: classes.dex */
public class n extends o {

    /* renamed from: c, reason: collision with root package name */
    float f278c = 0.0f;

    public void a(int i2) {
        if (this.f280b == 0 || this.f278c != i2) {
            this.f278c = i2;
            if (this.f280b == 1) {
                b();
            }
            a();
        }
    }

    @Override // a.g.a.j.o
    public void d() {
        super.d();
        this.f278c = 0.0f;
    }

    public void f() {
        this.f280b = 2;
    }
}
