package e.f.i.c;

/* compiled from: EncodedMemoryCacheFactory.java */
/* loaded from: classes.dex */
public class m {

    /* compiled from: EncodedMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    static class a implements r<e.f.b.a.d> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f17566a;

        a(n nVar) {
            this.f17566a = nVar;
        }

        @Override // e.f.i.c.r
        public void b() {
            this.f17566a.f();
        }

        @Override // e.f.i.c.r
        public void a(e.f.b.a.d dVar) {
            this.f17566a.c(dVar);
        }

        @Override // e.f.i.c.r
        public void a() {
            this.f17566a.a();
        }
    }

    public static o<e.f.b.a.d, e.f.c.f.g> a(h<e.f.b.a.d, e.f.c.f.g> hVar, n nVar) {
        nVar.b(hVar);
        return new o<>(hVar, new a(nVar));
    }
}
