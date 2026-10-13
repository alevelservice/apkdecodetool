package e.f.i.g;

/* compiled from: CloseableAnimatedImage.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: e, reason: collision with root package name */
    private e.f.i.a.a.e f17595e;

    public a(e.f.i.a.a.e eVar) {
        this.f17595e = eVar;
    }

    @Override // e.f.i.g.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f17595e == null) {
                return;
            }
            e.f.i.a.a.e eVar = this.f17595e;
            this.f17595e = null;
            eVar.a();
        }
    }

    @Override // e.f.i.g.f
    public synchronized int getHeight() {
        return isClosed() ? 0 : this.f17595e.b().getHeight();
    }

    @Override // e.f.i.g.f
    public synchronized int getWidth() {
        return isClosed() ? 0 : this.f17595e.b().getWidth();
    }

    @Override // e.f.i.g.c
    public synchronized boolean isClosed() {
        return this.f17595e == null;
    }

    @Override // e.f.i.g.c
    public synchronized int j() {
        return isClosed() ? 0 : this.f17595e.b().e();
    }

    @Override // e.f.i.g.c
    public boolean k() {
        return true;
    }

    public synchronized e.f.i.a.a.e l() {
        return this.f17595e;
    }
}
