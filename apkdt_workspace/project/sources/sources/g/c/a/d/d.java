package g.c.a.d;

import io.reactivex.rxjava3.annotations.NonNull;

/* compiled from: OnErrorNotImplementedException.java */
/* loaded from: classes2.dex */
public final class d extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    public d(String str, @NonNull Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public d(@NonNull Throwable th) {
        this("The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | " + th, th);
    }
}
