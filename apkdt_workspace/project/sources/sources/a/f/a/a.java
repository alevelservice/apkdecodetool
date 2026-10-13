package a.f.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: AbstractResolvableFuture.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class a<V> implements com.google.common.util.concurrent.e<V> {

    /* renamed from: h, reason: collision with root package name */
    static final boolean f132h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: i, reason: collision with root package name */
    private static final Logger f133i = Logger.getLogger(a.class.getName());

    /* renamed from: j, reason: collision with root package name */
    static final b f134j;

    /* renamed from: k, reason: collision with root package name */
    private static final Object f135k;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    volatile Object f136e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    volatile e f137f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    volatile i f138g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        private b() {
        }

        abstract void a(i iVar, i iVar2);

        abstract void a(i iVar, Thread thread);

        abstract boolean a(a<?> aVar, e eVar, e eVar2);

        abstract boolean a(a<?> aVar, i iVar, i iVar2);

        abstract boolean a(a<?> aVar, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: c, reason: collision with root package name */
        static final c f139c;

        /* renamed from: d, reason: collision with root package name */
        static final c f140d;

        /* renamed from: a, reason: collision with root package name */
        final boolean f141a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        final Throwable f142b;

        static {
            if (a.f132h) {
                f140d = null;
                f139c = null;
            } else {
                f140d = new c(false, null);
                f139c = new c(true, null);
            }
        }

        c(boolean z, @Nullable Throwable th) {
            this.f141a = z;
            this.f142b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        final Throwable f143a;

        /* compiled from: AbstractResolvableFuture.java */
        /* renamed from: a.f.a.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0005a extends Throwable {
            C0005a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new d(new C0005a("Failure occurred while trying to finish a future."));
        }

        d(Throwable th) {
            a.b(th);
            this.f143a = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d, reason: collision with root package name */
        static final e f144d = new e(null, null);

        /* renamed from: a, reason: collision with root package name */
        final Runnable f145a;

        /* renamed from: b, reason: collision with root package name */
        final Executor f146b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        e f147c;

        e(Runnable runnable, Executor executor) {
            this.f145a = runnable;
            this.f146b = executor;
        }
    }

    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    private static final class f extends b {

        /* renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<i, Thread> f148a;

        /* renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<i, i> f149b;

        /* renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, i> f150c;

        /* renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, e> f151d;

        /* renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, Object> f152e;

        f(AtomicReferenceFieldUpdater<i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<i, i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f148a = atomicReferenceFieldUpdater;
            this.f149b = atomicReferenceFieldUpdater2;
            this.f150c = atomicReferenceFieldUpdater3;
            this.f151d = atomicReferenceFieldUpdater4;
            this.f152e = atomicReferenceFieldUpdater5;
        }

        @Override // a.f.a.a.b
        void a(i iVar, Thread thread) {
            this.f148a.lazySet(iVar, thread);
        }

        @Override // a.f.a.a.b
        void a(i iVar, i iVar2) {
            this.f149b.lazySet(iVar, iVar2);
        }

        @Override // a.f.a.a.b
        boolean a(a<?> aVar, i iVar, i iVar2) {
            return this.f150c.compareAndSet(aVar, iVar, iVar2);
        }

        @Override // a.f.a.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return this.f151d.compareAndSet(aVar, eVar, eVar2);
        }

        @Override // a.f.a.a.b
        boolean a(a<?> aVar, Object obj, Object obj2) {
            return this.f152e.compareAndSet(aVar, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    public static final class g<V> implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final a<V> f153e;

        /* renamed from: f, reason: collision with root package name */
        final com.google.common.util.concurrent.e<? extends V> f154f;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f153e.f136e != this) {
                return;
            }
            if (a.f134j.a((a<?>) this.f153e, (Object) this, a.a((com.google.common.util.concurrent.e<?>) this.f154f))) {
                a.a((a<?>) this.f153e);
            }
        }
    }

    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    private static final class h extends b {
        h() {
            super();
        }

        @Override // a.f.a.a.b
        void a(i iVar, Thread thread) {
            iVar.f156a = thread;
        }

        @Override // a.f.a.a.b
        void a(i iVar, i iVar2) {
            iVar.f157b = iVar2;
        }

        @Override // a.f.a.a.b
        boolean a(a<?> aVar, i iVar, i iVar2) {
            synchronized (aVar) {
                if (aVar.f138g != iVar) {
                    return false;
                }
                aVar.f138g = iVar2;
                return true;
            }
        }

        @Override // a.f.a.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (aVar.f137f != eVar) {
                    return false;
                }
                aVar.f137f = eVar2;
                return true;
            }
        }

        @Override // a.f.a.a.b
        boolean a(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f136e != obj) {
                    return false;
                }
                aVar.f136e = obj2;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractResolvableFuture.java */
    /* loaded from: classes.dex */
    public static final class i {

        /* renamed from: c, reason: collision with root package name */
        static final i f155c = new i(false);

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        volatile Thread f156a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        volatile i f157b;

        i(boolean z) {
        }

        void a(i iVar) {
            a.f134j.a(this, iVar);
        }

        i() {
            a.f134j.a(this, Thread.currentThread());
        }

        void a() {
            Thread thread = this.f156a;
            if (thread != null) {
                this.f156a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        b hVar;
        try {
            hVar = new f(AtomicReferenceFieldUpdater.newUpdater(i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(i.class, i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, i.class, "g"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "e"));
            th = null;
        } catch (Throwable th) {
            th = th;
            hVar = new h();
        }
        f134j = hVar;
        if (th != null) {
            f133i.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f135k = new Object();
    }

    private void a(i iVar) {
        iVar.f156a = null;
        while (true) {
            i iVar2 = this.f138g;
            if (iVar2 == i.f155c) {
                return;
            }
            i iVar3 = null;
            while (iVar2 != null) {
                i iVar4 = iVar2.f157b;
                if (iVar2.f156a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.f157b = iVar4;
                    if (iVar3.f156a == null) {
                        break;
                    }
                } else if (!f134j.a((a<?>) this, iVar2, iVar4)) {
                    break;
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    private static void b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f133i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V c(Object obj) {
        if (!(obj instanceof c)) {
            if (!(obj instanceof d)) {
                if (obj == f135k) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((d) obj).f143a);
        }
        throw a("Task was cancelled.", ((c) obj).f142b);
    }

    private void d() {
        i iVar;
        do {
            iVar = this.f138g;
        } while (!f134j.a((a<?>) this, iVar, i.f155c));
        while (iVar != null) {
            iVar.a();
            iVar = iVar.f157b;
        }
    }

    protected void a() {
    }

    protected void b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f136e;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = f132h ? new c(z, new CancellationException("Future.cancel() was called.")) : z ? c.f139c : c.f140d;
        boolean z2 = false;
        Object obj2 = obj;
        a<V> aVar = this;
        while (true) {
            if (f134j.a((a<?>) aVar, obj2, (Object) cVar)) {
                if (z) {
                    aVar.b();
                }
                a((a<?>) aVar);
                if (!(obj2 instanceof g)) {
                    return true;
                }
                com.google.common.util.concurrent.e<? extends V> eVar = ((g) obj2).f154f;
                if (eVar instanceof a) {
                    aVar = (a) eVar;
                    obj2 = aVar.f136e;
                    if (!(obj2 == null) && !(obj2 instanceof g)) {
                        return true;
                    }
                    z2 = true;
                } else {
                    eVar.cancel(z);
                    return true;
                }
            } else {
                obj2 = aVar.f136e;
                if (!(obj2 instanceof g)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final V get(long j2, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j2);
        if (!Thread.interrupted()) {
            Object obj = this.f136e;
            if ((obj != null) & (!(obj instanceof g))) {
                return c(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                i iVar = this.f138g;
                if (iVar != i.f155c) {
                    i iVar2 = new i();
                    do {
                        iVar2.a(iVar);
                        if (f134j.a((a<?>) this, iVar, iVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f136e;
                                    if ((obj2 != null) & (!(obj2 instanceof g))) {
                                        return c(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    a(iVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            a(iVar2);
                        } else {
                            iVar = this.f138g;
                        }
                    } while (iVar != i.f155c);
                }
                return c(this.f136e);
            }
            while (nanos > 0) {
                Object obj3 = this.f136e;
                if ((obj3 != null) & (!(obj3 instanceof g))) {
                    return c(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String aVar = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j2 + HanziToPinyin.Token.SEPARATOR + timeUnit.toString().toLowerCase(Locale.ROOT);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j3 = -nanos;
                long convert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
                long nanos2 = j3 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str3 = str2 + convert + HanziToPinyin.Token.SEPARATOR + lowerCase;
                    if (z) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + HanziToPinyin.Token.SEPARATOR;
                }
                if (z) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + aVar);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f136e instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof g)) & (this.f136e != null);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = c();
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @NonNull
    static <T> T b(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    private String d(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    protected String c() {
        Object obj = this.f136e;
        if (obj instanceof g) {
            return "setFuture=[" + d(((g) obj).f154f) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    @Override // com.google.common.util.concurrent.e
    public final void a(Runnable runnable, Executor executor) {
        b(runnable);
        b(executor);
        e eVar = this.f137f;
        if (eVar != e.f144d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f147c = eVar;
                if (f134j.a((a<?>) this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f137f;
                }
            } while (eVar != e.f144d);
        }
        b(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(@Nullable V v) {
        if (v == null) {
            v = (V) f135k;
        }
        if (!f134j.a((a<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        a((a<?>) this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Throwable th) {
        b(th);
        if (!f134j.a((a<?>) this, (Object) null, (Object) new d(th))) {
            return false;
        }
        a((a<?>) this);
        return true;
    }

    static Object a(com.google.common.util.concurrent.e<?> eVar) {
        if (eVar instanceof a) {
            Object obj = ((a) eVar).f136e;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (!cVar.f141a) {
                return obj;
            }
            Throwable th = cVar.f142b;
            return th != null ? new c(false, th) : c.f140d;
        }
        boolean isCancelled = eVar.isCancelled();
        if ((!f132h) & isCancelled) {
            return c.f140d;
        }
        try {
            Object a2 = a((Future<Object>) eVar);
            return a2 == null ? f135k : a2;
        } catch (CancellationException e2) {
            if (!isCancelled) {
                return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + eVar, e2));
            }
            return new c(false, e2);
        } catch (ExecutionException e3) {
            return new d(e3.getCause());
        } catch (Throwable th2) {
            return new d(th2);
        }
    }

    private static <V> V a(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    static void a(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.d();
            aVar.a();
            e a2 = aVar.a(eVar);
            while (a2 != null) {
                eVar = a2.f147c;
                Runnable runnable = a2.f145a;
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    aVar = gVar.f153e;
                    if (aVar.f136e == gVar) {
                        if (f134j.a((a<?>) aVar, (Object) gVar, a((com.google.common.util.concurrent.e<?>) gVar.f154f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    b(runnable, a2.f146b);
                }
                a2 = eVar;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f136e;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return c(obj2);
            }
            i iVar = this.f138g;
            if (iVar != i.f155c) {
                i iVar2 = new i();
                do {
                    iVar2.a(iVar);
                    if (f134j.a((a<?>) this, iVar, iVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f136e;
                            } else {
                                a(iVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return c(obj);
                    }
                    iVar = this.f138g;
                } while (iVar != i.f155c);
            }
            return c(this.f136e);
        }
        throw new InterruptedException();
    }

    private e a(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f137f;
        } while (!f134j.a((a<?>) this, eVar2, e.f144d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f147c;
            eVar4.f147c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    private void a(StringBuilder sb) {
        try {
            Object a2 = a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(d(a2));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    private static CancellationException a(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
