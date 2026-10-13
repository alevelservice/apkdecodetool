package j;

/* compiled from: ForwardingSink.java */
/* loaded from: classes2.dex */
public abstract class h implements t {

    /* renamed from: e, reason: collision with root package name */
    private final t f19644e;

    public h(t tVar) {
        if (tVar != null) {
            this.f19644e = tVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // j.t
    public void a(c cVar, long j2) {
        this.f19644e.a(cVar, j2);
    }

    @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f19644e.close();
    }

    @Override // j.t, java.io.Flushable
    public void flush() {
        this.f19644e.flush();
    }

    @Override // j.t
    public v timeout() {
        return this.f19644e.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f19644e.toString() + ")";
    }
}
