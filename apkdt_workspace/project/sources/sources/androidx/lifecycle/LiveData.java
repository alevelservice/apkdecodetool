package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;

/* loaded from: classes.dex */
public abstract class LiveData<T> {

    /* renamed from: j, reason: collision with root package name */
    static final Object f2322j = new Object();

    /* renamed from: a, reason: collision with root package name */
    final Object f2323a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private a.b.a.b.b<n<? super T>, LiveData<T>.b> f2324b = new a.b.a.b.b<>();

    /* renamed from: c, reason: collision with root package name */
    int f2325c = 0;

    /* renamed from: d, reason: collision with root package name */
    private volatile Object f2326d;

    /* renamed from: e, reason: collision with root package name */
    volatile Object f2327e;

    /* renamed from: f, reason: collision with root package name */
    private int f2328f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f2329g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f2330h;

    /* renamed from: i, reason: collision with root package name */
    private final Runnable f2331i;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f2323a) {
                obj = LiveData.this.f2327e;
                LiveData.this.f2327e = LiveData.f2322j;
            }
            LiveData.this.b((LiveData) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public abstract class b {

        /* renamed from: a, reason: collision with root package name */
        final n<? super T> f2335a;

        /* renamed from: b, reason: collision with root package name */
        boolean f2336b;

        /* renamed from: c, reason: collision with root package name */
        int f2337c = -1;

        b(n<? super T> nVar) {
            this.f2335a = nVar;
        }

        void a() {
        }

        void a(boolean z) {
            if (z == this.f2336b) {
                return;
            }
            this.f2336b = z;
            boolean z2 = LiveData.this.f2325c == 0;
            LiveData.this.f2325c += this.f2336b ? 1 : -1;
            if (z2 && this.f2336b) {
                LiveData.this.c();
            }
            LiveData liveData = LiveData.this;
            if (liveData.f2325c == 0 && !this.f2336b) {
                liveData.d();
            }
            if (this.f2336b) {
                LiveData.this.a(this);
            }
        }

        boolean a(h hVar) {
            return false;
        }

        abstract boolean b();
    }

    public LiveData() {
        Object obj = f2322j;
        this.f2326d = obj;
        this.f2327e = obj;
        this.f2328f = -1;
        this.f2331i = new a();
    }

    private void b(LiveData<T>.b bVar) {
        if (bVar.f2336b) {
            if (!bVar.b()) {
                bVar.a(false);
                return;
            }
            int i2 = bVar.f2337c;
            int i3 = this.f2328f;
            if (i2 >= i3) {
                return;
            }
            bVar.f2337c = i3;
            bVar.f2335a.a((Object) this.f2326d);
        }
    }

    void a(@Nullable LiveData<T>.b bVar) {
        if (this.f2329g) {
            this.f2330h = true;
            return;
        }
        this.f2329g = true;
        do {
            this.f2330h = false;
            if (bVar != null) {
                b((b) bVar);
                bVar = null;
            } else {
                a.b.a.b.b<n<? super T>, LiveData<T>.b>.d b2 = this.f2324b.b();
                while (b2.hasNext()) {
                    b((b) b2.next().getValue());
                    if (this.f2330h) {
                        break;
                    }
                }
            }
        } while (this.f2330h);
        this.f2329g = false;
    }

    protected void c() {
    }

    protected void d() {
    }

    /* loaded from: classes.dex */
    class LifecycleBoundObserver extends LiveData<T>.b implements d {

        /* renamed from: e, reason: collision with root package name */
        @NonNull
        final h f2332e;

        LifecycleBoundObserver(@NonNull h hVar, n<? super T> nVar) {
            super(nVar);
            this.f2332e = hVar;
        }

        @Override // androidx.lifecycle.f
        public void a(h hVar, e.a aVar) {
            if (this.f2332e.getLifecycle().a() == e.b.DESTROYED) {
                LiveData.this.a((n) this.f2335a);
            } else {
                a(b());
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean b() {
            return this.f2332e.getLifecycle().a().isAtLeast(e.b.STARTED);
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean a(h hVar) {
            return this.f2332e == hVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        void a() {
            this.f2332e.getLifecycle().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    public void b(T t) {
        a("setValue");
        this.f2328f++;
        this.f2326d = t;
        a((b) null);
    }

    public boolean b() {
        return this.f2325c > 0;
    }

    @MainThread
    public void a(@NonNull h hVar, @NonNull n<? super T> nVar) {
        a("observe");
        if (hVar.getLifecycle().a() == e.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(hVar, nVar);
        LiveData<T>.b b2 = this.f2324b.b(nVar, lifecycleBoundObserver);
        if (b2 != null && !b2.a(hVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (b2 != null) {
            return;
        }
        hVar.getLifecycle().a(lifecycleBoundObserver);
    }

    @MainThread
    public void a(@NonNull n<? super T> nVar) {
        a("removeObserver");
        LiveData<T>.b remove = this.f2324b.remove(nVar);
        if (remove == null) {
            return;
        }
        remove.a();
        remove.a(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(T t) {
        boolean z;
        synchronized (this.f2323a) {
            z = this.f2327e == f2322j;
            this.f2327e = t;
        }
        if (z) {
            a.b.a.a.a.b().b(this.f2331i);
        }
    }

    @Nullable
    public T a() {
        T t = (T) this.f2326d;
        if (t != f2322j) {
            return t;
        }
        return null;
    }

    private static void a(String str) {
        if (a.b.a.a.a.b().a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}
