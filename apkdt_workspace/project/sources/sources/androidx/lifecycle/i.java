package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: LifecycleRegistry.java */
/* loaded from: classes.dex */
public class i extends e {

    /* renamed from: c, reason: collision with root package name */
    private final WeakReference<h> f2352c;

    /* renamed from: a, reason: collision with root package name */
    private a.b.a.b.a<g, b> f2350a = new a.b.a.b.a<>();

    /* renamed from: d, reason: collision with root package name */
    private int f2353d = 0;

    /* renamed from: e, reason: collision with root package name */
    private boolean f2354e = false;

    /* renamed from: f, reason: collision with root package name */
    private boolean f2355f = false;

    /* renamed from: g, reason: collision with root package name */
    private ArrayList<e.b> f2356g = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    private e.b f2351b = e.b.INITIALIZED;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LifecycleRegistry.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2357a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f2358b = new int[e.b.values().length];

        static {
            try {
                f2358b[e.b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2358b[e.b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2358b[e.b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2358b[e.b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2358b[e.b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f2357a = new int[e.a.values().length];
            try {
                f2357a[e.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2357a[e.a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2357a[e.a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2357a[e.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2357a[e.a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2357a[e.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2357a[e.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LifecycleRegistry.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        e.b f2359a;

        /* renamed from: b, reason: collision with root package name */
        f f2360b;

        b(g gVar, e.b bVar) {
            this.f2360b = k.a(gVar);
            this.f2359a = bVar;
        }

        void a(h hVar, e.a aVar) {
            e.b b2 = i.b(aVar);
            this.f2359a = i.a(this.f2359a, b2);
            this.f2360b.a(hVar, aVar);
            this.f2359a = b2;
        }
    }

    public i(@NonNull h hVar) {
        this.f2352c = new WeakReference<>(hVar);
    }

    private e.b c(g gVar) {
        Map.Entry<g, b> b2 = this.f2350a.b(gVar);
        e.b bVar = null;
        e.b bVar2 = b2 != null ? b2.getValue().f2359a : null;
        if (!this.f2356g.isEmpty()) {
            bVar = this.f2356g.get(r0.size() - 1);
        }
        return a(a(this.f2351b, bVar2), bVar);
    }

    private void d(e.b bVar) {
        if (this.f2351b == bVar) {
            return;
        }
        this.f2351b = bVar;
        if (!this.f2354e && this.f2353d == 0) {
            this.f2354e = true;
            d();
            this.f2354e = false;
            return;
        }
        this.f2355f = true;
    }

    private void e(e.b bVar) {
        this.f2356g.add(bVar);
    }

    private static e.a f(e.b bVar) {
        int i2 = a.f2358b[bVar.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return e.a.ON_START;
            }
            if (i2 == 3) {
                return e.a.ON_RESUME;
            }
            if (i2 == 4) {
                throw new IllegalArgumentException();
            }
            if (i2 != 5) {
                throw new IllegalArgumentException("Unexpected state value " + bVar);
            }
        }
        return e.a.ON_CREATE;
    }

    @MainThread
    @Deprecated
    public void a(@NonNull e.b bVar) {
        b(bVar);
    }

    @MainThread
    public void b(@NonNull e.b bVar) {
        d(bVar);
    }

    private boolean b() {
        if (this.f2350a.size() == 0) {
            return true;
        }
        e.b bVar = this.f2350a.a().getValue().f2359a;
        e.b bVar2 = this.f2350a.c().getValue().f2359a;
        return bVar == bVar2 && this.f2351b == bVar2;
    }

    public void a(@NonNull e.a aVar) {
        d(b(aVar));
    }

    @Override // androidx.lifecycle.e
    public void a(@NonNull g gVar) {
        h hVar;
        e.b bVar = this.f2351b;
        e.b bVar2 = e.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = e.b.INITIALIZED;
        }
        b bVar3 = new b(gVar, bVar2);
        if (this.f2350a.b(gVar, bVar3) == null && (hVar = this.f2352c.get()) != null) {
            boolean z = this.f2353d != 0 || this.f2354e;
            e.b c2 = c(gVar);
            this.f2353d++;
            while (bVar3.f2359a.compareTo(c2) < 0 && this.f2350a.contains(gVar)) {
                e(bVar3.f2359a);
                bVar3.a(hVar, f(bVar3.f2359a));
                c();
                c2 = c(gVar);
            }
            if (!z) {
                d();
            }
            this.f2353d--;
        }
    }

    private void c() {
        this.f2356g.remove(r0.size() - 1);
    }

    private static e.a c(e.b bVar) {
        int i2 = a.f2358b[bVar.ordinal()];
        if (i2 == 1) {
            throw new IllegalArgumentException();
        }
        if (i2 == 2) {
            return e.a.ON_DESTROY;
        }
        if (i2 == 3) {
            return e.a.ON_STOP;
        }
        if (i2 == 4) {
            return e.a.ON_PAUSE;
        }
        if (i2 != 5) {
            throw new IllegalArgumentException("Unexpected state value " + bVar);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.lifecycle.e
    public void b(@NonNull g gVar) {
        this.f2350a.remove(gVar);
    }

    static e.b b(e.a aVar) {
        switch (a.f2357a[aVar.ordinal()]) {
            case 1:
            case 2:
                return e.b.CREATED;
            case 3:
            case 4:
                return e.b.STARTED;
            case 5:
                return e.b.RESUMED;
            case 6:
                return e.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    private void d() {
        h hVar = this.f2352c.get();
        if (hVar != null) {
            while (!b()) {
                this.f2355f = false;
                if (this.f2351b.compareTo(this.f2350a.a().getValue().f2359a) < 0) {
                    a(hVar);
                }
                Map.Entry<g, b> c2 = this.f2350a.c();
                if (!this.f2355f && c2 != null && this.f2351b.compareTo(c2.getValue().f2359a) > 0) {
                    b(hVar);
                }
            }
            this.f2355f = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(h hVar) {
        a.b.a.b.b<g, b>.d b2 = this.f2350a.b();
        while (b2.hasNext() && !this.f2355f) {
            Map.Entry next = b2.next();
            b bVar = (b) next.getValue();
            while (bVar.f2359a.compareTo(this.f2351b) < 0 && !this.f2355f && this.f2350a.contains(next.getKey())) {
                e(bVar.f2359a);
                bVar.a(hVar, f(bVar.f2359a));
                c();
            }
        }
    }

    @Override // androidx.lifecycle.e
    @NonNull
    public e.b a() {
        return this.f2351b;
    }

    private void a(h hVar) {
        Iterator<Map.Entry<g, b>> descendingIterator = this.f2350a.descendingIterator();
        while (descendingIterator.hasNext() && !this.f2355f) {
            Map.Entry<g, b> next = descendingIterator.next();
            b value = next.getValue();
            while (value.f2359a.compareTo(this.f2351b) > 0 && !this.f2355f && this.f2350a.contains(next.getKey())) {
                e.a c2 = c(value.f2359a);
                e(b(c2));
                value.a(hVar, c2);
                c();
            }
        }
    }

    static e.b a(@NonNull e.b bVar, @Nullable e.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }
}
