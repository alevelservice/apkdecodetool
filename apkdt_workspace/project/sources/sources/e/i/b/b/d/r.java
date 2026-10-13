package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r<TResult> implements z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17876a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f17877b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private c<TResult> f17878c;

    public r(@NonNull Executor executor, @NonNull c<TResult> cVar) {
        this.f17876a = executor;
        this.f17878c = cVar;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h<TResult> hVar) {
        synchronized (this.f17877b) {
            if (this.f17878c == null) {
                return;
            }
            this.f17876a.execute(new s(this, hVar));
        }
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        synchronized (this.f17877b) {
            this.f17878c = null;
        }
    }
}
