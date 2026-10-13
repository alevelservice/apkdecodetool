package e.f.i.c;

/* compiled from: EncodedCountingMemoryCacheFactory.java */
/* loaded from: classes.dex */
public class l {

    /* compiled from: EncodedCountingMemoryCacheFactory.java */
    /* loaded from: classes.dex */
    static class a implements v<e.f.c.f.g> {
        a() {
        }

        @Override // e.f.i.c.v
        public int a(e.f.c.f.g gVar) {
            return gVar.size();
        }
    }

    public static h<e.f.b.a.d, e.f.c.f.g> a(com.facebook.common.internal.j<q> jVar, e.f.c.f.c cVar) {
        h<e.f.b.a.d, e.f.c.f.g> hVar = new h<>(new a(), new s(), jVar);
        cVar.a(hVar);
        return hVar;
    }
}
