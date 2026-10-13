package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a0<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Object f17837a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private Queue<z<TResult>> f17838b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f17839c;

    public final void a(@NonNull z<TResult> zVar) {
        synchronized (this.f17837a) {
            if (this.f17838b == null) {
                this.f17838b = new ArrayDeque();
            }
            this.f17838b.add(zVar);
        }
    }

    public final void a(@NonNull h<TResult> hVar) {
        z<TResult> poll;
        synchronized (this.f17837a) {
            if (this.f17838b != null && !this.f17839c) {
                this.f17839c = true;
                while (true) {
                    synchronized (this.f17837a) {
                        poll = this.f17838b.poll();
                        if (poll == null) {
                            this.f17839c = false;
                            return;
                        }
                    }
                    poll.a(hVar);
                }
            }
        }
    }
}
