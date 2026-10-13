package kotlinx.coroutines;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CancellableContinuationImpl.kt */
@PublishedApi
/* loaded from: classes2.dex */
public class i<T> extends r0<T> implements h<T>, kotlin.coroutines.jvm.internal.e {

    /* renamed from: j, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f20054j = AtomicIntegerFieldUpdater.newUpdater(i.class, "_decision");

    /* renamed from: k, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f20055k = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "_state");
    private volatile int _decision;
    private volatile Object _state;

    /* renamed from: h, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f20056h;

    /* renamed from: i, reason: collision with root package name */
    @NotNull
    private final kotlin.coroutines.c<T> f20057i;
    private volatile t0 parentHandle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull kotlin.coroutines.c<? super T> cVar, int i2) {
        super(i2);
        kotlin.jvm.d.h.b(cVar, "delegate");
        this.f20057i = cVar;
        this.f20056h = this.f20057i.getContext();
        this._decision = 0;
        this._state = b.f19989e;
    }

    private final void h() {
        t0 t0Var = this.parentHandle;
        if (t0Var != null) {
            t0Var.dispose();
            this.parentHandle = t1.f20140e;
        }
    }

    private final void i() {
        Job job;
        if (f() || (job = (Job) this.f20057i.getContext().get(Job.f20051d)) == null) {
            return;
        }
        job.start();
        t0 a2 = Job.a.a(job, true, false, new l(job, this), 2, null);
        this.parentHandle = a2;
        if (f()) {
            a2.dispose();
            this.parentHandle = t1.f20140e;
        }
    }

    private final boolean j() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f20054j.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean k() {
        do {
            int i2 = this._decision;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f20054j.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.r0
    public void a(@Nullable Object obj, @NotNull Throwable th) {
        kotlin.jvm.d.h.b(th, "cause");
        if (obj instanceof u) {
            try {
                ((u) obj).f20142b.invoke(th);
            } catch (Throwable th2) {
                b0.a(getContext(), new w("Exception in cancellation handler for " + this, th2));
            }
        }
    }

    @Override // kotlinx.coroutines.r0
    @NotNull
    public final kotlin.coroutines.c<T> b() {
        return this.f20057i;
    }

    @Override // kotlinx.coroutines.r0
    @Nullable
    public Object c() {
        return e();
    }

    @PublishedApi
    @Nullable
    public final Object d() {
        Job job;
        Object a2;
        i();
        if (k()) {
            a2 = kotlin.coroutines.h.d.a();
            return a2;
        }
        Object e2 = e();
        if (!(e2 instanceof r)) {
            if (this.f20136g == 1 && (job = (Job) getContext().get(Job.f20051d)) != null && !job.i()) {
                CancellationException j2 = job.j();
                a(e2, j2);
                throw kotlinx.coroutines.internal.s.a(j2, (kotlin.coroutines.c<?>) this);
            }
            return b(e2);
        }
        throw kotlinx.coroutines.internal.s.a(((r) e2).f20135a, (kotlin.coroutines.c<?>) this);
    }

    @Nullable
    public final Object e() {
        return this._state;
    }

    public boolean f() {
        return !(e() instanceof u1);
    }

    @NotNull
    protected String g() {
        return "CancellableContinuation";
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.c<T> cVar = this.f20057i;
        if (!(cVar instanceof kotlin.coroutines.jvm.internal.e)) {
            cVar = null;
        }
        return (kotlin.coroutines.jvm.internal.e) cVar;
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public CoroutineContext getContext() {
        return this.f20056h;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.c
    public void resumeWith(@NotNull Object obj) {
        a(s.a(obj), this.f20136g);
    }

    @NotNull
    public String toString() {
        return g() + '(' + j0.a((kotlin.coroutines.c<?>) this.f20057i) + "){" + e() + "}@" + j0.b(this);
    }

    private final f b(kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        return bVar instanceof f ? (f) bVar : new d1(bVar);
    }

    private final void c(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.r0
    public <T> T b(@Nullable Object obj) {
        return obj instanceof t ? (T) ((t) obj).f20139a : obj instanceof u ? (T) ((u) obj).f20141a : obj;
    }

    @NotNull
    public Throwable a(@NotNull Job job) {
        kotlin.jvm.d.h.b(job, "parent");
        return job.j();
    }

    @Nullable
    public final k a(@NotNull Throwable th, int i2) {
        kotlin.jvm.d.h.b(th, HummerConstants.NORMAL_EXCEPTION);
        return a(new r(th, false, 2, null), i2);
    }

    private final void a(kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + bVar + ", already has " + obj).toString());
    }

    private final void a(int i2) {
        if (j()) {
            return;
        }
        q0.a(this, i2);
    }

    public boolean a(@Nullable Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof u1)) {
                return false;
            }
            z = obj instanceof f;
        } while (!f20055k.compareAndSet(this, obj, new k(this, th, z)));
        if (z) {
            try {
                ((f) obj).a(th);
            } catch (Throwable th2) {
                b0.a(getContext(), new w("Exception in cancellation handler for " + this, th2));
            }
        }
        h();
        a(0);
        return true;
    }

    @Override // kotlinx.coroutines.h
    public void a(@NotNull kotlin.jvm.c.b<? super Throwable, kotlin.t> bVar) {
        Object obj;
        kotlin.jvm.d.h.b(bVar, "handler");
        f fVar = null;
        do {
            obj = this._state;
            if (!(obj instanceof b)) {
                if (!(obj instanceof f)) {
                    if (obj instanceof k) {
                        if (((k) obj).b()) {
                            try {
                                if (!(obj instanceof r)) {
                                    obj = null;
                                }
                                r rVar = (r) obj;
                                bVar.invoke(rVar != null ? rVar.f20135a : null);
                                return;
                            } catch (Throwable th) {
                                b0.a(getContext(), new w("Exception in cancellation handler for " + this, th));
                                return;
                            }
                        }
                        a(bVar, obj);
                        throw null;
                    }
                    return;
                }
                a(bVar, obj);
                throw null;
            }
            if (fVar == null) {
                fVar = b(bVar);
            }
        } while (!f20055k.compareAndSet(this, obj, fVar));
    }

    private final k a(Object obj, int i2) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof u1)) {
                if (obj2 instanceof k) {
                    k kVar = (k) obj2;
                    if (kVar.c()) {
                        return kVar;
                    }
                }
                c(obj);
                throw null;
            }
        } while (!f20055k.compareAndSet(this, obj2, obj));
        h();
        a(i2);
        return null;
    }
}
