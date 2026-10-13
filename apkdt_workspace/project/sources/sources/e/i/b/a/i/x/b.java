package e.i.b.a.i.x;

import androidx.annotation.WorkerThread;

/* compiled from: SynchronizationGuard.java */
@WorkerThread
/* loaded from: classes.dex */
public interface b {

    /* compiled from: SynchronizationGuard.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        T execute();
    }

    <T> T a(a<T> aVar);
}
