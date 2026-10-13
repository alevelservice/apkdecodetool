package e.f.c.f;

import com.facebook.common.internal.l;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: PooledByteBufferOutputStream.java */
/* loaded from: classes.dex */
public abstract class j extends OutputStream {
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e2) {
            l.a(e2);
            throw null;
        }
    }

    public abstract g i();

    public abstract int size();
}
