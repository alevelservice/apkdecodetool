package i;

import i.y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: Dispatcher.java */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private Runnable f18766c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private ExecutorService f18767d;

    /* renamed from: a, reason: collision with root package name */
    private int f18764a = 64;

    /* renamed from: b, reason: collision with root package name */
    private int f18765b = 5;

    /* renamed from: e, reason: collision with root package name */
    private final Deque<y.b> f18768e = new ArrayDeque();

    /* renamed from: f, reason: collision with root package name */
    private final Deque<y.b> f18769f = new ArrayDeque();

    /* renamed from: g, reason: collision with root package name */
    private final Deque<y> f18770g = new ArrayDeque();

    private boolean c() {
        int i2;
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<y.b> it = this.f18768e.iterator();
            while (it.hasNext()) {
                y.b next = it.next();
                if (this.f18769f.size() >= this.f18764a) {
                    break;
                }
                if (c(next) < this.f18765b) {
                    it.remove();
                    arrayList.add(next);
                    this.f18769f.add(next);
                }
            }
            z = b() > 0;
        }
        int size = arrayList.size();
        for (i2 = 0; i2 < size; i2++) {
            ((y.b) arrayList.get(i2)).a(a());
        }
        return z;
    }

    public synchronized ExecutorService a() {
        if (this.f18767d == null) {
            this.f18767d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), i.g0.c.a("OkHttp Dispatcher", false));
        }
        return this.f18767d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(y.b bVar) {
        a(this.f18769f, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(y yVar) {
        a(this.f18770g, yVar);
    }

    public synchronized int b() {
        return this.f18769f.size() + this.f18770g.size();
    }

    public void a(int i2) {
        if (i2 >= 1) {
            synchronized (this) {
                this.f18765b = i2;
            }
            c();
        } else {
            throw new IllegalArgumentException("max < 1: " + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(y.b bVar) {
        synchronized (this) {
            this.f18768e.add(bVar);
        }
        c();
    }

    private int c(y.b bVar) {
        int i2 = 0;
        for (y.b bVar2 : this.f18769f) {
            if (!bVar2.c().f18842j && bVar2.d().equals(bVar.d())) {
                i2++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(y yVar) {
        this.f18770g.add(yVar);
    }

    private <T> void a(Deque<T> deque, T t) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                runnable = this.f18766c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (c() || runnable == null) {
            return;
        }
        runnable.run();
    }
}
