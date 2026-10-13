package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t<TResult> implements z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17881a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f17882b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private d f17883c;

    public t(@NonNull Executor executor, @NonNull d dVar) {
        this.f17881a = executor;
        this.f17883c = dVar;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h<TResult> hVar) {
        if (hVar.e() || hVar.c()) {
            return;
        }
        synchronized (this.f17882b) {
            if (this.f17883c == null) {
                return;
            }
            this.f17881a.execute(new u(this, hVar));
        }
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        synchronized (this.f17882b) {
            this.f17883c = null;
        }
    }
}
