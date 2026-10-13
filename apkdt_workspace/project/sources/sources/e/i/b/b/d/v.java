package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v<TResult> implements z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17886a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f17887b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private e<? super TResult> f17888c;

    public v(@NonNull Executor executor, @NonNull e<? super TResult> eVar) {
        this.f17886a = executor;
        this.f17888c = eVar;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h<TResult> hVar) {
        if (hVar.e()) {
            synchronized (this.f17887b) {
                if (this.f17888c == null) {
                    return;
                }
                this.f17886a.execute(new w(this, hVar));
            }
        }
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        synchronized (this.f17887b) {
            this.f17888c = null;
        }
    }
}
