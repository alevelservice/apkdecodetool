package e.f.i.c;

import android.net.Uri;
import javax.annotation.Nullable;

/* compiled from: DefaultCacheKeyFactory.java */
/* loaded from: classes.dex */
public class j implements f {

    /* renamed from: a, reason: collision with root package name */
    private static j f17565a;

    protected j() {
    }

    public static synchronized j a() {
        j jVar;
        synchronized (j.class) {
            if (f17565a == null) {
                f17565a = new j();
            }
            jVar = f17565a;
        }
        return jVar;
    }

    protected Uri a(Uri uri) {
        return uri;
    }

    @Override // e.f.i.c.f
    public e.f.b.a.d b(e.f.i.i.b bVar, Object obj) {
        e.f.b.a.d dVar;
        String str;
        e.f.i.i.d f2 = bVar.f();
        if (f2 != null) {
            e.f.b.a.d a2 = f2.a();
            str = f2.getClass().getName();
            dVar = a2;
        } else {
            dVar = null;
            str = null;
        }
        Uri p = bVar.p();
        a(p);
        return new c(p.toString(), bVar.l(), bVar.n(), bVar.c(), dVar, str, obj);
    }

    @Override // e.f.i.c.f
    public e.f.b.a.d c(e.f.i.i.b bVar, @Nullable Object obj) {
        return a(bVar, bVar.p(), obj);
    }

    @Override // e.f.i.c.f
    public e.f.b.a.d a(e.f.i.i.b bVar, Object obj) {
        Uri p = bVar.p();
        a(p);
        return new c(p.toString(), bVar.l(), bVar.n(), bVar.c(), null, null, obj);
    }

    @Override // e.f.i.c.f
    public e.f.b.a.d a(e.f.i.i.b bVar, Uri uri, @Nullable Object obj) {
        a(uri);
        return new e.f.b.a.i(uri.toString());
    }
}
