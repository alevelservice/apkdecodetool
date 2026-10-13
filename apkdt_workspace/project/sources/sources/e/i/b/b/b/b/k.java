package e.i.b.b.b.b;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class k {

    /* renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<j, List<Throwable>> f17821a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b, reason: collision with root package name */
    private final ReferenceQueue<Throwable> f17822b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f17822b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f17821a.remove(poll);
            referenceQueue = this.f17822b;
        }
        List<Throwable> list = this.f17821a.get(new j(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f17821a.putIfAbsent(new j(th, this.f17822b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
