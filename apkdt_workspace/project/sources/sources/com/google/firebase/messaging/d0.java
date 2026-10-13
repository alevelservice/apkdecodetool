package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: i, reason: collision with root package name */
    private static final long f15229i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a, reason: collision with root package name */
    private final FirebaseInstanceId f15230a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f15231b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.firebase.iid.r f15232c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.firebase.iid.o f15233d;

    /* renamed from: f, reason: collision with root package name */
    private final ScheduledExecutorService f15235f;

    /* renamed from: h, reason: collision with root package name */
    private final b0 f15237h;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("pendingOperations")
    private final Map<String, ArrayDeque<e.i.b.b.d.i<Void>>> f15234e = new a.e.a();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f15236g = false;

    private d0(FirebaseInstanceId firebaseInstanceId, com.google.firebase.iid.r rVar, b0 b0Var, com.google.firebase.iid.o oVar, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f15230a = firebaseInstanceId;
        this.f15232c = rVar;
        this.f15237h = b0Var;
        this.f15233d = oVar;
        this.f15231b = context;
        this.f15235f = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ d0 a(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseInstanceId firebaseInstanceId, com.google.firebase.iid.r rVar, com.google.firebase.iid.o oVar) {
        return new d0(firebaseInstanceId, rVar, b0.a(context, scheduledExecutorService), oVar, context, scheduledExecutorService);
    }

    private void a(a0 a0Var, e.i.b.b.d.i<Void> iVar) {
        ArrayDeque<e.i.b.b.d.i<Void>> arrayDeque;
        synchronized (this.f15234e) {
            String c2 = a0Var.c();
            if (this.f15234e.containsKey(c2)) {
                arrayDeque = this.f15234e.get(c2);
            } else {
                ArrayDeque<e.i.b.b.d.i<Void>> arrayDeque2 = new ArrayDeque<>();
                this.f15234e.put(c2, arrayDeque2);
                arrayDeque = arrayDeque2;
            }
            arrayDeque.add(iVar);
        }
    }

    @WorkerThread
    private void c(String str) {
        com.google.firebase.iid.p pVar = (com.google.firebase.iid.p) a(this.f15230a.e());
        a(this.f15233d.c(pVar.getId(), pVar.a(), str));
    }

    @WorkerThread
    private void d(String str) {
        com.google.firebase.iid.p pVar = (com.google.firebase.iid.p) a(this.f15230a.e());
        a(this.f15233d.d(pVar.getId(), pVar.a(), str));
    }

    static boolean e() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3);
    }

    private void f() {
        if (b()) {
            return;
        }
        a(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(boolean z) {
        this.f15236g = z;
    }

    @VisibleForTesting
    e.i.b.b.d.h<Void> b(a0 a0Var) {
        this.f15237h.a(a0Var);
        e.i.b.b.d.i<Void> iVar = new e.i.b.b.d.i<>();
        a(a0Var, iVar);
        return iVar.a();
    }

    synchronized boolean b() {
        return this.f15236g;
    }

    private void c(a0 a0Var) {
        synchronized (this.f15234e) {
            String c2 = a0Var.c();
            if (this.f15234e.containsKey(c2)) {
                ArrayDeque<e.i.b.b.d.i<Void>> arrayDeque = this.f15234e.get(c2);
                e.i.b.b.d.i<Void> poll = arrayDeque.poll();
                if (poll != null) {
                    poll.a((e.i.b.b.d.i<Void>) null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f15234e.remove(c2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public boolean d() {
        while (true) {
            synchronized (this) {
                a0 a2 = this.f15237h.a();
                if (a2 == null) {
                    e();
                    return true;
                }
                if (!a(a2)) {
                    return false;
                }
                this.f15237h.b(a2);
                c(a2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> b(String str) {
        e.i.b.b.d.h<Void> b2 = b(a0.c(str));
        c();
        return b2;
    }

    @WorkerThread
    private static <T> T a(e.i.b.b.d.h<T> hVar) {
        try {
            return (T) e.i.b.b.d.k.a(hVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException(e3);
            }
            throw ((IOException) cause);
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (a()) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e.i.b.b.d.h<d0> a(com.google.firebase.c cVar, FirebaseInstanceId firebaseInstanceId, com.google.firebase.iid.r rVar, com.google.firebase.p.b<com.google.firebase.r.i> bVar, com.google.firebase.p.b<com.google.firebase.o.f> bVar2, com.google.firebase.installations.g gVar, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        return a(firebaseInstanceId, rVar, new com.google.firebase.iid.o(cVar, rVar, bVar, bVar2, gVar), context, scheduledExecutorService);
    }

    boolean a() {
        return this.f15237h.a() != null;
    }

    @WorkerThread
    boolean a(a0 a0Var) {
        char c2;
        try {
            String a2 = a0Var.a();
            int hashCode = a2.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && a2.equals("U")) {
                    c2 = 1;
                }
                c2 = 65535;
            } else {
                if (a2.equals("S")) {
                    c2 = 0;
                }
                c2 = 65535;
            }
            if (c2 == 0) {
                c(a0Var.b());
                if (e()) {
                    String b2 = a0Var.b();
                    StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 31);
                    sb.append("Subscribe to topic: ");
                    sb.append(b2);
                    sb.append(" succeeded.");
                    sb.toString();
                }
            } else if (c2 != 1) {
                if (e()) {
                    String valueOf = String.valueOf(a0Var);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 24);
                    sb2.append("Unknown topic operation");
                    sb2.append(valueOf);
                    sb2.append(".");
                    sb2.toString();
                }
            } else {
                d(a0Var.b());
                if (e()) {
                    String b3 = a0Var.b();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(b3).length() + 35);
                    sb3.append("Unsubscribe from topic: ");
                    sb3.append(b3);
                    sb3.append(" succeeded.");
                    sb3.toString();
                }
            }
            return true;
        } catch (IOException e2) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e2.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e2.getMessage())) {
                if (e2.getMessage() == null) {
                    return false;
                }
                throw e2;
            }
            String message = e2.getMessage();
            StringBuilder sb4 = new StringBuilder(String.valueOf(message).length() + 53);
            sb4.append("Topic operation failed: ");
            sb4.append(message);
            sb4.append(". Will retry Topic operation.");
            sb4.toString();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Runnable runnable, long j2) {
        this.f15235f.schedule(runnable, j2, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> a(String str) {
        e.i.b.b.d.h<Void> b2 = b(a0.b(str));
        c();
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j2) {
        a(new e0(this, this.f15231b, this.f15232c, Math.min(Math.max(30L, j2 + j2), f15229i)), j2);
        a(true);
    }

    @VisibleForTesting
    static e.i.b.b.d.h<d0> a(final FirebaseInstanceId firebaseInstanceId, final com.google.firebase.iid.r rVar, final com.google.firebase.iid.o oVar, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return e.i.b.b.d.k.a(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseInstanceId, rVar, oVar) { // from class: com.google.firebase.messaging.c0

            /* renamed from: e, reason: collision with root package name */
            private final Context f15221e;

            /* renamed from: f, reason: collision with root package name */
            private final ScheduledExecutorService f15222f;

            /* renamed from: g, reason: collision with root package name */
            private final FirebaseInstanceId f15223g;

            /* renamed from: h, reason: collision with root package name */
            private final com.google.firebase.iid.r f15224h;

            /* renamed from: i, reason: collision with root package name */
            private final com.google.firebase.iid.o f15225i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15221e = context;
                this.f15222f = scheduledExecutorService;
                this.f15223g = firebaseInstanceId;
                this.f15224h = rVar;
                this.f15225i = oVar;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return d0.a(this.f15221e, this.f15222f, this.f15223g, this.f15224h, this.f15225i);
            }
        });
    }
}
