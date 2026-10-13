package e.f.d;

/* compiled from: BaseDataSubscriber.java */
/* loaded from: classes.dex */
public abstract class b<T> implements e<T> {
    @Override // e.f.d.e
    public void a(c<T> cVar) {
    }

    @Override // e.f.d.e
    public void b(c<T> cVar) {
        try {
            e(cVar);
        } finally {
            cVar.close();
        }
    }

    @Override // e.f.d.e
    public void c(c<T> cVar) {
        boolean b2 = cVar.b();
        try {
            f(cVar);
        } finally {
            if (b2) {
                cVar.close();
            }
        }
    }

    protected abstract void e(c<T> cVar);

    protected abstract void f(c<T> cVar);
}
