package e.f.i.d;

import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.o0;
import e.f.i.h.c;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: CloseableProducerToDataSourceAdapter.java */
@ThreadSafe
/* loaded from: classes.dex */
public class b<T> extends a<e.f.c.g.a<T>> {
    private b(i0<e.f.c.g.a<T>> i0Var, o0 o0Var, c cVar) {
        super(i0Var, o0Var, cVar);
    }

    @Override // e.f.d.a, e.f.d.c
    @Nullable
    public e.f.c.g.a<T> e() {
        return e.f.c.g.a.a((e.f.c.g.a) super.e());
    }

    public static <T> e.f.d.c<e.f.c.g.a<T>> a(i0<e.f.c.g.a<T>> i0Var, o0 o0Var, c cVar) {
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a("CloseableProducerToDataSourceAdapter#create");
        }
        b bVar = new b(i0Var, o0Var, cVar);
        if (e.f.i.j.b.c()) {
            e.f.i.j.b.a();
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.d.a
    public void a(e.f.c.g.a<T> aVar) {
        e.f.c.g.a.b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.f.i.d.a
    public void a(e.f.c.g.a<T> aVar, int i2) {
        super.a((b<T>) e.f.c.g.a.a((e.f.c.g.a) aVar), i2);
    }
}
