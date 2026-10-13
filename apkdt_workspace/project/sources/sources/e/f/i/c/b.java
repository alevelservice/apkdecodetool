package e.f.i.c;

/* compiled from: BitmapMemoryCacheFactory.java */
/* loaded from: classes.dex */
public class b {

    /* compiled from: BitmapMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    static class a implements r<e.f.b.a.d> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f17520a;

        a(n nVar) {
            this.f17520a = nVar;
        }

        @Override // e.f.i.c.r
        public void b() {
            this.f17520a.g();
        }

        @Override // e.f.i.c.r
        public void a(e.f.b.a.d dVar) {
            this.f17520a.a(dVar);
        }

        @Override // e.f.i.c.r
        public void a() {
            this.f17520a.d();
        }
    }

    public static o<e.f.b.a.d, e.f.i.g.c> a(h<e.f.b.a.d, e.f.i.g.c> hVar, n nVar) {
        nVar.a(hVar);
        return new o<>(hVar, new a(nVar));
    }
}
