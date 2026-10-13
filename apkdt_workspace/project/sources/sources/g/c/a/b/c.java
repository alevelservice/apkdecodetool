package g.c.a.b;

import io.reactivex.rxjava3.annotations.NonNull;

/* compiled from: MaybeObserver.java */
/* loaded from: classes2.dex */
public interface c<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull g.c.a.c.c cVar);
}
