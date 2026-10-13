package k.b.a.y;

import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ZoneRulesInitializer.java */
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f19899a;

    /* renamed from: b, reason: collision with root package name */
    private static final AtomicReference<h> f19900b;

    /* compiled from: ZoneRulesInitializer.java */
    /* loaded from: classes2.dex */
    static class a extends h {
        a() {
        }

        @Override // k.b.a.y.h
        protected void a() {
        }
    }

    /* compiled from: ZoneRulesInitializer.java */
    /* loaded from: classes2.dex */
    static class b extends h {
        b() {
        }

        @Override // k.b.a.y.h
        protected void a() {
            Iterator it = ServiceLoader.load(i.class, i.class.getClassLoader()).iterator();
            while (it.hasNext()) {
                try {
                    i.a((i) it.next());
                } catch (ServiceConfigurationError e2) {
                    if (!(e2.getCause() instanceof SecurityException)) {
                        throw e2;
                    }
                }
            }
        }
    }

    static {
        new a();
        f19899a = new AtomicBoolean(false);
        f19900b = new AtomicReference<>();
    }

    public static void a(h hVar) {
        if (!f19899a.get()) {
            if (!f19900b.compareAndSet(null, hVar)) {
                throw new IllegalStateException("Initializer was already set, possibly with a default during initialization");
            }
            return;
        }
        throw new IllegalStateException("Already initialized");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        if (!f19899a.getAndSet(true)) {
            f19900b.compareAndSet(null, new b());
            f19900b.get().a();
            return;
        }
        throw new IllegalStateException("Already initialized");
    }

    protected abstract void a();
}
