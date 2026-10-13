package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.installations.h;
import com.google.firebase.installations.r.d;
import com.google.firebase.installations.r.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FirebaseInstallations.java */
/* loaded from: classes.dex */
public class f implements g {
    private static final Object m = new Object();
    private static final ThreadFactory n = new a();

    /* renamed from: a, reason: collision with root package name */
    private final com.google.firebase.c f15058a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.installations.r.c f15059b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.firebase.installations.q.c f15060c;

    /* renamed from: d, reason: collision with root package name */
    private final o f15061d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.firebase.installations.q.b f15062e;

    /* renamed from: f, reason: collision with root package name */
    private final m f15063f;

    /* renamed from: g, reason: collision with root package name */
    private final Object f15064g;

    /* renamed from: h, reason: collision with root package name */
    private final ExecutorService f15065h;

    /* renamed from: i, reason: collision with root package name */
    private final ExecutorService f15066i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private String f15067j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("FirebaseInstallations.this")
    private Set<com.google.firebase.installations.p.a> f15068k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    private final List<n> f15069l;

    /* compiled from: FirebaseInstallations.java */
    /* loaded from: classes.dex */
    class a implements ThreadFactory {

        /* renamed from: e, reason: collision with root package name */
        private final AtomicInteger f15070e = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f15070e.getAndIncrement())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseInstallations.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15071a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f15072b = new int[f.b.values().length];

        static {
            try {
                f15072b[f.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15072b[f.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15072b[f.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f15071a = new int[d.b.values().length];
            try {
                f15071a[d.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15071a[d.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.google.firebase.c cVar, @NonNull com.google.firebase.p.b<com.google.firebase.r.i> bVar, @NonNull com.google.firebase.p.b<com.google.firebase.o.f> bVar2) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), n), cVar, new com.google.firebase.installations.r.c(cVar.b(), bVar, bVar2), new com.google.firebase.installations.q.c(cVar), o.d(), new com.google.firebase.installations.q.b(cVar), new m());
    }

    private e.i.b.b.d.h<l> d() {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        a(new j(this.f15061d, iVar));
        return iVar.a();
    }

    private e.i.b.b.d.h<String> e() {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        a(new k(iVar));
        return iVar.a();
    }

    private synchronized String f() {
        return this.f15067j;
    }

    private com.google.firebase.installations.q.d g() {
        com.google.firebase.installations.q.d a2;
        synchronized (m) {
            com.google.firebase.installations.b a3 = com.google.firebase.installations.b.a(this.f15058a.b(), "generatefid.lock");
            try {
                a2 = this.f15060c.a();
            } finally {
                if (a3 != null) {
                    a3.a();
                }
            }
        }
        return a2;
    }

    private com.google.firebase.installations.q.d h() {
        com.google.firebase.installations.q.d a2;
        synchronized (m) {
            com.google.firebase.installations.b a3 = com.google.firebase.installations.b.a(this.f15058a.b(), "generatefid.lock");
            try {
                a2 = this.f15060c.a();
                if (a2.i()) {
                    String c2 = c(a2);
                    com.google.firebase.installations.q.c cVar = this.f15060c;
                    a2 = a2.b(c2);
                    cVar.a(a2);
                }
            } finally {
                if (a3 != null) {
                    a3.a();
                }
            }
        }
        return a2;
    }

    private void i() {
        com.google.android.gms.common.internal.m.a(b(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        com.google.android.gms.common.internal.m.a(c(), (Object) "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        com.google.android.gms.common.internal.m.a(a(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        com.google.android.gms.common.internal.m.a(o.b(b()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        com.google.android.gms.common.internal.m.a(o.a(a()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Nullable
    String a() {
        return this.f15058a.d().a();
    }

    @VisibleForTesting
    String b() {
        return this.f15058a.d().b();
    }

    @Nullable
    String c() {
        return this.f15058a.d().f();
    }

    @Override // com.google.firebase.installations.g
    @NonNull
    public e.i.b.b.d.h<String> getId() {
        i();
        String f2 = f();
        if (f2 != null) {
            return e.i.b.b.d.k.a(f2);
        }
        e.i.b.b.d.h<String> e2 = e();
        this.f15065h.execute(c.a(this));
        return e2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(boolean z) {
        com.google.firebase.installations.q.d h2 = h();
        if (z) {
            h2 = h2.n();
        }
        e(h2);
        this.f15066i.execute(e.a(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(boolean r3) {
        /*
            r2 = this;
            com.google.firebase.installations.q.d r0 = r2.g()
            boolean r1 = r0.h()     // Catch: com.google.firebase.installations.h -> L5f
            if (r1 != 0) goto L22
            boolean r1 = r0.k()     // Catch: com.google.firebase.installations.h -> L5f
            if (r1 == 0) goto L11
            goto L22
        L11:
            if (r3 != 0) goto L1d
            com.google.firebase.installations.o r3 = r2.f15061d     // Catch: com.google.firebase.installations.h -> L5f
            boolean r3 = r3.a(r0)     // Catch: com.google.firebase.installations.h -> L5f
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            return
        L1d:
            com.google.firebase.installations.q.d r3 = r2.a(r0)     // Catch: com.google.firebase.installations.h -> L5f
            goto L26
        L22:
            com.google.firebase.installations.q.d r3 = r2.d(r0)     // Catch: com.google.firebase.installations.h -> L5f
        L26:
            r2.b(r3)
            r2.a(r0, r3)
            boolean r0 = r3.j()
            if (r0 == 0) goto L39
            java.lang.String r0 = r3.c()
            r2.a(r0)
        L39:
            boolean r0 = r3.h()
            if (r0 == 0) goto L4a
            com.google.firebase.installations.h r3 = new com.google.firebase.installations.h
            com.google.firebase.installations.h$a r0 = com.google.firebase.installations.h.a.BAD_CONFIG
            r3.<init>(r0)
            r2.a(r3)
            goto L5e
        L4a:
            boolean r0 = r3.i()
            if (r0 == 0) goto L5b
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r3.<init>(r0)
            r2.a(r3)
            goto L5e
        L5b:
            r2.e(r3)
        L5e:
            return
        L5f:
            r3 = move-exception
            r2.a(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.f.b(boolean):void");
    }

    @Override // com.google.firebase.installations.g
    @NonNull
    public e.i.b.b.d.h<l> a(boolean z) {
        i();
        e.i.b.b.d.h<l> d2 = d();
        this.f15065h.execute(d.a(this, z));
        return d2;
    }

    f(ExecutorService executorService, com.google.firebase.c cVar, com.google.firebase.installations.r.c cVar2, com.google.firebase.installations.q.c cVar3, o oVar, com.google.firebase.installations.q.b bVar, m mVar) {
        this.f15064g = new Object();
        this.f15068k = new HashSet();
        this.f15069l = new ArrayList();
        this.f15058a = cVar;
        this.f15059b = cVar2;
        this.f15060c = cVar3;
        this.f15061d = oVar;
        this.f15062e = bVar;
        this.f15063f = mVar;
        this.f15065h = executorService;
        this.f15066i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), n);
    }

    private com.google.firebase.installations.q.d d(com.google.firebase.installations.q.d dVar) {
        com.google.firebase.installations.r.d a2 = this.f15059b.a(a(), dVar.c(), c(), b(), (dVar.c() == null || dVar.c().length() != 11) ? null : this.f15062e.b());
        int i2 = b.f15071a[a2.d().ordinal()];
        if (i2 == 1) {
            return dVar.a(a2.b(), a2.c(), this.f15061d.b(), a2.a().b(), a2.a().c());
        }
        if (i2 == 2) {
            return dVar.a("BAD CONFIG");
        }
        throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
    }

    private void e(com.google.firebase.installations.q.d dVar) {
        synchronized (this.f15064g) {
            Iterator<n> it = this.f15069l.iterator();
            while (it.hasNext()) {
                if (it.next().a(dVar)) {
                    it.remove();
                }
            }
        }
    }

    private void a(n nVar) {
        synchronized (this.f15064g) {
            this.f15069l.add(nVar);
        }
    }

    private String c(com.google.firebase.installations.q.d dVar) {
        if ((!this.f15058a.c().equals("CHIME_ANDROID_SDK") && !this.f15058a.g()) || !dVar.l()) {
            return this.f15063f.a();
        }
        String a2 = this.f15062e.a();
        return TextUtils.isEmpty(a2) ? this.f15063f.a() : a2;
    }

    private void a(Exception exc) {
        synchronized (this.f15064g) {
            Iterator<n> it = this.f15069l.iterator();
            while (it.hasNext()) {
                if (it.next().a(exc)) {
                    it.remove();
                }
            }
        }
    }

    private synchronized void a(String str) {
        this.f15067j = str;
    }

    private void b(com.google.firebase.installations.q.d dVar) {
        synchronized (m) {
            com.google.firebase.installations.b a2 = com.google.firebase.installations.b.a(this.f15058a.b(), "generatefid.lock");
            try {
                this.f15060c.a(dVar);
            } finally {
                if (a2 != null) {
                    a2.a();
                }
            }
        }
    }

    private synchronized void a(com.google.firebase.installations.q.d dVar, com.google.firebase.installations.q.d dVar2) {
        if (this.f15068k.size() != 0 && !dVar.c().equals(dVar2.c())) {
            Iterator<com.google.firebase.installations.p.a> it = this.f15068k.iterator();
            while (it.hasNext()) {
                it.next().a(dVar2.c());
            }
        }
    }

    private com.google.firebase.installations.q.d a(@NonNull com.google.firebase.installations.q.d dVar) {
        com.google.firebase.installations.r.f a2 = this.f15059b.a(a(), dVar.c(), c(), dVar.e());
        int i2 = b.f15072b[a2.a().ordinal()];
        if (i2 == 1) {
            return dVar.a(a2.b(), a2.c(), this.f15061d.b());
        }
        if (i2 == 2) {
            return dVar.a("BAD CONFIG");
        }
        if (i2 == 3) {
            a((String) null);
            return dVar.o();
        }
        throw new h("Firebase Installations Service is unavailable. Please try again later.", h.a.UNAVAILABLE);
    }
}
