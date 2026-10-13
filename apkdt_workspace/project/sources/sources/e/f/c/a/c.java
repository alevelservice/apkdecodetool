package e.f.c.a;

import javax.annotation.Nullable;

/* compiled from: NoOpDiskTrimmableRegistry.java */
/* loaded from: classes.dex */
public class c implements b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private static c f17131a;

    private c() {
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (f17131a == null) {
                f17131a = new c();
            }
            cVar = f17131a;
        }
        return cVar;
    }

    @Override // e.f.c.a.b
    public void a(a aVar) {
    }
}
