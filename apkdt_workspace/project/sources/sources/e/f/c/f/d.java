package e.f.c.f;

/* compiled from: NoOpMemoryTrimmableRegistry.java */
/* loaded from: classes.dex */
public class d implements c {

    /* renamed from: a, reason: collision with root package name */
    private static d f17153a;

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f17153a == null) {
                f17153a = new d();
            }
            dVar = f17153a;
        }
        return dVar;
    }

    @Override // e.f.c.f.c
    public void a(b bVar) {
    }
}
