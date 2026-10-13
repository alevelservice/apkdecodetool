package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class n<TResult, TContinuationResult> implements b, d, e<TContinuationResult>, z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17867a;

    /* renamed from: b, reason: collision with root package name */
    private final a<TResult, h<TContinuationResult>> f17868b;

    /* renamed from: c, reason: collision with root package name */
    private final c0<TContinuationResult> f17869c;

    public n(@NonNull Executor executor, @NonNull a<TResult, h<TContinuationResult>> aVar, @NonNull c0<TContinuationResult> c0Var) {
        this.f17867a = executor;
        this.f17868b = aVar;
        this.f17869c = c0Var;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h<TResult> hVar) {
        this.f17867a.execute(new o(this, hVar));
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // e.i.b.b.d.e
    public final void a(TContinuationResult tcontinuationresult) {
        this.f17869c.a((c0<TContinuationResult>) tcontinuationresult);
    }

    @Override // e.i.b.b.d.d
    public final void a(@NonNull Exception exc) {
        this.f17869c.a(exc);
    }

    @Override // e.i.b.b.d.b
    public final void a() {
        this.f17869c.f();
    }
}
