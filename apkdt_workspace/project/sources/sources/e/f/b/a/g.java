package e.f.b.a;

import e.f.b.a.a;
import javax.annotation.Nullable;

/* compiled from: NoOpCacheErrorLogger.java */
/* loaded from: classes.dex */
public class g implements a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private static g f17128a;

    private g() {
    }

    public static synchronized g a() {
        g gVar;
        synchronized (g.class) {
            if (f17128a == null) {
                f17128a = new g();
            }
            gVar = f17128a;
        }
        return gVar;
    }

    @Override // e.f.b.a.a
    public void a(a.EnumC0181a enumC0181a, Class<?> cls, String str, @Nullable Throwable th) {
    }
}
