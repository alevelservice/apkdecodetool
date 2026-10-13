package com.google.firebase.crashlytics.d.h;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: CrashlyticsCore.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14527a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.c f14528b;

    /* renamed from: c, reason: collision with root package name */
    private final t f14529c;

    /* renamed from: d, reason: collision with root package name */
    private final long f14530d = System.currentTimeMillis();

    /* renamed from: e, reason: collision with root package name */
    private n f14531e;

    /* renamed from: f, reason: collision with root package name */
    private n f14532f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f14533g;

    /* renamed from: h, reason: collision with root package name */
    private k f14534h;

    /* renamed from: i, reason: collision with root package name */
    private final y f14535i;

    /* renamed from: j, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.g.b f14536j;

    /* renamed from: k, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.f.a f14537k;

    /* renamed from: l, reason: collision with root package name */
    private ExecutorService f14538l;
    private i m;
    private com.google.firebase.crashlytics.d.a n;

    /* compiled from: CrashlyticsCore.java */
    /* loaded from: classes.dex */
    class a implements Callable<e.i.b.b.d.h<Void>> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.google.firebase.crashlytics.d.o.e f14539e;

        a(com.google.firebase.crashlytics.d.o.e eVar) {
            this.f14539e = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public e.i.b.b.d.h<Void> call() {
            return m.this.c(this.f14539e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsCore.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.google.firebase.crashlytics.d.o.e f14541e;

        b(com.google.firebase.crashlytics.d.o.e eVar) {
            this.f14541e = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            m.this.c(this.f14541e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsCore.java */
    /* loaded from: classes.dex */
    public class c implements Callable<Boolean> {
        c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            try {
                boolean c2 = m.this.f14531e.c();
                com.google.firebase.crashlytics.d.b.a().a("Initialization marker file removed: " + c2);
                return Boolean.valueOf(c2);
            } catch (Exception e2) {
                com.google.firebase.crashlytics.d.b.a().b("Problem encountered deleting Crashlytics initialization marker.", e2);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashlyticsCore.java */
    /* loaded from: classes.dex */
    public class d implements Callable<Boolean> {
        d() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            return Boolean.valueOf(m.this.f14534h.d());
        }
    }

    public m(com.google.firebase.c cVar, y yVar, com.google.firebase.crashlytics.d.a aVar, t tVar, com.google.firebase.crashlytics.d.g.b bVar, com.google.firebase.crashlytics.d.f.a aVar2, ExecutorService executorService) {
        this.f14528b = cVar;
        this.f14529c = tVar;
        this.f14527a = cVar.b();
        this.f14535i = yVar;
        this.n = aVar;
        this.f14536j = bVar;
        this.f14537k = aVar2;
        this.f14538l = executorService;
        this.m = new i(executorService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e.i.b.b.d.h<Void> c(com.google.firebase.crashlytics.d.o.e eVar) {
        f();
        this.f14534h.b();
        try {
            this.f14536j.a(l.a(this));
            com.google.firebase.crashlytics.d.o.i.e b2 = eVar.b();
            if (!b2.a().f14716a) {
                com.google.firebase.crashlytics.d.b.a().a("Collection of crash reports disabled in Crashlytics settings.");
                return e.i.b.b.d.k.a((Exception) new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.f14534h.b(b2.b().f14717a)) {
                com.google.firebase.crashlytics.d.b.a().a("Could not finalize previous sessions.");
            }
            return this.f14534h.a(1.0f, eVar.a());
        } catch (Exception e2) {
            com.google.firebase.crashlytics.d.b.a().b("Crashlytics encountered a problem during asynchronous initialization.", e2);
            return e.i.b.b.d.k.a(e2);
        } finally {
            e();
        }
    }

    private void d(com.google.firebase.crashlytics.d.o.e eVar) {
        Future<?> submit = this.f14538l.submit(new b(eVar));
        com.google.firebase.crashlytics.d.b.a().a("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            com.google.firebase.crashlytics.d.b.a().b("Crashlytics was interrupted during initialization.", e2);
        } catch (ExecutionException e3) {
            com.google.firebase.crashlytics.d.b.a().b("Problem encountered during Crashlytics initialization.", e3);
        } catch (TimeoutException e4) {
            com.google.firebase.crashlytics.d.b.a().b("Crashlytics timed out during initialization.", e4);
        }
    }

    private void h() {
        try {
            this.f14533g = Boolean.TRUE.equals((Boolean) l0.a(this.m.a(new d())));
        } catch (Exception unused) {
            this.f14533g = false;
        }
    }

    public static String i() {
        return "17.3.0";
    }

    void e() {
        this.m.a(new c());
    }

    void f() {
        this.m.a();
        this.f14531e.a();
        com.google.firebase.crashlytics.d.b.a().a("Initialization marker file created.");
    }

    public e.i.b.b.d.h<Void> g() {
        return this.f14534h.o();
    }

    public boolean b(com.google.firebase.crashlytics.d.o.e eVar) {
        String e2 = h.e(this.f14527a);
        com.google.firebase.crashlytics.d.b.a().a("Mapping file ID is: " + e2);
        if (a(e2, h.a(this.f14527a, "com.crashlytics.RequireBuildId", true))) {
            String b2 = this.f14528b.d().b();
            try {
                com.google.firebase.crashlytics.d.b.a().c("Initializing Crashlytics " + i());
                com.google.firebase.crashlytics.d.k.i iVar = new com.google.firebase.crashlytics.d.k.i(this.f14527a);
                this.f14532f = new n("crash_marker", iVar);
                this.f14531e = new n("initialization_marker", iVar);
                com.google.firebase.crashlytics.d.j.c cVar = new com.google.firebase.crashlytics.d.j.c();
                com.google.firebase.crashlytics.d.h.b a2 = com.google.firebase.crashlytics.d.h.b.a(this.f14527a, this.f14535i, b2, e2, new com.google.firebase.crashlytics.d.q.a(this.f14527a));
                com.google.firebase.crashlytics.d.b.a().a("Installer package name is: " + a2.f14403c);
                this.f14534h = new k(this.f14527a, this.m, cVar, this.f14535i, this.f14529c, iVar, this.f14532f, a2, null, null, this.n, this.f14537k, eVar);
                boolean d2 = d();
                h();
                this.f14534h.a(Thread.getDefaultUncaughtExceptionHandler(), eVar);
                if (d2 && h.b(this.f14527a)) {
                    com.google.firebase.crashlytics.d.b.a().a("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                    d(eVar);
                    return false;
                }
                com.google.firebase.crashlytics.d.b.a().a("Exception handling initialization successful");
                return true;
            } catch (Exception e3) {
                com.google.firebase.crashlytics.d.b.a().b("Crashlytics was not started due to an exception during initialization", e3);
                this.f14534h = null;
                return false;
            }
        }
        throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
    }

    public e.i.b.b.d.h<Void> a(com.google.firebase.crashlytics.d.o.e eVar) {
        return l0.a(this.f14538l, new a(eVar));
    }

    public void a(@Nullable Boolean bool) {
        this.f14529c.a(bool);
    }

    @NonNull
    public e.i.b.b.d.h<Boolean> a() {
        return this.f14534h.a();
    }

    public void a(@NonNull Throwable th) {
        this.f14534h.a(Thread.currentThread(), th);
    }

    public void a(String str) {
        this.f14534h.a(System.currentTimeMillis() - this.f14530d, str);
    }

    public void a(String str, String str2) {
        this.f14534h.a(str, str2);
    }

    boolean d() {
        return this.f14531e.b();
    }

    static boolean a(String str, boolean z) {
        if (z) {
            return !h.b(str);
        }
        com.google.firebase.crashlytics.d.b.a().a("Configured not to require a build ID.");
        return true;
    }

    public boolean c() {
        return this.f14533g;
    }

    public e.i.b.b.d.h<Void> b() {
        return this.f14534h.c();
    }

    public void b(String str) {
        this.f14534h.a(str);
    }
}
