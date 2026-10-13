package e.f.f.c;

import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

/* compiled from: DraweeEventTracker.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static final b f17255b = new b();

    /* renamed from: c, reason: collision with root package name */
    private static boolean f17256c = true;

    /* renamed from: a, reason: collision with root package name */
    private final Queue<a> f17257a = new ArrayBlockingQueue(20);

    /* compiled from: DraweeEventTracker.java */
    /* loaded from: classes.dex */
    public enum a {
        ON_SET_HIERARCHY,
        ON_CLEAR_HIERARCHY,
        ON_SET_CONTROLLER,
        ON_CLEAR_OLD_CONTROLLER,
        ON_CLEAR_CONTROLLER,
        ON_INIT_CONTROLLER,
        ON_ATTACH_CONTROLLER,
        ON_DETACH_CONTROLLER,
        ON_RELEASE_CONTROLLER,
        ON_DATASOURCE_SUBMIT,
        ON_DATASOURCE_RESULT,
        ON_DATASOURCE_RESULT_INT,
        ON_DATASOURCE_FAILURE,
        ON_DATASOURCE_FAILURE_INT,
        ON_HOLDER_ATTACH,
        ON_HOLDER_DETACH,
        ON_DRAWABLE_SHOW,
        ON_DRAWABLE_HIDE,
        ON_ACTIVITY_START,
        ON_ACTIVITY_STOP,
        ON_RUN_CLEAR_CONTROLLER,
        ON_SCHEDULE_CLEAR_CONTROLLER,
        ON_SAME_CONTROLLER_SKIPPED,
        ON_SUBMIT_CACHE_HIT
    }

    private b() {
    }

    public static b a() {
        return f17256c ? new b() : f17255b;
    }

    public String toString() {
        return this.f17257a.toString();
    }

    public void a(a aVar) {
        if (f17256c) {
            if (this.f17257a.size() + 1 > 20) {
                this.f17257a.poll();
            }
            this.f17257a.add(aVar);
        }
    }
}
