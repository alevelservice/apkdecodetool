package g.c.a.b;

import io.reactivex.rxjava3.annotations.NonNull;

/* compiled from: Observer.java */
/* loaded from: classes2.dex */
public interface f<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onNext(@NonNull T t);

    void onSubscribe(@NonNull g.c.a.c.c cVar);
}
