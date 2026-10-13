package e.i.b.a.i.w.j;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;

/* compiled from: EventStore.java */
@WorkerThread
/* loaded from: classes.dex */
public interface c extends Closeable {
    @Nullable
    i a(e.i.b.a.i.m mVar, e.i.b.a.i.h hVar);

    Iterable<i> a(e.i.b.a.i.m mVar);

    void a(e.i.b.a.i.m mVar, long j2);

    void a(Iterable<i> iterable);

    long b(e.i.b.a.i.m mVar);

    void b(Iterable<i> iterable);

    boolean c(e.i.b.a.i.m mVar);

    int n();

    Iterable<e.i.b.a.i.m> y();
}
