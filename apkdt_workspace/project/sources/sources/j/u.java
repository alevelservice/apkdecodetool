package j;

import java.io.Closeable;

/* compiled from: Source.java */
/* loaded from: classes2.dex */
public interface u extends Closeable {
    long b(c cVar, long j2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    v timeout();
}
