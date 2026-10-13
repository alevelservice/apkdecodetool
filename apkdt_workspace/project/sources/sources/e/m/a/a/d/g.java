package e.m.a.a.d;

import android.app.PendingIntent;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: LocationEngineProxy.java */
/* loaded from: classes2.dex */
class g<T> implements c {

    /* renamed from: a, reason: collision with root package name */
    private final e<T> f18037a;

    /* renamed from: b, reason: collision with root package name */
    private Map<d<i>, T> f18038b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e<T> eVar) {
        this.f18037a = eVar;
    }

    @Override // e.m.a.a.d.c
    public void a(@NonNull d<i> dVar) {
        k.a(dVar, "callback == null");
        this.f18037a.a(dVar);
    }

    @Override // e.m.a.a.d.c
    public void b(@NonNull d<i> dVar) {
        k.a(dVar, "callback == null");
        this.f18037a.a((e<T>) d(dVar));
    }

    @VisibleForTesting
    T c(@NonNull d<i> dVar) {
        if (this.f18038b == null) {
            this.f18038b = new ConcurrentHashMap();
        }
        T t = this.f18038b.get(dVar);
        if (t == null) {
            t = this.f18037a.b(dVar);
        }
        this.f18038b.put(dVar, t);
        return t;
    }

    @VisibleForTesting
    T d(@NonNull d<i> dVar) {
        Map<d<i>, T> map = this.f18038b;
        if (map != null) {
            return map.remove(dVar);
        }
        return null;
    }

    @Override // e.m.a.a.d.c
    public void a(@NonNull h hVar, @NonNull d<i> dVar, @Nullable Looper looper) {
        k.a(hVar, "request == null");
        k.a(dVar, "callback == null");
        e<T> eVar = this.f18037a;
        T c2 = c(dVar);
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        eVar.a(hVar, c2, looper);
    }

    @Override // e.m.a.a.d.c
    public void a(@NonNull h hVar, PendingIntent pendingIntent) {
        k.a(hVar, "request == null");
        this.f18037a.a(hVar, pendingIntent);
    }

    @Override // e.m.a.a.d.c
    public void a(PendingIntent pendingIntent) {
        this.f18037a.a(pendingIntent);
    }
}
