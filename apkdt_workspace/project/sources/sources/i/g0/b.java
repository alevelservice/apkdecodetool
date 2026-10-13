package i.g0;

/* compiled from: NamedRunnable.java */
/* loaded from: classes2.dex */
public abstract class b implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    protected final String f18447e;

    public b(String str, Object... objArr) {
        this.f18447e = c.a(str, objArr);
    }

    protected abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f18447e);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
