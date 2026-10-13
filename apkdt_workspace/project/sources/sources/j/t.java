package j;

import java.io.Closeable;
import java.io.Flushable;

/* compiled from: Sink.java */
/* loaded from: classes2.dex */
public interface t extends Closeable, Flushable {
    void a(c cVar, long j2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    v timeout();
}
