package com.google.firebase.iid;

import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.iid.v;
import com.google.firebase.iid.x;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import javax.annotation.Nonnull;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@Deprecated
/* loaded from: classes.dex */
public class FirebaseInstanceId {

    /* renamed from: i, reason: collision with root package name */
    private static x f14957i;

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("FirebaseInstanceId.class")
    static ScheduledExecutorService f14959k;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final Executor f14960a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.c f14961b;

    /* renamed from: c, reason: collision with root package name */
    private final r f14962c;

    /* renamed from: d, reason: collision with root package name */
    private final o f14963d;

    /* renamed from: e, reason: collision with root package name */
    private final v f14964e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.installations.g f14965f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f14966g;

    /* renamed from: h, reason: collision with root package name */
    private static final long f14956h = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: j, reason: collision with root package name */
    private static final Pattern f14958j = Pattern.compile("\\AA[\\w-]{38}\\z");

    FirebaseInstanceId(com.google.firebase.c cVar, r rVar, Executor executor, Executor executor2, com.google.firebase.p.b<com.google.firebase.r.i> bVar, com.google.firebase.p.b<com.google.firebase.o.f> bVar2, com.google.firebase.installations.g gVar) {
        this.f14966g = false;
        if (r.a(cVar) != null) {
            synchronized (FirebaseInstanceId.class) {
                if (f14957i == null) {
                    f14957i = new x(cVar.b());
                }
            }
            this.f14961b = cVar;
            this.f14962c = rVar;
            this.f14963d = new o(cVar, rVar, bVar, bVar2, gVar);
            this.f14960a = executor2;
            this.f14964e = new v(executor);
            this.f14965f = gVar;
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    private <T> T a(e.i.b.b.d.h<T> hVar) {
        try {
            return (T) e.i.b.b.d.k.a(hVar, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException unused) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    i();
                }
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    private static <T> T b(@NonNull e.i.b.b.d.h<T> hVar) {
        com.google.android.gms.common.internal.m.a(hVar, "Task must not be null");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        hVar.a(j.f14995e, new e.i.b.b.d.c(countDownLatch) { // from class: com.google.firebase.iid.k

            /* renamed from: a, reason: collision with root package name */
            private final CountDownLatch f14996a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f14996a = countDownLatch;
            }

            @Override // e.i.b.b.d.c
            public void a(e.i.b.b.d.h hVar2) {
                this.f14996a.countDown();
            }
        });
        countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        return (T) c(hVar);
    }

    @NonNull
    @Keep
    public static FirebaseInstanceId getInstance(@NonNull com.google.firebase.c cVar) {
        a(cVar);
        FirebaseInstanceId firebaseInstanceId = (FirebaseInstanceId) cVar.a(FirebaseInstanceId.class);
        com.google.android.gms.common.internal.m.a(firebaseInstanceId, "Firebase Instance ID component is not present");
        return firebaseInstanceId;
    }

    @NonNull
    public static FirebaseInstanceId k() {
        return getInstance(com.google.firebase.c.k());
    }

    private String l() {
        return "[DEFAULT]".equals(this.f14961b.c()) ? "" : this.f14961b.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m() {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
    }

    private void n() {
        if (a(g())) {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ e.i.b.b.d.h a(final String str, final String str2, e.i.b.b.d.h hVar) {
        final String d2 = d();
        x.a c2 = c(str, str2);
        return !a(c2) ? e.i.b.b.d.k.a(new q(d2, c2.f15034a)) : this.f14964e.a(str, str2, new v.a(this, d2, str, str2) { // from class: com.google.firebase.iid.l

            /* renamed from: a, reason: collision with root package name */
            private final FirebaseInstanceId f14997a;

            /* renamed from: b, reason: collision with root package name */
            private final String f14998b;

            /* renamed from: c, reason: collision with root package name */
            private final String f14999c;

            /* renamed from: d, reason: collision with root package name */
            private final String f15000d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f14997a = this;
                this.f14998b = d2;
                this.f14999c = str;
                this.f15000d = str2;
            }

            @Override // com.google.firebase.iid.v.a
            public e.i.b.b.d.h start() {
                return this.f14997a.a(this.f14998b, this.f14999c, this.f15000d);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ e.i.b.b.d.h a(final String str, final String str2, final String str3) {
        return this.f14963d.b(str, str2, str3).a(this.f14960a, new e.i.b.b.d.g(this, str2, str3, str) { // from class: com.google.firebase.iid.m

            /* renamed from: a, reason: collision with root package name */
            private final FirebaseInstanceId f15001a;

            /* renamed from: b, reason: collision with root package name */
            private final String f15002b;

            /* renamed from: c, reason: collision with root package name */
            private final String f15003c;

            /* renamed from: d, reason: collision with root package name */
            private final String f15004d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15001a = this;
                this.f15002b = str2;
                this.f15003c = str3;
                this.f15004d = str;
            }

            @Override // e.i.b.b.d.g
            public e.i.b.b.d.h a(Object obj) {
                return this.f15001a.a(this.f15002b, this.f15003c, this.f15004d, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ e.i.b.b.d.h a(String str, String str2, String str3, String str4) {
        f14957i.a(l(), str, str2, str4, this.f14962c.a());
        return e.i.b.b.d.k.a(new q(str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(boolean z) {
        this.f14966g = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.firebase.c b() {
        return this.f14961b;
    }

    @NonNull
    @WorkerThread
    @Deprecated
    public String c() {
        a(this.f14961b);
        n();
        return d();
    }

    String d() {
        try {
            f14957i.a(this.f14961b.e());
            return (String) b(this.f14965f.getId());
        } catch (InterruptedException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @NonNull
    @Deprecated
    public e.i.b.b.d.h<p> e() {
        a(this.f14961b);
        return d(r.a(this.f14961b), "*");
    }

    @Nullable
    @Deprecated
    public String f() {
        a(this.f14961b);
        x.a g2 = g();
        if (a(g2)) {
            j();
        }
        return x.a.a(g2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public x.a g() {
        return c(r.a(this.f14961b), "*");
    }

    @VisibleForTesting
    public boolean h() {
        return this.f14962c.e();
    }

    synchronized void i() {
        f14957i.a();
    }

    synchronized void j() {
        if (this.f14966g) {
            return;
        }
        a(0L);
    }

    private static <T> T c(@NonNull e.i.b.b.d.h<T> hVar) {
        if (hVar.e()) {
            return hVar.b();
        }
        if (!hVar.c()) {
            if (hVar.d()) {
                throw new IllegalStateException(hVar.a());
            }
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
        throw new CancellationException("Task is already canceled");
    }

    private e.i.b.b.d.h<p> d(final String str, String str2) {
        final String c2 = c(str2);
        return e.i.b.b.d.k.a((Object) null).b(this.f14960a, new e.i.b.b.d.a(this, str, c2) { // from class: com.google.firebase.iid.i

            /* renamed from: a, reason: collision with root package name */
            private final FirebaseInstanceId f14992a;

            /* renamed from: b, reason: collision with root package name */
            private final String f14993b;

            /* renamed from: c, reason: collision with root package name */
            private final String f14994c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f14992a = this;
                this.f14993b = str;
                this.f14994c = c2;
            }

            @Override // e.i.b.b.d.a
            public Object a(e.i.b.b.d.h hVar) {
                return this.f14992a.a(this.f14993b, this.f14994c, hVar);
            }
        });
    }

    static boolean b(@Nonnull String str) {
        return str.contains(":");
    }

    @Nullable
    @WorkerThread
    @Deprecated
    public String b(@NonNull String str, @NonNull String str2) {
        a(this.f14961b);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((p) a(d(str, str2))).a();
        }
        throw new IOException("MAIN_THREAD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseInstanceId(com.google.firebase.c cVar, com.google.firebase.p.b<com.google.firebase.r.i> bVar, com.google.firebase.p.b<com.google.firebase.o.f> bVar2, com.google.firebase.installations.g gVar) {
        this(cVar, new r(cVar.b()), h.b(), h.b(), bVar, bVar2, gVar);
    }

    private static String c(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return b(r.a(this.f14961b), "*");
    }

    private static void a(@NonNull com.google.firebase.c cVar) {
        com.google.android.gms.common.internal.m.a(cVar.d().f(), (Object) "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        com.google.android.gms.common.internal.m.a(cVar.d().b(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        com.google.android.gms.common.internal.m.a(cVar.d().a(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        com.google.android.gms.common.internal.m.a(b(cVar.d().b()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        com.google.android.gms.common.internal.m.a(a(cVar.d().a()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Nullable
    @VisibleForTesting
    x.a c(String str, String str2) {
        return f14957i.b(l(), str, str2);
    }

    @WorkerThread
    @Deprecated
    public void a(@NonNull String str, @NonNull String str2) {
        a(this.f14961b);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String c2 = c(str2);
            a(this.f14963d.a(d(), str, c2));
            f14957i.a(l(), str, c2);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Runnable runnable, long j2) {
        synchronized (FirebaseInstanceId.class) {
            if (f14959k == null) {
                f14959k = new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.v.a("FirebaseInstanceId"));
            }
            f14959k.schedule(runnable, j2, TimeUnit.SECONDS);
        }
    }

    static boolean a(@Nonnull String str) {
        return f14958j.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(long j2) {
        a(new y(this, Math.min(Math.max(30L, j2 + j2), f14956h)), j2);
        this.f14966g = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@Nullable x.a aVar) {
        return aVar == null || aVar.a(this.f14962c.a());
    }
}
