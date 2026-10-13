package e.i.b.b.b.b;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class j extends WeakReference<Throwable> {

    /* renamed from: a, reason: collision with root package name */
    private final int f17820a;

    public j(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f17820a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == j.class) {
            if (this == obj) {
                return true;
            }
            j jVar = (j) obj;
            if (this.f17820a == jVar.f17820a && get() == jVar.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f17820a;
    }
}
