package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x<TResult, TContinuationResult> implements b, d, e<TContinuationResult>, z<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f17891a;

    /* renamed from: b, reason: collision with root package name */
    private final g<TResult, TContinuationResult> f17892b;

    /* renamed from: c, reason: collision with root package name */
    private final c0<TContinuationResult> f17893c;

    public x(@NonNull Executor executor, @NonNull g<TResult, TContinuationResult> gVar, @NonNull c0<TContinuationResult> c0Var) {
        this.f17891a = executor;
        this.f17892b = gVar;
        this.f17893c = c0Var;
    }

    @Override // e.i.b.b.d.z
    public final void a(@NonNull h<TResult> hVar) {
        this.f17891a.execute(new y(this, hVar));
    }

    @Override // e.i.b.b.d.z
    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // e.i.b.b.d.e
    public final void a(TContinuationResult tcontinuationresult) {
        this.f17893c.a((c0<TContinuationResult>) tcontinuationresult);
    }

    @Override // e.i.b.b.d.d
    public final void a(@NonNull Exception exc) {
        this.f17893c.a(exc);
    }

    @Override // e.i.b.b.d.b
    public final void a() {
        this.f17893c.f();
    }
}
