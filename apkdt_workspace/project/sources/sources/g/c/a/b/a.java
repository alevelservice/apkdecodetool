package g.c.a.b;

import io.reactivex.rxjava3.annotations.NonNull;

/* compiled from: CompletableObserver.java */
/* loaded from: classes2.dex */
public interface a {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull g.c.a.c.c cVar);
}
