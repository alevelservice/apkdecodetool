package e.n.a.f;

import g.a.c.a.j;
import g.a.c.a.k;

/* compiled from: MethodCallOperation.java */
/* loaded from: classes2.dex */
public class e extends e.n.a.f.a {

    /* renamed from: a, reason: collision with root package name */
    final j f18177a;

    /* renamed from: b, reason: collision with root package name */
    final a f18178b;

    /* compiled from: MethodCallOperation.java */
    /* loaded from: classes2.dex */
    class a implements g {

        /* renamed from: a, reason: collision with root package name */
        final k.d f18179a;

        a(e eVar, k.d dVar) {
            this.f18179a = dVar;
        }

        @Override // e.n.a.f.g
        public void a(Object obj) {
            this.f18179a.a(obj);
        }

        @Override // e.n.a.f.g
        public void a(String str, String str2, Object obj) {
            this.f18179a.a(str, str2, obj);
        }
    }

    public e(j jVar, k.d dVar) {
        this.f18177a = jVar;
        this.f18178b = new a(this, dVar);
    }

    @Override // e.n.a.f.f
    public <T> T a(String str) {
        return (T) this.f18177a.a(str);
    }

    @Override // e.n.a.f.a
    public g e() {
        return this.f18178b;
    }
}
