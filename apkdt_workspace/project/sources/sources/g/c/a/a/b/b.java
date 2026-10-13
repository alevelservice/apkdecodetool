package g.c.a.a.b;

import android.os.Handler;
import android.os.Looper;
import g.c.a.a.b.b;
import g.c.a.b.g;
import java.util.concurrent.Callable;

/* compiled from: AndroidSchedulers.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static final g f18252a = g.c.a.a.a.a.b(new Callable() { // from class: g.c.a.a.b.a
        @Override // java.util.concurrent.Callable
        public final Object call() {
            g gVar;
            gVar = b.a.f18253a;
            return gVar;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidSchedulers.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        static final g f18253a = new c(new Handler(Looper.getMainLooper()), true);
    }

    public static g b() {
        return g.c.a.a.a.a.a(f18252a);
    }
}
