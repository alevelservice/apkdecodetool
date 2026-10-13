package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l<TResult, TContinuationResult> implements z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17862a;

    /* renamed from: b, reason: collision with root package name */
    private final a<TResult, TContinuationResult> f17863b;

    /* renamed from: c, reason: collision with root package name */
    private final c0<TContinuationResult> f17864c;

    public l(@NonNull Executor executor, @NonNull a<TResult, TContinuationResult> aVar, @NonNull c0<TContinuationResult> c0Var) {
        this.f17862a = executor;
        this.f17863b = aVar;
        this.f17864c = c0Var;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h<TResult> hVar) {
        this.f17862a.execute(new m(this, hVar));
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        throw new UnsupportedOperationException();
    }
}
