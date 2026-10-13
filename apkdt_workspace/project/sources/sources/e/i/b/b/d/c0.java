package e.i.b.b.d;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c0<TResult> extends h<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final Object f17840a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final a0<TResult> f17841b = new a0<>();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f17842c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f17843d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("mLock")
    private TResult f17844e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("mLock")
    private Exception f17845f;

    /* loaded from: classes.dex */
    private static class a extends LifecycleCallback {

        /* renamed from: f, reason: collision with root package name */
        private final List<WeakReference<z<?>>> f17846f;

        private a(com.google.android.gms.common.api.internal.j jVar) {
            super(jVar);
            this.f17846f = new ArrayList();
            this.f5027e.a("TaskOnStopCallback", this);
        }

        public static a b(Activity activity) {
            com.google.android.gms.common.api.internal.j a2 = LifecycleCallback.a(activity);
            a aVar = (a) a2.a("TaskOnStopCallback", a.class);
            return aVar == null ? new a(a2) : aVar;
        }

        public final <T> void a(z<T> zVar) {
            synchronized (this.f17846f) {
                this.f17846f.add(new WeakReference<>(zVar));
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        public void e() {
            synchronized (this.f17846f) {
                Iterator<WeakReference<z<?>>> it = this.f17846f.iterator();
                while (it.hasNext()) {
                    z<?> zVar = it.next().get();
                    if (zVar != null) {
                        zVar.cancel();
                    }
                }
                this.f17846f.clear();
            }
        }
    }

    @GuardedBy("mLock")
    private final void g() {
        com.google.android.gms.common.internal.m.b(this.f17842c, "Task is not yet complete");
    }

    @GuardedBy("mLock")
    private final void h() {
        com.google.android.gms.common.internal.m.b(!this.f17842c, "Task is already complete");
    }

    @GuardedBy("mLock")
    private final void i() {
        if (this.f17843d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    private final void j() {
        synchronized (this.f17840a) {
            if (this.f17842c) {
                this.f17841b.a(this);
            }
        }
    }

    @Override // e.i.b.b.d.h
    public final <X extends Throwable> TResult a(@NonNull Class<X> cls) {
        TResult tresult;
        synchronized (this.f17840a) {
            g();
            i();
            if (!cls.isInstance(this.f17845f)) {
                if (this.f17845f == null) {
                    tresult = this.f17844e;
                } else {
                    throw new f(this.f17845f);
                }
            } else {
                throw cls.cast(this.f17845f);
            }
        }
        return tresult;
    }

    @Override // e.i.b.b.d.h
    public final TResult b() {
        TResult tresult;
        synchronized (this.f17840a) {
            g();
            i();
            if (this.f17845f == null) {
                tresult = this.f17844e;
            } else {
                throw new f(this.f17845f);
            }
        }
        return tresult;
    }

    @Override // e.i.b.b.d.h
    public final boolean c() {
        return this.f17843d;
    }

    @Override // e.i.b.b.d.h
    public final boolean d() {
        boolean z;
        synchronized (this.f17840a) {
            z = this.f17842c;
        }
        return z;
    }

    @Override // e.i.b.b.d.h
    public final boolean e() {
        boolean z;
        synchronized (this.f17840a) {
            z = this.f17842c && !this.f17843d && this.f17845f == null;
        }
        return z;
    }

    public final boolean f() {
        synchronized (this.f17840a) {
            if (this.f17842c) {
                return false;
            }
            this.f17842c = true;
            this.f17843d = true;
            this.f17841b.a(this);
            return true;
        }
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final <TContinuationResult> h<TContinuationResult> b(@NonNull Executor executor, @NonNull e.i.b.b.d.a<TResult, h<TContinuationResult>> aVar) {
        c0 c0Var = new c0();
        this.f17841b.a(new n(executor, aVar, c0Var));
        j();
        return c0Var;
    }

    @Override // e.i.b.b.d.h
    @Nullable
    public final Exception a() {
        Exception exc;
        synchronized (this.f17840a) {
            exc = this.f17845f;
        }
        return exc;
    }

    public final boolean b(TResult tresult) {
        synchronized (this.f17840a) {
            if (this.f17842c) {
                return false;
            }
            this.f17842c = true;
            this.f17844e = tresult;
            this.f17841b.a(this);
            return true;
        }
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull e<? super TResult> eVar) {
        a(j.f17850a, eVar);
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull Executor executor, @NonNull e<? super TResult> eVar) {
        this.f17841b.a(new v(executor, eVar));
        j();
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull Activity activity, @NonNull e<? super TResult> eVar) {
        v vVar = new v(j.f17850a, eVar);
        this.f17841b.a(vVar);
        a.b(activity).a(vVar);
        j();
        return this;
    }

    public final boolean b(@NonNull Exception exc) {
        com.google.android.gms.common.internal.m.a(exc, "Exception must not be null");
        synchronized (this.f17840a) {
            if (this.f17842c) {
                return false;
            }
            this.f17842c = true;
            this.f17845f = exc;
            this.f17841b.a(this);
            return true;
        }
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull d dVar) {
        a(j.f17850a, dVar);
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull Executor executor, @NonNull d dVar) {
        this.f17841b.a(new t(executor, dVar));
        j();
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull Activity activity, @NonNull d dVar) {
        t tVar = new t(j.f17850a, dVar);
        this.f17841b.a(tVar);
        a.b(activity).a(tVar);
        j();
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull c<TResult> cVar) {
        a(j.f17850a, cVar);
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull Executor executor, @NonNull c<TResult> cVar) {
        this.f17841b.a(new r(executor, cVar));
        j();
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final <TContinuationResult> h<TContinuationResult> a(@NonNull e.i.b.b.d.a<TResult, TContinuationResult> aVar) {
        return a(j.f17850a, aVar);
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final <TContinuationResult> h<TContinuationResult> a(@NonNull Executor executor, @NonNull e.i.b.b.d.a<TResult, TContinuationResult> aVar) {
        c0 c0Var = new c0();
        this.f17841b.a(new l(executor, aVar, c0Var));
        j();
        return c0Var;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final h<TResult> a(@NonNull Executor executor, @NonNull b bVar) {
        this.f17841b.a(new p(executor, bVar));
        j();
        return this;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final <TContinuationResult> h<TContinuationResult> a(Executor executor, g<TResult, TContinuationResult> gVar) {
        c0 c0Var = new c0();
        this.f17841b.a(new x(executor, gVar, c0Var));
        j();
        return c0Var;
    }

    @Override // e.i.b.b.d.h
    @NonNull
    public final <TContinuationResult> h<TContinuationResult> a(@NonNull g<TResult, TContinuationResult> gVar) {
        return a(j.f17850a, gVar);
    }

    public final void a(TResult tresult) {
        synchronized (this.f17840a) {
            h();
            this.f17842c = true;
            this.f17844e = tresult;
        }
        this.f17841b.a(this);
    }

    public final void a(@NonNull Exception exc) {
        com.google.android.gms.common.internal.m.a(exc, "Exception must not be null");
        synchronized (this.f17840a) {
            h();
            this.f17842c = true;
            this.f17845f = exc;
        }
        this.f17841b.a(this);
    }
}
