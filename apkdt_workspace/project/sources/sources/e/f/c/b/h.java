package e.f.c.b;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: StatefulRunnable.java */
/* loaded from: classes.dex */
public abstract class h<T> implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    protected final AtomicInteger f17144e = new AtomicInteger(0);

    public void a() {
        if (this.f17144e.compareAndSet(0, 2)) {
            c();
        }
    }

    protected abstract void a(Exception exc);

    protected abstract void a(T t);

    protected abstract T b();

    protected abstract void b(T t);

    protected abstract void c();

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f17144e.compareAndSet(0, 1)) {
            try {
                T b2 = b();
                this.f17144e.set(3);
                try {
                    b(b2);
                } finally {
                    a((h<T>) b2);
                }
            } catch (Exception e2) {
                this.f17144e.set(4);
                a(e2);
            }
        }
    }
}
