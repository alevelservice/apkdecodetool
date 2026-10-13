package j;

/* compiled from: ForwardingSource.java */
/* loaded from: classes2.dex */
public abstract class i implements u {

    /* renamed from: e, reason: collision with root package name */
    private final u f19645e;

    public i(u uVar) {
        if (uVar != null) {
            this.f19645e = uVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final u b() {
        return this.f19645e;
    }

    @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f19645e.close();
    }

    @Override // j.u
    public v timeout() {
        return this.f19645e.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f19645e.toString() + ")";
    }
}
