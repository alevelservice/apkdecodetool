package e.f.i.c;

import e.f.i.c.h;

/* compiled from: BitmapCountingMemoryCacheFactory.java */
/* loaded from: classes.dex */
public class a {

    /* compiled from: BitmapCountingMemoryCacheFactory.java */
    /* renamed from: e.f.i.c.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0194a implements v<e.f.i.g.c> {
        C0194a() {
        }

        @Override // e.f.i.c.v
        public int a(e.f.i.g.c cVar) {
            return cVar.j();
        }
    }

    public static h<e.f.b.a.d, e.f.i.g.c> a(com.facebook.common.internal.j<q> jVar, e.f.c.f.c cVar, h.c cVar2) {
        h<e.f.b.a.d, e.f.i.g.c> hVar = new h<>(new C0194a(), cVar2, jVar);
        cVar.a(hVar);
        return hVar;
    }
}
