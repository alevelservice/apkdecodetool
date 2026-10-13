package e.o.a;

import java.util.Iterator;
import java.util.List;

/* compiled from: InterceptorManager.java */
/* loaded from: classes2.dex */
public class b implements f {

    /* renamed from: a, reason: collision with root package name */
    private List<f> f18180a;

    /* compiled from: InterceptorManager.java */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        static final b f18181a = new b();
    }

    public static b a() {
        return a.f18181a;
    }

    private b() {
    }

    @Override // e.o.a.f
    public void a(d dVar, e eVar) {
        List<f> list = this.f18180a;
        if (list != null) {
            Iterator<f> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(dVar, eVar);
            }
        }
    }

    @Override // e.o.a.f
    public void a(d dVar) {
        List<f> list = this.f18180a;
        if (list != null) {
            Iterator<f> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(dVar);
            }
        }
    }
}
