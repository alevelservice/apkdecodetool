package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes.dex */
final class p<TResult> implements z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17872a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f17873b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private b f17874c;

    public p(@NonNull Executor executor, @NonNull b bVar) {
        this.f17872a = executor;
        this.f17874c = bVar;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h hVar) {
        if (hVar.c()) {
            synchronized (this.f17873b) {
                if (this.f17874c == null) {
                    return;
                }
                this.f17872a.execute(new q(this));
            }
        }
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        synchronized (this.f17873b) {
            this.f17874c = null;
        }
    }
}
