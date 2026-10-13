package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
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

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class fy0<V> extends j01 implements qz0<V> {

    /* renamed from: h, reason: collision with root package name */
    private static final boolean f6735h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: i, reason: collision with root package name */
    private static final Logger f6736i = Logger.getLogger(fy0.class.getName());

    /* renamed from: j, reason: collision with root package name */
    private static final b f6737j;

    /* renamed from: k, reason: collision with root package name */
    private static final Object f6738k;

    /* renamed from: e, reason: collision with root package name */
    @NullableDecl
    private volatile Object f6739e;

    /* renamed from: f, reason: collision with root package name */
    @NullableDecl
    private volatile e f6740f;

    /* renamed from: g, reason: collision with root package name */
    @NullableDecl
    private volatile l f6741g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static abstract class b {
        private b() {
        }

        abstract void a(l lVar, l lVar2);

        abstract void a(l lVar, Thread thread);

        abstract boolean a(fy0<?> fy0Var, e eVar, e eVar2);

        abstract boolean a(fy0<?> fy0Var, l lVar, l lVar2);

        abstract boolean a(fy0<?> fy0Var, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: b, reason: collision with root package name */
        static final c f6742b = new c(new a("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        final Throwable f6743a;

        /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
        /* loaded from: classes.dex */
        class a extends Throwable {
            a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        c(Throwable th) {
            uw0.a(th);
            this.f6743a = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: c, reason: collision with root package name */
        static final d f6744c;

        /* renamed from: d, reason: collision with root package name */
        static final d f6745d;

        /* renamed from: a, reason: collision with root package name */
        final boolean f6746a;

        /* renamed from: b, reason: collision with root package name */
        @NullableDecl
        final Throwable f6747b;

        static {
            if (fy0.f6735h) {
                f6745d = null;
                f6744c = null;
            } else {
                f6745d = new d(false, null);
                f6744c = new d(true, null);
            }
        }

        d(boolean z, @NullableDecl Throwable th) {
            this.f6746a = z;
            this.f6747b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d, reason: collision with root package name */
        static final e f6748d = new e(null, null);

        /* renamed from: a, reason: collision with root package name */
        final Runnable f6749a;

        /* renamed from: b, reason: collision with root package name */
        final Executor f6750b;

        /* renamed from: c, reason: collision with root package name */
        @NullableDecl
        e f6751c;

        e(Runnable runnable, Executor executor) {
            this.f6749a = runnable;
            this.f6750b = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class f<V> implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final fy0<V> f6752e;

        /* renamed from: f, reason: collision with root package name */
        final qz0<? extends V> f6753f;

        f(fy0<V> fy0Var, qz0<? extends V> qz0Var) {
            this.f6752e = fy0Var;
            this.f6753f = qz0Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((fy0) this.f6752e).f6739e != this) {
                return;
            }
            if (fy0.f6737j.a((fy0<?>) this.f6752e, (Object) this, fy0.b((qz0<?>) this.f6753f))) {
                fy0.a((fy0<?>) this.f6752e);
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static final class g extends b {

        /* renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, Thread> f6754a;

        /* renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, l> f6755b;

        /* renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<fy0, l> f6756c;

        /* renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<fy0, e> f6757d;

        /* renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<fy0, Object> f6758e;

        g(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<fy0, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<fy0, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<fy0, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f6754a = atomicReferenceFieldUpdater;
            this.f6755b = atomicReferenceFieldUpdater2;
            this.f6756c = atomicReferenceFieldUpdater3;
            this.f6757d = atomicReferenceFieldUpdater4;
            this.f6758e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final void a(l lVar, Thread thread) {
            this.f6754a.lazySet(lVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final void a(l lVar, l lVar2) {
            this.f6755b.lazySet(lVar, lVar2);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, l lVar, l lVar2) {
            return this.f6756c.compareAndSet(fy0Var, lVar, lVar2);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, e eVar, e eVar2) {
            return this.f6757d.compareAndSet(fy0Var, eVar, eVar2);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, Object obj, Object obj2) {
            return this.f6758e.compareAndSet(fy0Var, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public interface h<V> extends qz0<V> {
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static final class i extends b {
        private i() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final void a(l lVar, Thread thread) {
            lVar.f6766a = thread;
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final void a(l lVar, l lVar2) {
            lVar.f6767b = lVar2;
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, l lVar, l lVar2) {
            synchronized (fy0Var) {
                if (((fy0) fy0Var).f6741g != lVar) {
                    return false;
                }
                ((fy0) fy0Var).f6741g = lVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, e eVar, e eVar2) {
            synchronized (fy0Var) {
                if (((fy0) fy0Var).f6740f != eVar) {
                    return false;
                }
                ((fy0) fy0Var).f6740f = eVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, Object obj, Object obj2) {
            synchronized (fy0Var) {
                if (((fy0) fy0Var).f6739e != obj) {
                    return false;
                }
                ((fy0) fy0Var).f6739e = obj2;
                return true;
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static final class j extends b {

        /* renamed from: a, reason: collision with root package name */
        static final Unsafe f6759a;

        /* renamed from: b, reason: collision with root package name */
        static final long f6760b;

        /* renamed from: c, reason: collision with root package name */
        static final long f6761c;

        /* renamed from: d, reason: collision with root package name */
        static final long f6762d;

        /* renamed from: e, reason: collision with root package name */
        static final long f6763e;

        /* renamed from: f, reason: collision with root package name */
        static final long f6764f;

        /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
        /* loaded from: classes.dex */
        class a implements PrivilegedExceptionAction<Unsafe> {
            a() {
            }

            @Override // java.security.PrivilegedExceptionAction
            public /* synthetic */ Unsafe run() {
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
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                f6761c = unsafe.objectFieldOffset(fy0.class.getDeclaredField("g"));
                f6760b = unsafe.objectFieldOffset(fy0.class.getDeclaredField("f"));
                f6762d = unsafe.objectFieldOffset(fy0.class.getDeclaredField("e"));
                f6763e = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
                f6764f = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
                f6759a = unsafe;
            } catch (Exception e3) {
                bx0.a(e3);
                throw new RuntimeException(e3);
            }
        }

        private j() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final void a(l lVar, Thread thread) {
            f6759a.putObject(lVar, f6763e, thread);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final void a(l lVar, l lVar2) {
            f6759a.putObject(lVar, f6764f, lVar2);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, l lVar, l lVar2) {
            return f6759a.compareAndSwapObject(fy0Var, f6761c, lVar, lVar2);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, e eVar, e eVar2) {
            return f6759a.compareAndSwapObject(fy0Var, f6760b, eVar, eVar2);
        }

        @Override // com.google.android.gms.internal.ads.fy0.b
        final boolean a(fy0<?> fy0Var, Object obj, Object obj2) {
            return f6759a.compareAndSwapObject(fy0Var, f6762d, obj, obj2);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    static abstract class k<V> extends fy0<V> implements h<V> {
        @Override // com.google.android.gms.internal.ads.fy0, java.util.concurrent.Future
        public final V get(long j2, TimeUnit timeUnit) {
            return (V) super.get(j2, timeUnit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class l {

        /* renamed from: c, reason: collision with root package name */
        static final l f6765c = new l(false);

        /* renamed from: a, reason: collision with root package name */
        @NullableDecl
        volatile Thread f6766a;

        /* renamed from: b, reason: collision with root package name */
        @NullableDecl
        volatile l f6767b;

        private l(boolean z) {
        }

        final void a(l lVar) {
            fy0.f6737j.a(this, lVar);
        }

        l() {
            fy0.f6737j.a(this, Thread.currentThread());
        }
    }

    static {
        Throwable th;
        Throwable th2;
        b iVar;
        try {
            iVar = new j();
            th = null;
            th2 = null;
        } catch (Throwable th3) {
            try {
                th = null;
                th2 = th3;
                iVar = new g(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(fy0.class, l.class, "g"), AtomicReferenceFieldUpdater.newUpdater(fy0.class, e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(fy0.class, Object.class, "e"));
            } catch (Throwable th4) {
                th = th4;
                th2 = th3;
                iVar = new i();
            }
        }
        f6737j = iVar;
        if (th != null) {
            f6736i.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            f6736i.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f6738k = new Object();
    }

    private final void a(l lVar) {
        lVar.f6766a = null;
        while (true) {
            l lVar2 = this.f6741g;
            if (lVar2 == l.f6765c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.f6767b;
                if (lVar2.f6766a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.f6767b = lVar4;
                    if (lVar3.f6766a == null) {
                        break;
                    }
                } else if (f6737j.a((fy0<?>) this, lVar2, lVar4)) {
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static V b(Object obj) {
        if (!(obj instanceof d)) {
            if (!(obj instanceof c)) {
                if (obj == f6738k) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((c) obj).f6743a);
        }
        Throwable th = ((d) obj).f6747b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @NullableDecl
    public String c() {
        Object obj = this.f6739e;
        if (obj instanceof f) {
            String c2 = c((Object) ((f) obj).f6753f);
            StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 12);
            sb.append("setFuture=[");
            sb.append(c2);
            sb.append("]");
            return sb.toString();
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb2 = new StringBuilder(41);
        sb2.append("remaining delay=[");
        sb2.append(delay);
        sb2.append(" ms]");
        return sb2.toString();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        d dVar;
        Object obj = this.f6739e;
        if (!(obj == null) && !(obj instanceof f)) {
            return false;
        }
        if (f6735h) {
            dVar = new d(z, new CancellationException("Future.cancel() was called."));
        } else if (z) {
            dVar = d.f6744c;
        } else {
            dVar = d.f6745d;
        }
        boolean z2 = false;
        Object obj2 = obj;
        fy0<V> fy0Var = this;
        while (true) {
            if (f6737j.a((fy0<?>) fy0Var, obj2, (Object) dVar)) {
                a((fy0<?>) fy0Var);
                if (!(obj2 instanceof f)) {
                    return true;
                }
                qz0<? extends V> qz0Var = ((f) obj2).f6753f;
                if (qz0Var instanceof h) {
                    fy0Var = (fy0) qz0Var;
                    obj2 = fy0Var.f6739e;
                    if (!(obj2 == null) && !(obj2 instanceof f)) {
                        return true;
                    }
                    z2 = true;
                } else {
                    qz0Var.cancel(z);
                    return true;
                }
            } else {
                obj2 = fy0Var.f6739e;
                if (!(obj2 instanceof f)) {
                    return z2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d() {
        Object obj = this.f6739e;
        return (obj instanceof d) && ((d) obj).f6746a;
    }

    public V get(long j2, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j2);
        if (!Thread.interrupted()) {
            Object obj = this.f6739e;
            if ((obj != null) & (!(obj instanceof f))) {
                return (V) b(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                l lVar = this.f6741g;
                if (lVar != l.f6765c) {
                    l lVar2 = new l();
                    do {
                        lVar2.a(lVar);
                        if (f6737j.a((fy0<?>) this, lVar, lVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f6739e;
                                    if ((obj2 != null) & (!(obj2 instanceof f))) {
                                        return (V) b(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    a(lVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            a(lVar2);
                        } else {
                            lVar = this.f6741g;
                        }
                    } while (lVar != l.f6765c);
                }
                return (V) b(this.f6739e);
            }
            while (nanos > 0) {
                Object obj3 = this.f6739e;
                if ((obj3 != null) & (!(obj3 instanceof f))) {
                    return (V) b(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String fy0Var = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String lowerCase2 = timeUnit.toString().toLowerCase(Locale.ROOT);
            StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
            sb.append("Waited ");
            sb.append(j2);
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(lowerCase2);
            String sb2 = sb.toString();
            if (nanos + 1000 < 0) {
                String concat = String.valueOf(sb2).concat(" (plus ");
                long j3 = -nanos;
                long convert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
                long nanos2 = j3 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 21 + String.valueOf(lowerCase).length());
                    sb3.append(valueOf);
                    sb3.append(convert);
                    sb3.append(HanziToPinyin.Token.SEPARATOR);
                    sb3.append(lowerCase);
                    String sb4 = sb3.toString();
                    if (z) {
                        sb4 = String.valueOf(sb4).concat(",");
                    }
                    concat = String.valueOf(sb4).concat(HanziToPinyin.Token.SEPARATOR);
                }
                if (z) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb5 = new StringBuilder(String.valueOf(valueOf2).length() + 33);
                    sb5.append(valueOf2);
                    sb5.append(nanos2);
                    sb5.append(" nanoseconds ");
                    concat = sb5.toString();
                }
                sb2 = String.valueOf(concat).concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(sb2).concat(" but future completed as timeout expired"));
            }
            StringBuilder sb6 = new StringBuilder(String.valueOf(sb2).length() + 5 + String.valueOf(fy0Var).length());
            sb6.append(sb2);
            sb6.append(" for ");
            sb6.append(fy0Var);
            throw new TimeoutException(sb6.toString());
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f6739e instanceof d;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof f)) & (this.f6739e != null);
    }

    public String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            a(sb2);
        } else {
            try {
                sb = c();
            } catch (RuntimeException e2) {
                String valueOf = String.valueOf(e2.getClass());
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 38);
                sb3.append("Exception thrown from implementation: ");
                sb3.append(valueOf);
                sb = sb3.toString();
            }
            if (sb != null && !sb.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(sb);
                sb2.append("]");
            } else if (isDone()) {
                a(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    private final String c(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object b(qz0<?> qz0Var) {
        Throwable a2;
        if (qz0Var instanceof h) {
            Object obj = ((fy0) qz0Var).f6739e;
            if (!(obj instanceof d)) {
                return obj;
            }
            d dVar = (d) obj;
            if (!dVar.f6746a) {
                return obj;
            }
            Throwable th = dVar.f6747b;
            if (th != null) {
                return new d(false, th);
            }
            return d.f6745d;
        }
        if ((qz0Var instanceof j01) && (a2 = m01.a((j01) qz0Var)) != null) {
            return new c(a2);
        }
        boolean isCancelled = qz0Var.isCancelled();
        if ((!f6735h) & isCancelled) {
            return d.f6745d;
        }
        try {
            Object b2 = b((Future<Object>) qz0Var);
            if (!isCancelled) {
                return b2 == null ? f6738k : b2;
            }
            String valueOf = String.valueOf(qz0Var);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(valueOf);
            return new d(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e2) {
            if (!isCancelled) {
                String valueOf2 = String.valueOf(qz0Var);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 77);
                sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                sb2.append(valueOf2);
                return new c(new IllegalArgumentException(sb2.toString(), e2));
            }
            return new d(false, e2);
        } catch (ExecutionException e3) {
            if (isCancelled) {
                String valueOf3 = String.valueOf(qz0Var);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 84);
                sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb3.append(valueOf3);
                return new d(false, new IllegalArgumentException(sb3.toString(), e3));
            }
            return new c(e3.getCause());
        } catch (Throwable th2) {
            return new c(th2);
        }
    }

    @Override // com.google.android.gms.internal.ads.qz0
    public void a(Runnable runnable, Executor executor) {
        e eVar;
        uw0.a(runnable, "Runnable was null.");
        uw0.a(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f6740f) != e.f6748d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f6751c = eVar;
                if (f6737j.a((fy0<?>) this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f6740f;
                }
            } while (eVar != e.f6748d);
        }
        b(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(@NullableDecl V v) {
        if (v == null) {
            v = (V) f6738k;
        }
        if (!f6737j.a((fy0<?>) this, (Object) null, (Object) v)) {
            return false;
        }
        a((fy0<?>) this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Throwable th) {
        uw0.a(th);
        if (!f6737j.a((fy0<?>) this, (Object) null, (Object) new c(th))) {
            return false;
        }
        a((fy0<?>) this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(qz0<? extends V> qz0Var) {
        c cVar;
        uw0.a(qz0Var);
        Object obj = this.f6739e;
        if (obj == null) {
            if (qz0Var.isDone()) {
                if (!f6737j.a((fy0<?>) this, (Object) null, b((qz0<?>) qz0Var))) {
                    return false;
                }
                a((fy0<?>) this);
                return true;
            }
            f fVar = new f(this, qz0Var);
            if (f6737j.a((fy0<?>) this, (Object) null, (Object) fVar)) {
                try {
                    qz0Var.a(fVar, xy0.INSTANCE);
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Throwable unused) {
                        cVar = c.f6742b;
                    }
                    f6737j.a((fy0<?>) this, (Object) fVar, (Object) cVar);
                }
                return true;
            }
            obj = this.f6739e;
        }
        if (obj instanceof d) {
            qz0Var.cancel(((d) obj).f6746a);
        }
        return false;
    }

    private static <V> V b(Future<V> future) {
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

    private static void b(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = f6736i;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(fy0<?> fy0Var) {
        e eVar;
        e eVar2;
        e eVar3 = null;
        while (true) {
            l lVar = ((fy0) fy0Var).f6741g;
            if (f6737j.a(fy0Var, lVar, l.f6765c)) {
                while (lVar != null) {
                    Thread thread = lVar.f6766a;
                    if (thread != null) {
                        lVar.f6766a = null;
                        LockSupport.unpark(thread);
                    }
                    lVar = lVar.f6767b;
                }
                fy0Var.b();
                do {
                    eVar = ((fy0) fy0Var).f6740f;
                } while (!f6737j.a(fy0Var, eVar, e.f6748d));
                while (true) {
                    eVar2 = eVar3;
                    eVar3 = eVar;
                    if (eVar3 == null) {
                        break;
                    }
                    eVar = eVar3.f6751c;
                    eVar3.f6751c = eVar2;
                }
                while (eVar2 != null) {
                    eVar3 = eVar2.f6751c;
                    Runnable runnable = eVar2.f6749a;
                    if (runnable instanceof f) {
                        f fVar = (f) runnable;
                        fy0Var = fVar.f6752e;
                        if (((fy0) fy0Var).f6739e == fVar) {
                            if (!f6737j.a((fy0<?>) fy0Var, (Object) fVar, b((qz0<?>) fVar.f6753f))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        b(runnable, eVar2.f6750b);
                    }
                    eVar2 = eVar3;
                }
                return;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f6739e;
            if ((obj2 != null) & (!(obj2 instanceof f))) {
                return (V) b(obj2);
            }
            l lVar = this.f6741g;
            if (lVar != l.f6765c) {
                l lVar2 = new l();
                do {
                    lVar2.a(lVar);
                    if (f6737j.a((fy0<?>) this, lVar, lVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f6739e;
                            } else {
                                a(lVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return (V) b(obj);
                    }
                    lVar = this.f6741g;
                } while (lVar != l.f6765c);
            }
            return (V) b(this.f6739e);
        }
        throw new InterruptedException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.j01
    @NullableDecl
    public final Throwable a() {
        if (!(this instanceof h)) {
            return null;
        }
        Object obj = this.f6739e;
        if (obj instanceof c) {
            return ((c) obj).f6743a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@NullableDecl Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(d());
        }
    }

    private final void a(StringBuilder sb) {
        try {
            Object b2 = b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(c(b2));
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
}
