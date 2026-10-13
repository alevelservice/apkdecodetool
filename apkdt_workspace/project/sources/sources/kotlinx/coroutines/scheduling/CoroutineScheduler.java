package kotlinx.coroutines.scheduling;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.jvm.d.e;
import kotlin.jvm.d.h;
import kotlin.ranges.q;
import kotlin.u;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.internal.t;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CoroutineScheduler.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\b\u0000\u0018\u0000 U2\u00020\u00012\u00020\u0002:\u0003UVWB+\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0006H\u0082\b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u001c\u001a\u00020\u00192\n\u0010\u0016\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u001d\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0006H\u0082\b¢\u0006\u0004\b\u001d\u0010\u000eJ\u0015\u0010\u001f\u001a\b\u0018\u00010\u001eR\u00020\u0000H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b!\u0010\u0011J\u0010\u0010\"\u001a\u00020\u0003H\u0082\b¢\u0006\u0004\b\"\u0010\u0013J-\u0010%\u001a\u00020\u000f2\n\u0010\u0016\u001a\u00060\u0014j\u0002`\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u001b\u0010(\u001a\u00020\u000f2\n\u0010'\u001a\u00060\u0014j\u0002`\u0015H\u0016¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b*\u0010\u0011J\u0010\u0010+\u001a\u00020\u0003H\u0082\b¢\u0006\u0004\b+\u0010\u0013J\u001b\u0010-\u001a\u00020\u00032\n\u0010,\u001a\u00060\u001eR\u00020\u0000H\u0002¢\u0006\u0004\b-\u0010.J\u0015\u0010/\u001a\b\u0018\u00010\u001eR\u00020\u0000H\u0002¢\u0006\u0004\b/\u0010 J\u001b\u00100\u001a\u00020\u000f2\n\u0010,\u001a\u00060\u001eR\u00020\u0000H\u0002¢\u0006\u0004\b0\u00101J+\u00104\u001a\u00020\u000f2\n\u0010,\u001a\u00060\u001eR\u00020\u00002\u0006\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u0003H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u000fH\u0002¢\u0006\u0004\b6\u0010\u0011J\u0017\u00108\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u0019H\u0002¢\u0006\u0004\b8\u00109J\u0015\u0010;\u001a\u00020\u000f2\u0006\u0010:\u001a\u00020\u0006¢\u0006\u0004\b;\u0010<J\u001f\u0010=\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00192\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\bH\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020#H\u0002¢\u0006\u0004\bA\u0010BR\u0017\u0010\r\u001a\u00020\u00038Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010DR\u0016\u0010F\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0017\u0010\u001d\u001a\u00020\u00038Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bH\u0010\u0013R\u0016\u0010J\u001a\u00020I8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010LR\u0016\u0010M\u001a\u00020#8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010BR\u0016\u0010\u0005\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010DR\u0016\u0010O\u001a\u00020N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010QR\"\u0010S\u001a\u000e\u0012\n\u0012\b\u0018\u00010\u001eR\u00020\u00000R8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010T¨\u0006X"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "", "corePoolSize", "maxPoolSize", "", "idleWorkerKeepAliveNs", "", "schedulerName", "<init>", "(IIJLjava/lang/String;)V", "state", "blockingWorkers", "(J)I", "", "close", "()V", "createNewWorker", "()I", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "Lkotlinx/coroutines/scheduling/Task;", "createTask$kotlinx_coroutines_core", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;", "createTask", "createdWorkers", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "currentWorker", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "decrementBlockingWorkers", "decrementCreatedWorkers", "", "fair", "dispatch", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V", "command", "execute", "(Ljava/lang/Runnable;)V", "incrementBlockingWorkers", "incrementCreatedWorkers", "worker", "parkedWorkersStackNextIndex", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I", "parkedWorkersStackPop", "parkedWorkersStackPush", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V", "oldIndex", "newIndex", "parkedWorkersStackTopUpdate", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V", "requestCpuWorker", "task", "runSafely", "(Lkotlinx/coroutines/scheduling/Task;)V", "timeout", "shutdown", "(J)V", "submitToLocalQueue", "(Lkotlinx/coroutines/scheduling/Task;Z)I", "toString", "()Ljava/lang/String;", "tryUnpark", "()Z", "getBlockingWorkers", "I", "Ljava/util/concurrent/Semaphore;", "cpuPermits", "Ljava/util/concurrent/Semaphore;", "getCreatedWorkers", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "J", "isTerminated", "Ljava/util/Random;", "random", "Ljava/util/Random;", "Ljava/lang/String;", "", "workers", "[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.f2.a, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    private static final AtomicLongFieldUpdater m;
    static final AtomicLongFieldUpdater n;
    private static final AtomicIntegerFieldUpdater o;
    private static final int p;
    private static final int q;
    private static final int r;
    private static final int s;
    private static final t t;
    private volatile int _isTerminated;
    volatile long controlState;

    /* renamed from: e, reason: collision with root package name */
    private final e f20002e;

    /* renamed from: f, reason: collision with root package name */
    private final Semaphore f20003f;

    /* renamed from: g, reason: collision with root package name */
    private final b[] f20004g;

    /* renamed from: h, reason: collision with root package name */
    private final Random f20005h;

    /* renamed from: i, reason: collision with root package name */
    private final int f20006i;

    /* renamed from: j, reason: collision with root package name */
    private final int f20007j;

    /* renamed from: k, reason: collision with root package name */
    private final long f20008k;

    /* renamed from: l, reason: collision with root package name */
    private final String f20009l;
    private volatile long parkedWorkersStack;

    /* compiled from: CoroutineScheduler.kt */
    /* renamed from: kotlinx.coroutines.f2.a$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(e eVar) {
            this();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    /* renamed from: kotlinx.coroutines.f2.a$b */
    /* loaded from: classes2.dex */
    public final class b extends Thread {

        /* renamed from: l, reason: collision with root package name */
        private static final AtomicIntegerFieldUpdater f20010l = AtomicIntegerFieldUpdater.newUpdater(b.class, "terminationState");

        /* renamed from: e, reason: collision with root package name */
        @NotNull
        private final o f20011e;

        /* renamed from: f, reason: collision with root package name */
        private long f20012f;

        /* renamed from: g, reason: collision with root package name */
        private long f20013g;

        /* renamed from: h, reason: collision with root package name */
        private int f20014h;

        /* renamed from: i, reason: collision with root package name */
        private int f20015i;
        private volatile int indexInArray;

        /* renamed from: j, reason: collision with root package name */
        private int f20016j;

        @Nullable
        private volatile Object nextParkedWorker;
        private volatile int spins;

        @NotNull
        private volatile c state;
        private volatile int terminationState;

        private b() {
            setDaemon(true);
            this.f20011e = new o();
            this.state = c.RETIRING;
            this.terminationState = 0;
            this.nextParkedWorker = CoroutineScheduler.t;
            this.f20014h = CoroutineScheduler.s;
            this.f20015i = CoroutineScheduler.this.f20005h.nextInt();
        }

        private final boolean k() {
            i a2 = CoroutineScheduler.this.f20002e.a(l.PROBABLY_BLOCKING);
            if (a2 == null) {
                return true;
            }
            this.f20011e.a(a2, CoroutineScheduler.this.f20002e);
            return false;
        }

        private final void l() {
            a(c.PARKING);
            if (k()) {
                this.terminationState = 0;
                if (this.f20012f == 0) {
                    this.f20012f = System.nanoTime() + CoroutineScheduler.this.f20008k;
                }
                if (a(CoroutineScheduler.this.f20008k) && System.nanoTime() - this.f20012f >= 0) {
                    this.f20012f = 0L;
                    p();
                }
            }
        }

        private final void m() {
            int b2;
            int i2 = this.spins;
            if (i2 > CoroutineScheduler.q) {
                if (this.f20014h < CoroutineScheduler.r) {
                    b2 = q.b((this.f20014h * 3) >>> 1, CoroutineScheduler.r);
                    this.f20014h = b2;
                }
                a(c.PARKING);
                a(this.f20014h);
                return;
            }
            this.spins = i2 + 1;
            if (i2 >= CoroutineScheduler.p) {
                Thread.yield();
            }
        }

        private final i n() {
            i c2;
            i a2;
            boolean z = a(CoroutineScheduler.this.f20006i * 2) == 0;
            if (z && (a2 = CoroutineScheduler.this.f20002e.a(l.NON_BLOCKING)) != null) {
                return a2;
            }
            i b2 = this.f20011e.b();
            return b2 != null ? b2 : (z || (c2 = CoroutineScheduler.this.f20002e.c()) == null) ? o() : c2;
        }

        private final i o() {
            int q = CoroutineScheduler.this.q();
            if (q < 2) {
                return null;
            }
            int i2 = this.f20016j;
            if (i2 == 0) {
                i2 = a(q);
            }
            int i3 = i2 + 1;
            if (i3 > q) {
                i3 = 1;
            }
            this.f20016j = i3;
            b bVar = CoroutineScheduler.this.f20004g[i3];
            if (bVar == null || bVar == this || !this.f20011e.a(bVar.f20011e, CoroutineScheduler.this.f20002e)) {
                return null;
            }
            return this.f20011e.b();
        }

        private final void p() {
            synchronized (CoroutineScheduler.this.f20004g) {
                if (CoroutineScheduler.this.isTerminated()) {
                    return;
                }
                if (CoroutineScheduler.this.q() <= CoroutineScheduler.this.f20006i) {
                    return;
                }
                if (k()) {
                    if (f20010l.compareAndSet(this, 0, 1)) {
                        int i2 = this.indexInArray;
                        b(0);
                        CoroutineScheduler.this.a(this, i2, 0);
                        int andDecrement = (int) (CoroutineScheduler.n.getAndDecrement(CoroutineScheduler.this) & 2097151);
                        if (andDecrement != i2) {
                            b bVar = CoroutineScheduler.this.f20004g[andDecrement];
                            if (bVar != null) {
                                CoroutineScheduler.this.f20004g[i2] = bVar;
                                bVar.b(i2);
                                CoroutineScheduler.this.a(bVar, andDecrement, i2);
                            } else {
                                h.a();
                                throw null;
                            }
                        }
                        CoroutineScheduler.this.f20004g[andDecrement] = null;
                        kotlin.t tVar = kotlin.t.f19946a;
                        this.state = c.TERMINATED;
                    }
                }
            }
        }

        public final void a(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        public final int b() {
            return this.indexInArray;
        }

        @NotNull
        public final o c() {
            return this.f20011e;
        }

        @Nullable
        public final Object d() {
            return this.nextParkedWorker;
        }

        @NotNull
        public final CoroutineScheduler e() {
            return CoroutineScheduler.this;
        }

        public final void f() {
            this.f20014h = CoroutineScheduler.s;
            this.spins = 0;
        }

        public final boolean g() {
            return this.state == c.BLOCKING;
        }

        @Override // java.lang.Thread
        @NotNull
        public final c getState() {
            return this.state;
        }

        public final boolean h() {
            return this.state == c.PARKING;
        }

        public final boolean i() {
            if (this.state == c.CPU_ACQUIRED) {
                return true;
            }
            if (!CoroutineScheduler.this.f20003f.tryAcquire()) {
                return false;
            }
            this.state = c.CPU_ACQUIRED;
            return true;
        }

        public final boolean j() {
            int i2 = this.terminationState;
            if (i2 == -1) {
                return false;
            }
            if (i2 == 0) {
                return f20010l.compareAndSet(this, 0, -1);
            }
            if (i2 == 1) {
                return false;
            }
            throw new IllegalStateException(("Invalid terminationState = " + i2).toString());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z = false;
            while (!CoroutineScheduler.this.isTerminated() && this.state != c.TERMINATED) {
                i a2 = a();
                if (a2 == null) {
                    if (this.state == c.CPU_ACQUIRED) {
                        m();
                    } else {
                        l();
                    }
                    z = true;
                } else {
                    l a3 = a2.a();
                    if (z) {
                        b(a3);
                        z = false;
                    }
                    a(a3, a2.f20035e);
                    CoroutineScheduler.this.a(a2);
                    a(a3);
                }
            }
            a(c.TERMINATED);
        }

        public final boolean a(@NotNull c cVar) {
            h.b(cVar, "newState");
            c cVar2 = this.state;
            boolean z = cVar2 == c.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.this.f20003f.release();
            }
            if (cVar2 != cVar) {
                this.state = cVar;
            }
            return z;
        }

        public final void b(int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.f20009l);
            sb.append("-worker-");
            sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
            setName(sb.toString());
            this.indexInArray = i2;
        }

        private final void b(l lVar) {
            this.f20012f = 0L;
            this.f20016j = 0;
            if (this.state == c.PARKING) {
                boolean z = lVar == l.PROBABLY_BLOCKING;
                if (u.f19947a && !z) {
                    throw new AssertionError("Assertion failed");
                }
                this.state = c.BLOCKING;
                this.f20014h = CoroutineScheduler.s;
            }
            this.spins = 0;
        }

        private final void a(l lVar, long j2) {
            if (lVar == l.NON_BLOCKING) {
                if (CoroutineScheduler.this.f20003f.availablePermits() == 0) {
                    return;
                }
                long a2 = m.f20044f.a();
                long j3 = a2 - j2;
                long j4 = m.f20039a;
                if (j3 < j4 || a2 - this.f20013g < j4 * 5) {
                    return;
                }
                this.f20013g = a2;
                CoroutineScheduler.this.s();
                return;
            }
            CoroutineScheduler.n.addAndGet(CoroutineScheduler.this, 2097152L);
            if (a(c.BLOCKING)) {
                CoroutineScheduler.this.s();
            }
        }

        public b(CoroutineScheduler coroutineScheduler, int i2) {
            this();
            b(i2);
        }

        private final void a(l lVar) {
            if (lVar != l.NON_BLOCKING) {
                CoroutineScheduler.n.addAndGet(CoroutineScheduler.this, -2097152L);
                c cVar = this.state;
                if (cVar != c.TERMINATED) {
                    boolean z = cVar == c.BLOCKING;
                    if (!u.f19947a || z) {
                        this.state = c.RETIRING;
                        return;
                    }
                    throw new AssertionError("Expected BLOCKING state, but has " + cVar);
                }
            }
        }

        public final int a(int i2) {
            int i3 = this.f20015i;
            this.f20015i = i3 ^ (i3 << 13);
            int i4 = this.f20015i;
            this.f20015i = i4 ^ (i4 >> 17);
            int i5 = this.f20015i;
            this.f20015i = i5 ^ (i5 << 5);
            int i6 = i2 - 1;
            if ((i6 & i2) == 0) {
                return this.f20015i & i6;
            }
            return (this.f20015i & Integer.MAX_VALUE) % i2;
        }

        private final boolean a(long j2) {
            CoroutineScheduler.this.b(this);
            if (!k()) {
                return false;
            }
            LockSupport.parkNanos(j2);
            return true;
        }

        @Nullable
        public final i a() {
            if (i()) {
                return n();
            }
            i b2 = this.f20011e.b();
            return b2 != null ? b2 : CoroutineScheduler.this.f20002e.a(l.PROBABLY_BLOCKING);
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    /* renamed from: kotlinx.coroutines.f2.a$c */
    /* loaded from: classes2.dex */
    public enum c {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        RETIRING,
        TERMINATED
    }

    static {
        int a2;
        int a3;
        long a4;
        long b2;
        new a(null);
        a2 = w.a("kotlinx.coroutines.scheduler.spins", 1000, 1, 0, 8, (Object) null);
        p = a2;
        int i2 = p;
        a3 = w.a("kotlinx.coroutines.scheduler.yields", 0, 0, 0, 8, (Object) null);
        q = i2 + a3;
        r = (int) TimeUnit.SECONDS.toNanos(1L);
        a4 = q.a(m.f20039a / 4, 10L);
        b2 = q.b(a4, r);
        s = (int) b2;
        t = new t("NOT_IN_STACK");
        m = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");
        n = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");
        o = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");
    }

    public CoroutineScheduler(int i2, int i3, long j2, @NotNull String str) {
        h.b(str, "schedulerName");
        this.f20006i = i2;
        this.f20007j = i3;
        this.f20008k = j2;
        this.f20009l = str;
        if (this.f20006i >= 1) {
            if (this.f20007j >= this.f20006i) {
                if (!(this.f20007j <= 2097150)) {
                    throw new IllegalArgumentException(("Max pool size " + this.f20007j + " should not exceed maximal supported number of threads 2097150").toString());
                }
                if (this.f20008k > 0) {
                    this.f20002e = new e();
                    this.f20003f = new Semaphore(this.f20006i, false);
                    this.parkedWorkersStack = 0L;
                    this.f20004g = new b[this.f20007j + 1];
                    this.controlState = 0L;
                    this.f20005h = new Random();
                    this._isTerminated = 0;
                    return;
                }
                throw new IllegalArgumentException(("Idle worker keep alive time " + this.f20008k + " must be positive").toString());
            }
            throw new IllegalArgumentException(("Max pool size " + this.f20007j + " should be greater than or equals to core pool size " + this.f20006i).toString());
        }
        throw new IllegalArgumentException(("Core pool size " + this.f20006i + " should be at least 1").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isTerminated() {
        return this._isTerminated != 0;
    }

    private final int o() {
        synchronized (this.f20004g) {
            if (isTerminated()) {
                return -1;
            }
            long j2 = this.controlState;
            int i2 = (int) (j2 & 2097151);
            int i3 = i2 - ((int) ((j2 & 4398044413952L) >> 21));
            if (i3 >= this.f20006i) {
                return 0;
            }
            if (i2 < this.f20007j && this.f20003f.availablePermits() != 0) {
                int i4 = ((int) (this.controlState & 2097151)) + 1;
                if (i4 > 0 && this.f20004g[i4] == null) {
                    b bVar = new b(this, i4);
                    bVar.start();
                    if (i4 == ((int) (2097151 & n.incrementAndGet(this)))) {
                        this.f20004g[i4] = bVar;
                        return i3 + 1;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            return 0;
        }
    }

    private final b p() {
        Thread currentThread = Thread.currentThread();
        if (!(currentThread instanceof b)) {
            currentThread = null;
        }
        b bVar = (b) currentThread;
        if (bVar == null || !h.a(bVar.e(), this)) {
            return null;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int q() {
        return (int) (this.controlState & 2097151);
    }

    private final b r() {
        while (true) {
            long j2 = this.parkedWorkersStack;
            b bVar = this.f20004g[(int) (2097151 & j2)];
            if (bVar == null) {
                return null;
            }
            long j3 = (2097152 + j2) & (-2097152);
            int a2 = a(bVar);
            if (a2 >= 0 && m.compareAndSet(this, j2, a2 | j3)) {
                bVar.a(t);
                return bVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s() {
        if (this.f20003f.availablePermits() == 0) {
            t();
            return;
        }
        if (t()) {
            return;
        }
        long j2 = this.controlState;
        if (((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)) < this.f20006i) {
            int o2 = o();
            if (o2 == 1 && this.f20006i > 1) {
                o();
            }
            if (o2 > 0) {
                return;
            }
        }
        t();
    }

    private final boolean t() {
        while (true) {
            b r2 = r();
            if (r2 == null) {
                return false;
            }
            r2.f();
            boolean h2 = r2.h();
            LockSupport.unpark(r2);
            if (h2 && r2.j()) {
                return true;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        h(10000L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable command) {
        h.b(command, "command");
        a(this, command, null, false, 6, null);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (b bVar : this.f20004g) {
            if (bVar != null) {
                int c2 = bVar.c().c();
                int i7 = kotlinx.coroutines.scheduling.b.f20019a[bVar.getState().ordinal()];
                if (i7 == 1) {
                    i4++;
                } else if (i7 == 2) {
                    i3++;
                    arrayList.add(String.valueOf(c2) + "b");
                } else if (i7 == 3) {
                    i2++;
                    arrayList.add(String.valueOf(c2) + "c");
                } else if (i7 == 4) {
                    i5++;
                    if (c2 > 0) {
                        arrayList.add(String.valueOf(c2) + "r");
                    }
                } else if (i7 == 5) {
                    i6++;
                }
            }
        }
        long j2 = this.controlState;
        return this.f20009l + '@' + j0.b(this) + "[Pool Size {core = " + this.f20006i + ", max = " + this.f20007j + "}, Worker States {CPU = " + i2 + ", blocking = " + i3 + ", parked = " + i4 + ", retired = " + i5 + ", terminated = " + i6 + "}, running workers queues = " + arrayList + ", global queue size = " + this.f20002e.b() + ", Control State Workers {created = " + ((int) (2097151 & j2)) + ", blocking = " + ((int) ((j2 & 4398044413952L) >> 21)) + "}]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(b bVar) {
        long j2;
        long j3;
        int b2;
        if (bVar.d() != t) {
            return;
        }
        do {
            j2 = this.parkedWorkersStack;
            int i2 = (int) (2097151 & j2);
            j3 = (2097152 + j2) & (-2097152);
            b2 = bVar.b();
            boolean z = b2 != 0;
            if (u.f19947a && !z) {
                throw new AssertionError("Assertion failed");
            }
            bVar.a(this.f20004g[i2]);
        } while (!m.compareAndSet(this, j2, b2 | j3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0079, code lost:
    
        if (r9 != null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(long r9) {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.o
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            kotlinx.coroutines.f2.a$b r0 = r8.p()
            kotlinx.coroutines.f2.a$b[] r3 = r8.f20004g
            monitor-enter(r3)
            long r4 = r8.controlState     // Catch: java.lang.Throwable -> Lb2
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r5 = (int) r4
            monitor-exit(r3)
            if (r2 > r5) goto L6e
            r3 = 1
        L1d:
            kotlinx.coroutines.f2.a$b[] r4 = r8.f20004g
            r4 = r4[r3]
            if (r4 == 0) goto L69
            if (r4 == r0) goto L64
        L25:
            boolean r6 = r4.isAlive()
            if (r6 == 0) goto L32
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r4.join(r9)
            goto L25
        L32:
            kotlinx.coroutines.f2.a$c r6 = r4.getState()
            kotlinx.coroutines.f2.a$c r7 = kotlinx.coroutines.scheduling.CoroutineScheduler.c.TERMINATED
            if (r6 != r7) goto L3c
            r7 = 1
            goto L3d
        L3c:
            r7 = 0
        L3d:
            if (r7 == 0) goto L49
            kotlinx.coroutines.f2.o r4 = r4.c()
            kotlinx.coroutines.f2.e r6 = r8.f20002e
            r4.a(r6)
            goto L64
        L49:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "Expected TERMINATED state, but found "
            r9.append(r10)
            r9.append(r6)
            java.lang.String r9 = r9.toString()
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        L64:
            if (r3 == r5) goto L6e
            int r3 = r3 + 1
            goto L1d
        L69:
            kotlin.jvm.d.h.a()
            r9 = 0
            throw r9
        L6e:
            kotlinx.coroutines.f2.e r9 = r8.f20002e
            r9.a()
        L73:
            if (r0 == 0) goto L7c
            kotlinx.coroutines.f2.i r9 = r0.a()
            if (r9 == 0) goto L7c
            goto L84
        L7c:
            kotlinx.coroutines.f2.e r9 = r8.f20002e
            java.lang.Object r9 = r9.c()
            kotlinx.coroutines.f2.i r9 = (kotlinx.coroutines.scheduling.i) r9
        L84:
            if (r9 == 0) goto L8a
            r8.a(r9)
            goto L73
        L8a:
            if (r0 == 0) goto L91
            kotlinx.coroutines.f2.a$c r9 = kotlinx.coroutines.scheduling.CoroutineScheduler.c.TERMINATED
            r0.a(r9)
        L91:
            java.util.concurrent.Semaphore r9 = r8.f20003f
            int r9 = r9.availablePermits()
            int r10 = r8.f20006i
            if (r9 != r10) goto L9c
            r1 = 1
        L9c:
            boolean r9 = kotlin.u.f19947a
            if (r9 == 0) goto Lab
            if (r1 == 0) goto La3
            goto Lab
        La3:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            java.lang.String r10 = "Assertion failed"
            r9.<init>(r10)
            throw r9
        Lab:
            r9 = 0
            r8.parkedWorkersStack = r9
            r8.controlState = r9
            return
        Lb2:
            r9 = move-exception
            monitor-exit(r3)
            goto Lb6
        Lb5:
            throw r9
        Lb6:
            goto Lb5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.h(long):void");
    }

    private final int a(b bVar) {
        Object d2 = bVar.d();
        while (d2 != t) {
            if (d2 == null) {
                return 0;
            }
            b bVar2 = (b) d2;
            int b2 = bVar2.b();
            if (b2 != 0) {
                return b2;
            }
            d2 = bVar2.d();
        }
        return -1;
    }

    public static /* synthetic */ void a(CoroutineScheduler coroutineScheduler, Runnable runnable, j jVar, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            jVar = h.f20034f;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        coroutineScheduler.a(runnable, jVar, z);
    }

    public final void a(@NotNull Runnable runnable, @NotNull j jVar, boolean z) {
        h.b(runnable, "block");
        h.b(jVar, "taskContext");
        c2.a().e();
        i a2 = a(runnable, jVar);
        int a3 = a(a2, z);
        if (a3 != -1) {
            if (a3 != 1) {
                s();
            } else {
                if (this.f20002e.a((e) a2)) {
                    s();
                    return;
                }
                throw new RejectedExecutionException(this.f20009l + " was terminated");
            }
        }
    }

    @NotNull
    public final i a(@NotNull Runnable runnable, @NotNull j jVar) {
        h.b(runnable, "block");
        h.b(jVar, "taskContext");
        long a2 = m.f20044f.a();
        if (runnable instanceof i) {
            i iVar = (i) runnable;
            iVar.f20035e = a2;
            iVar.f20036f = jVar;
            return iVar;
        }
        return new k(runnable, a2, jVar);
    }

    private final int a(i iVar, boolean z) {
        boolean a2;
        b p2 = p();
        if (p2 == null || p2.getState() == c.TERMINATED) {
            return 1;
        }
        int i2 = -1;
        if (iVar.a() == l.NON_BLOCKING) {
            if (p2.g()) {
                i2 = 0;
            } else if (!p2.i()) {
                return 1;
            }
        }
        if (z) {
            a2 = p2.c().b(iVar, this.f20002e);
        } else {
            a2 = p2.c().a(iVar, this.f20002e);
        }
        if (!a2 || p2.c().a() > m.f20040b) {
            return 0;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(i iVar) {
        try {
            iVar.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar, int i2, int i3) {
        int i4;
        while (true) {
            long j2 = this.parkedWorkersStack;
            int i5 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (i5 == i2) {
                i4 = i3 == 0 ? a(bVar) : i3;
            } else {
                i4 = i5;
            }
            if (i4 >= 0 && m.compareAndSet(this, j2, j3 | i4)) {
                return;
            }
        }
    }
}
