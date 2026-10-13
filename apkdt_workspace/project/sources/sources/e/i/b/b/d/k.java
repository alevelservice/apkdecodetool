package e.i.b.b.d;

import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes.dex */
public final class k {

    /* loaded from: classes.dex */
    private static final class a implements b {

        /* renamed from: a, reason: collision with root package name */
        private final CountDownLatch f17853a;

        private a() {
            this.f17853a = new CountDownLatch(1);
        }

        @Override // e.i.b.b.d.e
        public final void a(Object obj) {
            this.f17853a.countDown();
        }

        public final void b() {
            this.f17853a.await();
        }

        @Override // e.i.b.b.d.d
        public final void a(@NonNull Exception exc) {
            this.f17853a.countDown();
        }

        /* synthetic */ a(d0 d0Var) {
            this();
        }

        @Override // e.i.b.b.d.b
        public final void a() {
            this.f17853a.countDown();
        }

        public final boolean a(long j2, TimeUnit timeUnit) {
            return this.f17853a.await(j2, timeUnit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b extends e.i.b.b.d.b, d, e<Object> {
    }

    public static <TResult> h<TResult> a(TResult tresult) {
        c0 c0Var = new c0();
        c0Var.a((c0) tresult);
        return c0Var;
    }

    private static <TResult> TResult b(h<TResult> hVar) {
        if (hVar.e()) {
            return hVar.b();
        }
        if (hVar.c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(hVar.a());
    }

    public static <TResult> h<TResult> a(@NonNull Exception exc) {
        c0 c0Var = new c0();
        c0Var.a(exc);
        return c0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements b {

        /* renamed from: a, reason: collision with root package name */
        private final Object f17854a = new Object();

        /* renamed from: b, reason: collision with root package name */
        private final int f17855b;

        /* renamed from: c, reason: collision with root package name */
        private final c0<Void> f17856c;

        /* renamed from: d, reason: collision with root package name */
        @GuardedBy("mLock")
        private int f17857d;

        /* renamed from: e, reason: collision with root package name */
        @GuardedBy("mLock")
        private int f17858e;

        /* renamed from: f, reason: collision with root package name */
        @GuardedBy("mLock")
        private int f17859f;

        /* renamed from: g, reason: collision with root package name */
        @GuardedBy("mLock")
        private Exception f17860g;

        /* renamed from: h, reason: collision with root package name */
        @GuardedBy("mLock")
        private boolean f17861h;

        public c(int i2, c0<Void> c0Var) {
            this.f17855b = i2;
            this.f17856c = c0Var;
        }

        @GuardedBy("mLock")
        private final void b() {
            int i2 = this.f17857d;
            int i3 = this.f17858e;
            int i4 = i2 + i3 + this.f17859f;
            int i5 = this.f17855b;
            if (i4 == i5) {
                if (this.f17860g != null) {
                    c0<Void> c0Var = this.f17856c;
                    StringBuilder sb = new StringBuilder(54);
                    sb.append(i3);
                    sb.append(" out of ");
                    sb.append(i5);
                    sb.append(" underlying tasks failed");
                    c0Var.a(new ExecutionException(sb.toString(), this.f17860g));
                    return;
                }
                if (this.f17861h) {
                    this.f17856c.f();
                } else {
                    this.f17856c.a((c0<Void>) null);
                }
            }
        }

        @Override // e.i.b.b.d.d
        public final void a(@NonNull Exception exc) {
            synchronized (this.f17854a) {
                this.f17858e++;
                this.f17860g = exc;
                b();
            }
        }

        @Override // e.i.b.b.d.e
        public final void a(Object obj) {
            synchronized (this.f17854a) {
                this.f17857d++;
                b();
            }
        }

        @Override // e.i.b.b.d.b
        public final void a() {
            synchronized (this.f17854a) {
                this.f17859f++;
                this.f17861h = true;
                b();
            }
        }
    }

    public static <TResult> h<TResult> a(@NonNull Callable<TResult> callable) {
        return a(j.f17850a, callable);
    }

    public static <TResult> h<TResult> a(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        com.google.android.gms.common.internal.m.a(executor, "Executor must not be null");
        com.google.android.gms.common.internal.m.a(callable, "Callback must not be null");
        c0 c0Var = new c0();
        executor.execute(new d0(c0Var, callable));
        return c0Var;
    }

    public static <TResult> TResult a(@NonNull h<TResult> hVar) {
        com.google.android.gms.common.internal.m.a();
        com.google.android.gms.common.internal.m.a(hVar, "Task must not be null");
        if (hVar.d()) {
            return (TResult) b(hVar);
        }
        a aVar = new a(null);
        a((h<?>) hVar, (b) aVar);
        aVar.b();
        return (TResult) b(hVar);
    }

    public static <TResult> TResult a(@NonNull h<TResult> hVar, long j2, @NonNull TimeUnit timeUnit) {
        com.google.android.gms.common.internal.m.a();
        com.google.android.gms.common.internal.m.a(hVar, "Task must not be null");
        com.google.android.gms.common.internal.m.a(timeUnit, "TimeUnit must not be null");
        if (hVar.d()) {
            return (TResult) b(hVar);
        }
        a aVar = new a(null);
        a((h<?>) hVar, (b) aVar);
        if (aVar.a(j2, timeUnit)) {
            return (TResult) b(hVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static h<Void> a(Collection<? extends h<?>> collection) {
        if (collection.isEmpty()) {
            return a((Object) null);
        }
        Iterator<? extends h<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        c0 c0Var = new c0();
        c cVar = new c(collection.size(), c0Var);
        Iterator<? extends h<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            a(it2.next(), cVar);
        }
        return c0Var;
    }

    public static h<Void> a(h<?>... hVarArr) {
        if (hVarArr.length == 0) {
            return a((Object) null);
        }
        return a((Collection<? extends h<?>>) Arrays.asList(hVarArr));
    }

    private static void a(h<?> hVar, b bVar) {
        hVar.a(j.f17851b, (e<? super Object>) bVar);
        hVar.a(j.f17851b, (d) bVar);
        hVar.a(j.f17851b, (e.i.b.b.d.b) bVar);
    }
}
