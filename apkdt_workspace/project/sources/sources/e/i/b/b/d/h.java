package e.i.b.b.d;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class h<TResult> {
    @NonNull
    public abstract h<TResult> a(@NonNull Activity activity, @NonNull d dVar);

    @NonNull
    public abstract h<TResult> a(@NonNull Activity activity, @NonNull e<? super TResult> eVar);

    @NonNull
    public h<TResult> a(@NonNull c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public abstract h<TResult> a(@NonNull d dVar);

    @NonNull
    public abstract h<TResult> a(@NonNull e<? super TResult> eVar);

    @NonNull
    public abstract h<TResult> a(@NonNull Executor executor, @NonNull d dVar);

    @NonNull
    public abstract h<TResult> a(@NonNull Executor executor, @NonNull e<? super TResult> eVar);

    @Nullable
    public abstract Exception a();

    @Nullable
    public abstract <X extends Throwable> TResult a(@NonNull Class<X> cls);

    @NonNull
    public <TContinuationResult> h<TContinuationResult> b(@NonNull Executor executor, @NonNull a<TResult, h<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @Nullable
    public abstract TResult b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract boolean e();

    @NonNull
    public h<TResult> a(@NonNull Executor executor, @NonNull c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public h<TResult> a(@NonNull Executor executor, @NonNull b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    @NonNull
    public <TContinuationResult> h<TContinuationResult> a(@NonNull a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public <TContinuationResult> h<TContinuationResult> a(@NonNull Executor executor, @NonNull a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public <TContinuationResult> h<TContinuationResult> a(@NonNull g<TResult, TContinuationResult> gVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    @NonNull
    public <TContinuationResult> h<TContinuationResult> a(@NonNull Executor executor, @NonNull g<TResult, TContinuationResult> gVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
