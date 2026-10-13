package e.f.b.a;

import javax.annotation.Nullable;

/* compiled from: NoOpCacheEventListener.java */
/* loaded from: classes.dex */
public class h implements c {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private static h f17129a;

    private h() {
    }

    public static synchronized h a() {
        h hVar;
        synchronized (h.class) {
            if (f17129a == null) {
                f17129a = new h();
            }
            hVar = f17129a;
        }
        return hVar;
    }

    @Override // e.f.b.a.c
    public void a(b bVar) {
    }

    @Override // e.f.b.a.c
    public void b(b bVar) {
    }

    @Override // e.f.b.a.c
    public void c(b bVar) {
    }

    @Override // e.f.b.a.c
    public void d(b bVar) {
    }

    @Override // e.f.b.a.c
    public void e(b bVar) {
    }

    @Override // e.f.b.a.c
    public void f(b bVar) {
    }

    @Override // e.f.b.a.c
    public void g(b bVar) {
    }
}
