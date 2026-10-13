package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Lifecycle.java */
/* loaded from: classes.dex */
public abstract class e {

    /* compiled from: Lifecycle.java */
    /* loaded from: classes.dex */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* compiled from: Lifecycle.java */
    /* loaded from: classes.dex */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean isAtLeast(@NonNull b bVar) {
            return compareTo(bVar) >= 0;
        }
    }

    public e() {
        new AtomicReference();
    }

    @NonNull
    @MainThread
    public abstract b a();

    @MainThread
    public abstract void a(@NonNull g gVar);

    @MainThread
    public abstract void b(@NonNull g gVar);
}
