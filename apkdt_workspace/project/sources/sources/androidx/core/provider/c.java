package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: SelfDestructiveThread.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private HandlerThread f1870b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private Handler f1871c;

    /* renamed from: f, reason: collision with root package name */
    private final int f1874f;

    /* renamed from: g, reason: collision with root package name */
    private final int f1875g;

    /* renamed from: h, reason: collision with root package name */
    private final String f1876h;

    /* renamed from: a, reason: collision with root package name */
    private final Object f1869a = new Object();

    /* renamed from: e, reason: collision with root package name */
    private Handler.Callback f1873e = new a();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f1872d = 0;

    /* compiled from: SelfDestructiveThread.java */
    /* loaded from: classes.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                c.this.a();
                return true;
            }
            if (i2 != 1) {
                return true;
            }
            c.this.a((Runnable) message.obj);
            return true;
        }
    }

    /* compiled from: SelfDestructiveThread.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Callable f1878e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Handler f1879f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ d f1880g;

        /* compiled from: SelfDestructiveThread.java */
        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Object f1881e;

            a(Object obj) {
                this.f1881e = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f1880g.a(this.f1881e);
            }
        }

        b(c cVar, Callable callable, Handler handler, d dVar) {
            this.f1878e = callable;
            this.f1879f = handler;
            this.f1880g = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = this.f1878e.call();
            } catch (Exception unused) {
                obj = null;
            }
            this.f1879f.post(new a(obj));
        }
    }

    /* compiled from: SelfDestructiveThread.java */
    /* renamed from: androidx.core.provider.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0035c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ AtomicReference f1883e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Callable f1884f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ ReentrantLock f1885g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f1886h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ Condition f1887i;

        RunnableC0035c(c cVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.f1883e = atomicReference;
            this.f1884f = callable;
            this.f1885g = reentrantLock;
            this.f1886h = atomicBoolean;
            this.f1887i = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f1883e.set(this.f1884f.call());
            } catch (Exception unused) {
            }
            this.f1885g.lock();
            try {
                this.f1886h.set(false);
                this.f1887i.signal();
            } finally {
                this.f1885g.unlock();
            }
        }
    }

    /* compiled from: SelfDestructiveThread.java */
    /* loaded from: classes.dex */
    public interface d<T> {
        void a(T t);
    }

    public c(String str, int i2, int i3) {
        this.f1876h = str;
        this.f1875g = i2;
        this.f1874f = i3;
    }

    private void b(Runnable runnable) {
        synchronized (this.f1869a) {
            if (this.f1870b == null) {
                this.f1870b = new HandlerThread(this.f1876h, this.f1875g);
                this.f1870b.start();
                this.f1871c = new Handler(this.f1870b.getLooper(), this.f1873e);
                this.f1872d++;
            }
            this.f1871c.removeMessages(0);
            this.f1871c.sendMessage(this.f1871c.obtainMessage(1, runnable));
        }
    }

    public <T> void a(Callable<T> callable, d<T> dVar) {
        b(new b(this, callable, new Handler(), dVar));
    }

    public <T> T a(Callable<T> callable, int i2) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        b(new RunnableC0035c(this, atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i2);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    void a(Runnable runnable) {
        runnable.run();
        synchronized (this.f1869a) {
            this.f1871c.removeMessages(0);
            this.f1871c.sendMessageDelayed(this.f1871c.obtainMessage(0), this.f1874f);
        }
    }

    void a() {
        synchronized (this.f1869a) {
            if (this.f1871c.hasMessages(1)) {
                return;
            }
            this.f1870b.quit();
            this.f1870b = null;
            this.f1871c = null;
        }
    }
}
