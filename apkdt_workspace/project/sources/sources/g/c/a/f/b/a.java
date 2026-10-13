package g.c.a.f.b;

/* compiled from: Functions.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Runnable f18273a;

    /* renamed from: b, reason: collision with root package name */
    public static final g.c.a.e.a f18274b;

    /* renamed from: c, reason: collision with root package name */
    static final g.c.a.e.d<Object> f18275c;

    /* renamed from: d, reason: collision with root package name */
    public static final g.c.a.e.d<Throwable> f18276d;

    /* compiled from: Functions.java */
    /* renamed from: g.c.a.f.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0216a implements g.c.a.e.a {
        C0216a() {
        }

        @Override // g.c.a.e.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class b implements g.c.a.e.d<Object> {
        b() {
        }

        @Override // g.c.a.e.d
        public void a(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class c implements g.c.a.e.f {
        c() {
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class e implements g.c.a.e.d<Throwable> {
        e() {
        }

        @Override // g.c.a.e.d
        public void a(Throwable th) {
            g.c.a.h.a.b(th);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class f implements g.c.a.e.g<Object> {
        f() {
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class g implements g.c.a.e.e<Object, Object> {
        g() {
        }

        @Override // g.c.a.e.e
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class h implements g.c.a.e.d<k.a.b> {
        h() {
        }

        @Override // g.c.a.e.d
        public void a(k.a.b bVar) {
            bVar.a(Long.MAX_VALUE);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class i implements g.c.a.e.h<Object> {
        i() {
        }

        @Override // g.c.a.e.h
        public Object get() {
            return null;
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class j implements g.c.a.e.d<Throwable> {
        j() {
        }

        @Override // g.c.a.e.d
        public void a(Throwable th) {
            g.c.a.h.a.b(new g.c.a.d.d(th));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    static final class k implements g.c.a.e.g<Object> {
        k() {
        }
    }

    static {
        new g();
        f18273a = new d();
        f18274b = new C0216a();
        f18275c = new b();
        new e();
        f18276d = new j();
        new c();
        new k();
        new f();
        new i();
        new h();
    }

    public static <T> g.c.a.e.d<T> a() {
        return (g.c.a.e.d<T>) f18275c;
    }
}
