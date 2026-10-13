package e.f.f.c;

import android.os.Handler;
import android.os.Looper;
import com.facebook.common.internal.h;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/* compiled from: DeferredReleaser.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private static a f17250d;

    /* renamed from: c, reason: collision with root package name */
    private final Runnable f17253c = new RunnableC0188a();

    /* renamed from: a, reason: collision with root package name */
    private final Set<b> f17251a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    private final Handler f17252b = new Handler(Looper.getMainLooper());

    /* compiled from: DeferredReleaser.java */
    /* renamed from: e.f.f.c.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0188a implements Runnable {
        RunnableC0188a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.b();
            Iterator it = a.this.f17251a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
            a.this.f17251a.clear();
        }
    }

    /* compiled from: DeferredReleaser.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    public static synchronized a c() {
        a aVar;
        synchronized (a.class) {
            if (f17250d == null) {
                f17250d = new a();
            }
            aVar = f17250d;
        }
        return aVar;
    }

    public void b(b bVar) {
        b();
        if (this.f17251a.add(bVar) && this.f17251a.size() == 1) {
            this.f17252b.post(this.f17253c);
        }
    }

    public void a(b bVar) {
        b();
        this.f17251a.remove(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        h.b(Looper.getMainLooper().getThread() == Thread.currentThread());
    }
}
