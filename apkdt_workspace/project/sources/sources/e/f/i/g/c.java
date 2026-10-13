package e.f.i.g;

import java.io.Closeable;

/* compiled from: CloseableImage.java */
/* loaded from: classes.dex */
public abstract class c implements Closeable, f {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    protected void finalize() {
        if (isClosed()) {
            return;
        }
        e.f.c.d.a.c("CloseableImage", "finalize: %s %x still open.", getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this)));
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public h i() {
        return g.f17609d;
    }

    public abstract boolean isClosed();

    public abstract int j();

    public boolean k() {
        return false;
    }
}
