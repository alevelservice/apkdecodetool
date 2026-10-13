package e.f.c.f;

import java.io.Closeable;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* compiled from: PooledByteBuffer.java */
/* loaded from: classes.dex */
public interface g extends Closeable {

    /* compiled from: PooledByteBuffer.java */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        public a() {
            super("Invalid bytebuf. Already closed");
        }
    }

    int a(int i2, byte[] bArr, int i3, int i4);

    byte b(int i2);

    boolean isClosed();

    int size();

    @Nullable
    ByteBuffer w();

    long x();
}
