package a.m.b;

import a.i.m.j;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* compiled from: AsyncTaskLoader.java */
/* loaded from: classes.dex */
public abstract class a<D> extends b<D> {

    /* renamed from: i, reason: collision with root package name */
    private final Executor f424i;

    /* renamed from: j, reason: collision with root package name */
    volatile a<D>.RunnableC0015a f425j;

    /* renamed from: k, reason: collision with root package name */
    volatile a<D>.RunnableC0015a f426k;

    /* renamed from: l, reason: collision with root package name */
    long f427l;
    long m;
    Handler n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncTaskLoader.java */
    /* renamed from: a.m.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class RunnableC0015a extends c<Void, Void, D> implements Runnable {
        private final CountDownLatch n = new CountDownLatch(1);
        boolean o;

        RunnableC0015a() {
        }

        @Override // a.m.b.c
        protected void b(D d2) {
            try {
                a.this.a((a<RunnableC0015a>.RunnableC0015a) this, (RunnableC0015a) d2);
            } finally {
                this.n.countDown();
            }
        }

        @Override // a.m.b.c
        protected void c(D d2) {
            try {
                a.this.b(this, d2);
            } finally {
                this.n.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.o = false;
            a.this.s();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // a.m.b.c
        public D a(Void... voidArr) {
            try {
                return (D) a.this.u();
            } catch (a.i.k.a e2) {
                if (a()) {
                    return null;
                }
                throw e2;
            }
        }
    }

    public a(@NonNull Context context) {
        this(context, c.f438l);
    }

    void a(a<D>.RunnableC0015a runnableC0015a, D d2) {
        c(d2);
        if (this.f426k == runnableC0015a) {
            o();
            this.m = SystemClock.uptimeMillis();
            this.f426k = null;
            d();
            s();
        }
    }

    void b(a<D>.RunnableC0015a runnableC0015a, D d2) {
        if (this.f425j != runnableC0015a) {
            a((a<a<D>.RunnableC0015a>.RunnableC0015a) runnableC0015a, (a<D>.RunnableC0015a) d2);
            return;
        }
        if (f()) {
            c(d2);
            return;
        }
        c();
        this.m = SystemClock.uptimeMillis();
        this.f425j = null;
        b(d2);
    }

    public void c(@Nullable D d2) {
    }

    @Override // a.m.b.b
    protected boolean h() {
        if (this.f425j == null) {
            return false;
        }
        if (!this.f431d) {
            this.f434g = true;
        }
        if (this.f426k != null) {
            if (this.f425j.o) {
                this.f425j.o = false;
                this.n.removeCallbacks(this.f425j);
            }
            this.f425j = null;
            return false;
        }
        if (this.f425j.o) {
            this.f425j.o = false;
            this.n.removeCallbacks(this.f425j);
            this.f425j = null;
            return false;
        }
        boolean a2 = this.f425j.a(false);
        if (a2) {
            this.f426k = this.f425j;
            r();
        }
        this.f425j = null;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // a.m.b.b
    public void j() {
        super.j();
        b();
        this.f425j = new RunnableC0015a();
        s();
    }

    public void r() {
    }

    void s() {
        if (this.f426k != null || this.f425j == null) {
            return;
        }
        if (this.f425j.o) {
            this.f425j.o = false;
            this.n.removeCallbacks(this.f425j);
        }
        if (this.f427l > 0 && SystemClock.uptimeMillis() < this.m + this.f427l) {
            this.f425j.o = true;
            this.n.postAtTime(this.f425j, this.m + this.f427l);
        } else {
            this.f425j.a(this.f424i, null);
        }
    }

    @Nullable
    public abstract D t();

    @Nullable
    protected D u() {
        return t();
    }

    private a(@NonNull Context context, @NonNull Executor executor) {
        super(context);
        this.m = -10000L;
        this.f424i = executor;
    }

    @Override // a.m.b.b
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        if (this.f425j != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f425j);
            printWriter.print(" waiting=");
            printWriter.println(this.f425j.o);
        }
        if (this.f426k != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f426k);
            printWriter.print(" waiting=");
            printWriter.println(this.f426k.o);
        }
        if (this.f427l != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            j.a(this.f427l, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            j.a(this.m, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
