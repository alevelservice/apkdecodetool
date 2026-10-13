package c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* compiled from: Task.java */
/* loaded from: classes.dex */
public class f<TResult> {

    /* renamed from: i, reason: collision with root package name */
    private static final Executor f3114i;

    /* renamed from: j, reason: collision with root package name */
    private static volatile d f3115j;

    /* renamed from: k, reason: collision with root package name */
    private static f<?> f3116k;

    /* renamed from: l, reason: collision with root package name */
    private static f<Boolean> f3117l;
    private static f<Boolean> m;

    /* renamed from: b, reason: collision with root package name */
    private boolean f3119b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f3120c;

    /* renamed from: d, reason: collision with root package name */
    private TResult f3121d;

    /* renamed from: e, reason: collision with root package name */
    private Exception f3122e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3123f;

    /* renamed from: g, reason: collision with root package name */
    private h f3124g;

    /* renamed from: a, reason: collision with root package name */
    private final Object f3118a = new Object();

    /* renamed from: h, reason: collision with root package name */
    private List<c.d<TResult, Void>> f3125h = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public class a implements c.d<TResult, Void> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f3126a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ c.d f3127b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Executor f3128c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ c.c f3129d;

        a(f fVar, g gVar, c.d dVar, Executor executor, c.c cVar) {
            this.f3126a = gVar;
            this.f3127b = dVar;
            this.f3128c = executor;
            this.f3129d = cVar;
        }

        @Override // c.d
        public Void a(f<TResult> fVar) {
            f.b(this.f3126a, this.f3127b, fVar, this.f3128c, this.f3129d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ c.c f3130e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ g f3131f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ c.d f3132g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ f f3133h;

        b(c.c cVar, g gVar, c.d dVar, f fVar) {
            this.f3130e = cVar;
            this.f3131f = gVar;
            this.f3132g = dVar;
            this.f3133h = fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            c.c cVar = this.f3130e;
            if (cVar == null) {
                try {
                    this.f3131f.a((g) this.f3132g.a(this.f3133h));
                    return;
                } catch (CancellationException unused) {
                    this.f3131f.b();
                    return;
                } catch (Exception e2) {
                    this.f3131f.a(e2);
                    return;
                }
            }
            cVar.a();
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public static class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ c.c f3134e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ g f3135f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Callable f3136g;

        c(c.c cVar, g gVar, Callable callable) {
            this.f3134e = cVar;
            this.f3135f = gVar;
            this.f3136g = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            c.c cVar = this.f3134e;
            if (cVar == null) {
                try {
                    this.f3135f.a((g) this.f3136g.call());
                    return;
                } catch (CancellationException unused) {
                    this.f3135f.b();
                    return;
                } catch (Exception e2) {
                    this.f3135f.a(e2);
                    return;
                }
            }
            cVar.a();
            throw null;
        }
    }

    /* compiled from: Task.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(f<?> fVar, i iVar);
    }

    static {
        c.b.a();
        f3114i = c.b.b();
        c.a.b();
        f3116k = new f<>((Object) null);
        f3117l = new f<>(true);
        m = new f<>(false);
        new f(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f() {
    }

    public static d g() {
        return f3115j;
    }

    private void h() {
        synchronized (this.f3118a) {
            Iterator<c.d<TResult, Void>> it = this.f3125h.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(this);
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception e3) {
                    throw new RuntimeException(e3);
                }
            }
            this.f3125h = null;
        }
    }

    public TResult b() {
        TResult tresult;
        synchronized (this.f3118a) {
            tresult = this.f3121d;
        }
        return tresult;
    }

    public boolean c() {
        boolean z;
        synchronized (this.f3118a) {
            z = this.f3120c;
        }
        return z;
    }

    public boolean d() {
        boolean z;
        synchronized (this.f3118a) {
            z = this.f3119b;
        }
        return z;
    }

    public boolean e() {
        boolean z;
        synchronized (this.f3118a) {
            z = a() != null;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        synchronized (this.f3118a) {
            if (this.f3119b) {
                return false;
            }
            this.f3119b = true;
            this.f3120c = true;
            this.f3118a.notifyAll();
            h();
            return true;
        }
    }

    public Exception a() {
        Exception exc;
        synchronized (this.f3118a) {
            if (this.f3122e != null) {
                this.f3123f = true;
                if (this.f3124g != null) {
                    this.f3124g.a();
                    this.f3124g = null;
                }
            }
            exc = this.f3122e;
        }
        return exc;
    }

    private f(TResult tresult) {
        a((f<TResult>) tresult);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <TResult> f<TResult> b(TResult tresult) {
        if (tresult == 0) {
            return (f<TResult>) f3116k;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (f<TResult>) f3117l : (f<TResult>) m;
        }
        g gVar = new g();
        gVar.a((g) tresult);
        return gVar.a();
    }

    private f(boolean z) {
        if (z) {
            f();
        } else {
            a((f<TResult>) null);
        }
    }

    public static <TResult> f<TResult> a(Callable<TResult> callable, Executor executor) {
        return a(callable, executor, (c.c) null);
    }

    public static <TResult> f<TResult> b(Exception exc) {
        g gVar = new g();
        gVar.a(exc);
        return gVar.a();
    }

    public static <TResult> f<TResult> a(Callable<TResult> callable, Executor executor, c.c cVar) {
        g gVar = new g();
        try {
            executor.execute(new c(cVar, gVar, callable));
        } catch (Exception e2) {
            gVar.a((Exception) new e(e2));
        }
        return gVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void b(g<TContinuationResult> gVar, c.d<TResult, TContinuationResult> dVar, f<TResult> fVar, Executor executor, c.c cVar) {
        try {
            executor.execute(new b(cVar, gVar, dVar, fVar));
        } catch (Exception e2) {
            gVar.a(new e(e2));
        }
    }

    public <TContinuationResult> f<TContinuationResult> a(c.d<TResult, TContinuationResult> dVar, Executor executor, c.c cVar) {
        boolean d2;
        g gVar = new g();
        synchronized (this.f3118a) {
            d2 = d();
            if (!d2) {
                this.f3125h.add(new a(this, gVar, dVar, executor, cVar));
            }
        }
        if (d2) {
            b(gVar, dVar, this, executor, cVar);
        }
        return gVar.a();
    }

    public <TContinuationResult> f<TContinuationResult> a(c.d<TResult, TContinuationResult> dVar) {
        return a(dVar, f3114i, (c.c) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(TResult tresult) {
        synchronized (this.f3118a) {
            if (this.f3119b) {
                return false;
            }
            this.f3119b = true;
            this.f3121d = tresult;
            this.f3118a.notifyAll();
            h();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Exception exc) {
        synchronized (this.f3118a) {
            if (this.f3119b) {
                return false;
            }
            this.f3119b = true;
            this.f3122e = exc;
            this.f3123f = false;
            this.f3118a.notifyAll();
            h();
            if (!this.f3123f && g() != null) {
                this.f3124g = new h(this);
            }
            return true;
        }
    }
}
