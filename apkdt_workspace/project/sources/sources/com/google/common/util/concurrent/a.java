package com.google.common.util.concurrent;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.j2objc.annotations.ReflectionSupport;
import e.i.c.a.m;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
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
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;

/* compiled from: AbstractFuture.java */
@ReflectionSupport(ReflectionSupport.a.FULL)
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class a<V> extends com.google.common.util.concurrent.l.a implements com.google.common.util.concurrent.e<V> {

    /* renamed from: h, reason: collision with root package name */
    private static final boolean f14229h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: i, reason: collision with root package name */
    private static final Logger f14230i = Logger.getLogger(a.class.getName());

    /* renamed from: j, reason: collision with root package name */
    private static final b f14231j;

    /* renamed from: k, reason: collision with root package name */
    private static final Object f14232k;

    /* renamed from: e, reason: collision with root package name */
    @NullableDecl
    private volatile Object f14233e;

    /* renamed from: f, reason: collision with root package name */
    @NullableDecl
    private volatile e f14234f;

    /* renamed from: g, reason: collision with root package name */
    @NullableDecl
    private volatile l f14235g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        private b() {
        }

        abstract void a(l lVar, l lVar2);

        abstract void a(l lVar, Thread thread);

        abstract boolean a(a<?> aVar, e eVar, e eVar2);

        abstract boolean a(a<?> aVar, l lVar, l lVar2);

        abstract boolean a(a<?> aVar, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: c, reason: collision with root package name */
        static final c f14236c;

        /* renamed from: d, reason: collision with root package name */
        static final c f14237d;

        /* renamed from: a, reason: collision with root package name */
        final boolean f14238a;

        /* renamed from: b, reason: collision with root package name */
        @NullableDecl
        final Throwable f14239b;

        static {
            if (a.f14229h) {
                f14237d = null;
                f14236c = null;
            } else {
                f14237d = new c(false, null);
                f14236c = new c(true, null);
            }
        }

        c(boolean z, @NullableDecl Throwable th) {
            this.f14238a = z;
            this.f14239b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        final Throwable f14240a;

        /* compiled from: AbstractFuture.java */
        /* renamed from: com.google.common.util.concurrent.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0110a extends Throwable {
            C0110a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new d(new C0110a("Failure occurred while trying to finish a future."));
        }

        d(Throwable th) {
            e.i.c.a.j.a(th);
            this.f14240a = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d, reason: collision with root package name */
        static final e f14241d = new e(null, null);

        /* renamed from: a, reason: collision with root package name */
        final Runnable f14242a;

        /* renamed from: b, reason: collision with root package name */
        final Executor f14243b;

        /* renamed from: c, reason: collision with root package name */
        @NullableDecl
        e f14244c;

        e(Runnable runnable, Executor executor) {
            this.f14242a = runnable;
            this.f14243b = executor;
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    private static final class f extends b {

        /* renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, Thread> f14245a;

        /* renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, l> f14246b;

        /* renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, l> f14247c;

        /* renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, e> f14248d;

        /* renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, Object> f14249e;

        f(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f14245a = atomicReferenceFieldUpdater;
            this.f14246b = atomicReferenceFieldUpdater2;
            this.f14247c = atomicReferenceFieldUpdater3;
            this.f14248d = atomicReferenceFieldUpdater4;
            this.f14249e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.a.b
        void a(l lVar, Thread thread) {
            this.f14245a.lazySet(lVar, thread);
        }

        @Override // com.google.common.util.concurrent.a.b
        void a(l lVar, l lVar2) {
            this.f14246b.lazySet(lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, l lVar, l lVar2) {
            return this.f14247c.compareAndSet(aVar, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return this.f14248d.compareAndSet(aVar, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, Object obj, Object obj2) {
            return this.f14249e.compareAndSet(aVar, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class g<V> implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final a<V> f14250e;

        /* renamed from: f, reason: collision with root package name */
        final com.google.common.util.concurrent.e<? extends V> f14251f;

        @Override // java.lang.Runnable
        public void run() {
            if (((a) this.f14250e).f14233e != this) {
                return;
            }
            if (a.f14231j.a((a<?>) this.f14250e, (Object) this, a.b((com.google.common.util.concurrent.e<?>) this.f14251f))) {
                a.e(this.f14250e);
            }
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    private static final class h extends b {
        private h() {
            super();
        }

        @Override // com.google.common.util.concurrent.a.b
        void a(l lVar, Thread thread) {
            lVar.f14259a = thread;
        }

        @Override // com.google.common.util.concurrent.a.b
        void a(l lVar, l lVar2) {
            lVar.f14260b = lVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, l lVar, l lVar2) {
            synchronized (aVar) {
                if (((a) aVar).f14235g != lVar) {
                    return false;
                }
                ((a) aVar).f14235g = lVar2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (((a) aVar).f14234f != eVar) {
                    return false;
                }
                ((a) aVar).f14234f = eVar2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (((a) aVar).f14233e != obj) {
                    return false;
                }
                ((a) aVar).f14233e = obj2;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public interface i<V> extends com.google.common.util.concurrent.e<V> {
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    static abstract class j<V> extends a<V> implements i<V> {
        @Override // com.google.common.util.concurrent.a, com.google.common.util.concurrent.e
        public final void a(Runnable runnable, Executor executor) {
            super.a(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get() {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get(long j2, TimeUnit timeUnit) {
            return (V) super.get(j2, timeUnit);
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    private static final class k extends b {

        /* renamed from: a, reason: collision with root package name */
        static final Unsafe f14252a;

        /* renamed from: b, reason: collision with root package name */
        static final long f14253b;

        /* renamed from: c, reason: collision with root package name */
        static final long f14254c;

        /* renamed from: d, reason: collision with root package name */
        static final long f14255d;

        /* renamed from: e, reason: collision with root package name */
        static final long f14256e;

        /* renamed from: f, reason: collision with root package name */
        static final long f14257f;

        /* compiled from: AbstractFuture.java */
        /* renamed from: com.google.common.util.concurrent.a$k$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0111a implements PrivilegedExceptionAction<Unsafe> {
            C0111a() {
            }

            @Override // java.security.PrivilegedExceptionAction
            public Unsafe run() {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new C0111a());
            }
            try {
                f14254c = unsafe.objectFieldOffset(a.class.getDeclaredField("g"));
                f14253b = unsafe.objectFieldOffset(a.class.getDeclaredField("f"));
                f14255d = unsafe.objectFieldOffset(a.class.getDeclaredField("e"));
                f14256e = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
                f14257f = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
                f14252a = unsafe;
            } catch (Exception e3) {
                m.a(e3);
                throw new RuntimeException(e3);
            }
        }

        private k() {
            super();
        }

        @Override // com.google.common.util.concurrent.a.b
        void a(l lVar, Thread thread) {
            f14252a.putObject(lVar, f14256e, thread);
        }

        @Override // com.google.common.util.concurrent.a.b
        void a(l lVar, l lVar2) {
            f14252a.putObject(lVar, f14257f, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, l lVar, l lVar2) {
            return f14252a.compareAndSwapObject(aVar, f14254c, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return f14252a.compareAndSwapObject(aVar, f14253b, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, Object obj, Object obj2) {
            return f14252a.compareAndSwapObject(aVar, f14255d, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class l {

        /* renamed from: c, reason: collision with root package name */
        static final l f14258c = new l(false);

        /* renamed from: a, reason: collision with root package name */
        @NullableDecl
        volatile Thread f14259a;

        /* renamed from: b, reason: collision with root package name */
        @NullableDecl
        volatile l f14260b;

        l(boolean z) {
        }

        void a(l lVar) {
            a.f14231j.a(this, lVar);
        }

        l() {
            a.f14231j.a(this, Thread.currentThread());
        }

        void a() {
            Thread thread = this.f14259a;
            if (thread != null) {
                this.f14259a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.common.util.concurrent.a$a] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v9 */
    static {
        Throwable th;
        b bVar;
        ?? r1 = 0;
        r1 = 0;
        try {
            bVar = new k();
            th = null;
        } catch (Throwable th2) {
            try {
                th = th2;
                bVar = new f(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, l.class, "g"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "e"));
            } catch (Throwable th3) {
                h hVar = new h();
                r1 = th3;
                th = th2;
                bVar = hVar;
            }
        }
        f14231j = bVar;
        if (r1 != 0) {
            f14230i.log(Level.SEVERE, "UnsafeAtomicHelper is broken!", th);
            f14230i.log(Level.SEVERE, "SafeAtomicHelper is broken!", r1);
        }
        f14232k = new Object();
    }

    protected a() {
    }

    private void g() {
        l lVar;
        do {
            lVar = this.f14235g;
        } while (!f14231j.a((a<?>) this, lVar, l.f14258c));
        while (lVar != null) {
            lVar.a();
            lVar = lVar.f14260b;
        }
    }

    @Beta
    @ForOverride
    protected void b() {
    }

    protected void c() {
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public boolean cancel(boolean z) {
        Object obj = this.f14233e;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = f14229h ? new c(z, new CancellationException("Future.cancel() was called.")) : z ? c.f14236c : c.f14237d;
        boolean z2 = false;
        Object obj2 = obj;
        a<V> aVar = this;
        while (true) {
            if (f14231j.a((a<?>) aVar, obj2, (Object) cVar)) {
                if (z) {
                    aVar.c();
                }
                e(aVar);
                if (!(obj2 instanceof g)) {
                    return true;
                }
                com.google.common.util.concurrent.e<? extends V> eVar = ((g) obj2).f14251f;
                if (eVar instanceof i) {
                    aVar = (a) eVar;
                    obj2 = aVar.f14233e;
                    if (!(obj2 == null) && !(obj2 instanceof g)) {
                        return true;
                    }
                    z2 = true;
                } else {
                    eVar.cancel(z);
                    return true;
                }
            } else {
                obj2 = aVar.f14233e;
                if (!(obj2 instanceof g)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public V get(long j2, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j2);
        if (!Thread.interrupted()) {
            Object obj = this.f14233e;
            if ((obj != null) & (!(obj instanceof g))) {
                return b(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                l lVar = this.f14235g;
                if (lVar != l.f14258c) {
                    l lVar2 = new l();
                    do {
                        lVar2.a(lVar);
                        if (f14231j.a((a<?>) this, lVar, lVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f14233e;
                                    if ((obj2 != null) & (!(obj2 instanceof g))) {
                                        return b(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    a(lVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            a(lVar2);
                        } else {
                            lVar = this.f14235g;
                        }
                    } while (lVar != l.f14258c);
                }
                return b(this.f14233e);
            }
            while (nanos > 0) {
                Object obj3 = this.f14233e;
                if ((obj3 != null) & (!(obj3 instanceof g))) {
                    return b(obj3);
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
    public boolean isCancelled() {
        return this.f14233e instanceof c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof g)) & (this.f14233e != null);
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
                str = d();
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

    /* JADX WARN: Multi-variable type inference failed */
    private V b(Object obj) {
        if (!(obj instanceof c)) {
            if (!(obj instanceof d)) {
                if (obj == f14232k) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((d) obj).f14240a);
        }
        throw a("Task was cancelled.", ((c) obj).f14239b);
    }

    private String c(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.g();
            aVar.b();
            e a2 = aVar.a(eVar);
            while (a2 != null) {
                eVar = a2.f14244c;
                Runnable runnable = a2.f14242a;
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    aVar = gVar.f14250e;
                    if (((a) aVar).f14233e == gVar) {
                        if (f14231j.a((a<?>) aVar, (Object) gVar, b((com.google.common.util.concurrent.e<?>) gVar.f14251f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    b(runnable, a2.f14243b);
                }
                a2 = eVar;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NullableDecl
    protected String d() {
        Object obj = this.f14233e;
        if (obj instanceof g) {
            return "setFuture=[" + c(((g) obj).f14251f) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    private void a(l lVar) {
        lVar.f14259a = null;
        while (true) {
            l lVar2 = this.f14235g;
            if (lVar2 == l.f14258c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.f14260b;
                if (lVar2.f14259a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.f14260b = lVar4;
                    if (lVar3.f14259a == null) {
                        break;
                    }
                } else if (!f14231j.a((a<?>) this, lVar2, lVar4)) {
                    break;
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object b(com.google.common.util.concurrent.e<?> eVar) {
        Throwable a2;
        if (eVar instanceof i) {
            Object obj = ((a) eVar).f14233e;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            if (!cVar.f14238a) {
                return obj;
            }
            Throwable th = cVar.f14239b;
            return th != null ? new c(false, th) : c.f14237d;
        }
        if ((eVar instanceof com.google.common.util.concurrent.l.a) && (a2 = com.google.common.util.concurrent.l.b.a((com.google.common.util.concurrent.l.a) eVar)) != null) {
            return new d(a2);
        }
        boolean isCancelled = eVar.isCancelled();
        if ((!f14229h) & isCancelled) {
            return c.f14237d;
        }
        try {
            Object a3 = a((Future<Object>) eVar);
            if (!isCancelled) {
                return a3 == null ? f14232k : a3;
            }
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + eVar));
        } catch (CancellationException e2) {
            if (!isCancelled) {
                return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + eVar, e2));
            }
            return new c(false, e2);
        } catch (ExecutionException e3) {
            if (isCancelled) {
                return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + eVar, e3));
            }
            return new d(e3.getCause());
        } catch (Throwable th2) {
            return new d(th2);
        }
    }

    @Override // com.google.common.util.concurrent.e
    public void a(Runnable runnable, Executor executor) {
        e eVar;
        e.i.c.a.j.a(runnable, "Runnable was null.");
        e.i.c.a.j.a(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f14234f) != e.f14241d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f14244c = eVar;
                if (f14231j.a((a<?>) this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f14234f;
                }
            } while (eVar != e.f14241d);
        }
        b(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    public boolean a(@NullableDecl V v) {
        if (v == null) {
            v = (V) f14232k;
        }
        if (!f14231j.a((a<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        e(this);
        return true;
    }

    private static void b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f14230i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CanIgnoreReturnValue
    public boolean a(Throwable th) {
        e.i.c.a.j.a(th);
        if (!f14231j.a((a<?>) this, (Object) null, (Object) new d(th))) {
            return false;
        }
        e(this);
        return true;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.l.a
    @NullableDecl
    public final Throwable a() {
        if (!(this instanceof i)) {
            return null;
        }
        Object obj = this.f14233e;
        if (obj instanceof d) {
            return ((d) obj).f14240a;
        }
        return null;
    }

    private e a(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f14234f;
        } while (!f14231j.a((a<?>) this, eVar2, e.f14241d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f14244c;
            eVar4.f14244c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    private void a(StringBuilder sb) {
        try {
            Object a2 = a((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(c(a2));
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

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f14233e;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return b(obj2);
            }
            l lVar = this.f14235g;
            if (lVar != l.f14258c) {
                l lVar2 = new l();
                do {
                    lVar2.a(lVar);
                    if (f14231j.a((a<?>) this, lVar, lVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f14233e;
                            } else {
                                a(lVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return b(obj);
                    }
                    lVar = this.f14235g;
                } while (lVar != l.f14258c);
            }
            return b(this.f14233e);
        }
        throw new InterruptedException();
    }

    private static CancellationException a(@NullableDecl String str, @NullableDecl Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
