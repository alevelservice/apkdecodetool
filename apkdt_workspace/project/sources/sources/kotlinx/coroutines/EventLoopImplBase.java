package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: EventLoop.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\b \u0018\u00002\u00020\u00012\u00020\u0002:\u0003678B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\bH\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u0007j\u0002`\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\u00052\n\u0010\u0010\u001a\u00060\u0007j\u0002`\b¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0014\u001a\u00020\u00132\n\u0010\u0010\u001a\u00060\u0007j\u0002`\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0004¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b!\u0010\"J%\u0010&\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00162\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050$H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u001bH\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0005H\u0014¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0005H\u0002¢\u0006\u0004\b+\u0010\u0004R\u0016\u0010,\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010.\u001a\u00020\u00138T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0016\u00101\u001a\u00020\u00168T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b0\u0010\u0018R\u0016\u00105\u001a\u0002028$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b3\u00104¨\u00069"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "Lkotlinx/coroutines/EventLoop;", "Lkotlinx/coroutines/Delay;", "<init>", "()V", "", "closeQueue", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dequeue", "()Ljava/lang/Runnable;", "Lkotlin/coroutines/CoroutineContext;", "context", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "task", "enqueue", "(Ljava/lang/Runnable;)V", "", "enqueueImpl", "(Ljava/lang/Runnable;)Z", "", "processNextEvent", "()J", "rescheduleAllDelayed", "resetAll", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "schedule$kotlinx_coroutines_core", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "schedule", "", "scheduleImpl", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "timeMillis", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "shouldUnpark", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z", "shutdown", "unpark", "isCompleted", "Z", "isEmpty", "()Z", "getNextTime", "nextTime", "Ljava/lang/Thread;", "getThread", "()Ljava/lang/Thread;", "thread", "DelayedResumeTask", "DelayedRunnableTask", "DelayedTask", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlinx.coroutines.x0, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public abstract class EventLoopImplBase extends w0 implements o0 {

    /* renamed from: h, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20149h = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue");

    /* renamed from: i, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20150i = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed");
    private volatile boolean isCompleted;
    private volatile Object _queue = null;
    private volatile Object _delayed = null;

    /* compiled from: EventLoop.kt */
    /* renamed from: kotlinx.coroutines.x0$a */
    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable, Comparable<a>, t0, kotlinx.coroutines.internal.z {

        /* renamed from: e, reason: collision with root package name */
        private Object f20151e;

        /* renamed from: f, reason: collision with root package name */
        private int f20152f;

        /* renamed from: g, reason: collision with root package name */
        @JvmField
        public final long f20153g;

        @Override // kotlinx.coroutines.internal.z
        @Nullable
        public kotlinx.coroutines.internal.y<?> a() {
            Object obj = this.f20151e;
            if (!(obj instanceof kotlinx.coroutines.internal.y)) {
                obj = null;
            }
            return (kotlinx.coroutines.internal.y) obj;
        }

        @Override // kotlinx.coroutines.internal.z
        public int b() {
            return this.f20152f;
        }

        public final void c() {
            k0.f20104k.a(this);
        }

        @Override // kotlinx.coroutines.t0
        public final synchronized void dispose() {
            kotlinx.coroutines.internal.t tVar;
            kotlinx.coroutines.internal.t tVar2;
            Object obj = this.f20151e;
            tVar = y0.f20156a;
            if (obj == tVar) {
                return;
            }
            if (!(obj instanceof kotlinx.coroutines.internal.y)) {
                obj = null;
            }
            kotlinx.coroutines.internal.y yVar = (kotlinx.coroutines.internal.y) obj;
            if (yVar != null) {
                yVar.b((kotlinx.coroutines.internal.y) this);
            }
            tVar2 = y0.f20156a;
            this.f20151e = tVar2;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.f20153g + ']';
        }

        @Override // kotlinx.coroutines.internal.z
        public void a(@Nullable kotlinx.coroutines.internal.y<?> yVar) {
            kotlinx.coroutines.internal.t tVar;
            Object obj = this.f20151e;
            tVar = y0.f20156a;
            if (obj != tVar) {
                this.f20151e = yVar;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // kotlinx.coroutines.internal.z
        public void a(int i2) {
            this.f20152f = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull a aVar) {
            kotlin.jvm.d.h.b(aVar, "other");
            long j2 = this.f20153g - aVar.f20153g;
            if (j2 > 0) {
                return 1;
            }
            return j2 < 0 ? -1 : 0;
        }

        public final boolean a(long j2) {
            return j2 - this.f20153g >= 0;
        }

        public final synchronized int a(@NotNull kotlinx.coroutines.internal.y<a> yVar, @NotNull EventLoopImplBase eventLoopImplBase) {
            kotlinx.coroutines.internal.t tVar;
            int i2;
            kotlin.jvm.d.h.b(yVar, "delayed");
            kotlin.jvm.d.h.b(eventLoopImplBase, "eventLoop");
            Object obj = this.f20151e;
            tVar = y0.f20156a;
            if (obj == tVar) {
                return 2;
            }
            synchronized (yVar) {
                if (!eventLoopImplBase.isCompleted) {
                    yVar.a((kotlinx.coroutines.internal.y<a>) this);
                    i2 = 1;
                } else {
                    i2 = 0;
                }
            }
            return i2 ^ 1;
        }
    }

    private final Runnable A() {
        kotlinx.coroutines.internal.t tVar;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                tVar = y0.f20157b;
                if (obj == tVar) {
                    return null;
                }
                if (f20149h.compareAndSet(this, obj, null)) {
                    if (obj != null) {
                        return (Runnable) obj;
                    }
                    throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            } else if (obj != null) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                Object e2 = lockFreeTaskQueueCore.e();
                if (e2 != LockFreeTaskQueueCore.f20081g) {
                    return (Runnable) e2;
                }
                f20149h.compareAndSet(this, obj, lockFreeTaskQueueCore.d());
            } else {
                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
            }
        }
    }

    private final void B() {
        a aVar;
        while (true) {
            kotlinx.coroutines.internal.y yVar = (kotlinx.coroutines.internal.y) this._delayed;
            if (yVar == null || (aVar = (a) yVar.d()) == null) {
                return;
            } else {
                aVar.c();
            }
        }
    }

    private final void C() {
        Thread s = s();
        if (Thread.currentThread() != s) {
            c2.a().a(s);
        }
    }

    private final boolean c(a aVar) {
        kotlinx.coroutines.internal.y yVar = (kotlinx.coroutines.internal.y) this._delayed;
        return (yVar != null ? (a) yVar.c() : null) == aVar;
    }

    private final void z() {
        kotlinx.coroutines.internal.t tVar;
        kotlinx.coroutines.internal.t tVar2;
        boolean z = this.isCompleted;
        if (kotlin.u.f19947a && !z) {
            throw new AssertionError("Assertion failed");
        }
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f20149h;
                tVar = y0.f20157b;
                if (atomicReferenceFieldUpdater.compareAndSet(this, null, tVar)) {
                    return;
                }
            } else if (!(obj instanceof LockFreeTaskQueueCore)) {
                tVar2 = y0.f20157b;
                if (obj == tVar2) {
                    return;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                if (obj != null) {
                    lockFreeTaskQueueCore.a((LockFreeTaskQueueCore) obj);
                    if (f20149h.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        return;
                    }
                } else {
                    throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            } else {
                ((LockFreeTaskQueueCore) obj).a();
                return;
            }
        }
    }

    public final void b(@NotNull Runnable runnable) {
        kotlin.jvm.d.h.b(runnable, "task");
        if (c(runnable)) {
            C();
        } else {
            k0.f20104k.b(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.w0
    public long o() {
        a aVar;
        long a2;
        kotlinx.coroutines.internal.t tVar;
        if (super.o() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                tVar = y0.f20157b;
                return obj == tVar ? Long.MAX_VALUE : 0L;
            }
            if (!((LockFreeTaskQueueCore) obj).c()) {
                return 0L;
            }
        }
        kotlinx.coroutines.internal.y yVar = (kotlinx.coroutines.internal.y) this._delayed;
        if (yVar == null || (aVar = (a) yVar.c()) == null) {
            return Long.MAX_VALUE;
        }
        a2 = kotlin.ranges.q.a(aVar.f20153g - c2.a().b(), 0L);
        return a2;
    }

    @NotNull
    protected abstract Thread s();

    @Override // kotlinx.coroutines.w0
    protected void shutdown() {
        a2.f19985b.b();
        this.isCompleted = true;
        z();
        do {
        } while (u() <= 0);
        B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean t() {
        kotlinx.coroutines.internal.t tVar;
        if (!q()) {
            return false;
        }
        kotlinx.coroutines.internal.y yVar = (kotlinx.coroutines.internal.y) this._delayed;
        if (yVar != null && !yVar.b()) {
            return false;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof LockFreeTaskQueueCore) {
                return ((LockFreeTaskQueueCore) obj).c();
            }
            tVar = y0.f20157b;
            if (obj != tVar) {
                return false;
            }
        }
        return true;
    }

    public long u() {
        Object obj;
        if (r()) {
            return o();
        }
        kotlinx.coroutines.internal.y yVar = (kotlinx.coroutines.internal.y) this._delayed;
        if (yVar != null && !yVar.b()) {
            long b2 = c2.a().b();
            do {
                synchronized (yVar) {
                    kotlinx.coroutines.internal.z a2 = yVar.a();
                    if (a2 != null) {
                        a aVar = (a) a2;
                        obj = aVar.a(b2) ? c((Runnable) aVar) : false ? yVar.a(0) : null;
                    }
                }
            } while (((a) obj) != null);
        }
        Runnable A = A();
        if (A != null) {
            A.run();
        }
        return o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v() {
        this._queue = null;
        this._delayed = null;
    }

    private final boolean c(Runnable runnable) {
        kotlinx.coroutines.internal.t tVar;
        while (true) {
            Object obj = this._queue;
            if (this.isCompleted) {
                return false;
            }
            if (obj == null) {
                if (f20149h.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof LockFreeTaskQueueCore)) {
                tVar = y0.f20157b;
                if (obj == tVar) {
                    return false;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                if (obj != null) {
                    lockFreeTaskQueueCore.a((LockFreeTaskQueueCore) obj);
                    lockFreeTaskQueueCore.a((LockFreeTaskQueueCore) runnable);
                    if (f20149h.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        return true;
                    }
                } else {
                    throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            } else if (obj != null) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore2 = (LockFreeTaskQueueCore) obj;
                int a2 = lockFreeTaskQueueCore2.a((LockFreeTaskQueueCore) runnable);
                if (a2 == 0) {
                    return true;
                }
                if (a2 == 1) {
                    f20149h.compareAndSet(this, obj, lockFreeTaskQueueCore2.d());
                } else if (a2 == 2) {
                    return false;
                }
            } else {
                throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
            }
        }
    }

    @Override // kotlinx.coroutines.z
    /* renamed from: a */
    public final void mo32a(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        kotlin.jvm.d.h.b(coroutineContext, "context");
        kotlin.jvm.d.h.b(runnable, "block");
        b(runnable);
    }

    public final void a(@NotNull a aVar) {
        kotlin.jvm.d.h.b(aVar, "delayedTask");
        int b2 = b(aVar);
        if (b2 == 0) {
            if (c(aVar)) {
                C();
            }
        } else if (b2 == 1) {
            k0.f20104k.a(aVar);
        } else if (b2 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    private final int b(a aVar) {
        if (this.isCompleted) {
            return 1;
        }
        kotlinx.coroutines.internal.y<a> yVar = (kotlinx.coroutines.internal.y) this._delayed;
        if (yVar == null) {
            f20150i.compareAndSet(this, null, new kotlinx.coroutines.internal.y());
            Object obj = this._delayed;
            if (obj == null) {
                kotlin.jvm.d.h.a();
                throw null;
            }
            yVar = (kotlinx.coroutines.internal.y) obj;
        }
        return aVar.a(yVar, this);
    }
}
