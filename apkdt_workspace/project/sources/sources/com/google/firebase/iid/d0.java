package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.iid.d0;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
public class d0 implements ServiceConnection {

    /* renamed from: e, reason: collision with root package name */
    private final Context f14977e;

    /* renamed from: f, reason: collision with root package name */
    private final Intent f14978f;

    /* renamed from: g, reason: collision with root package name */
    private final ScheduledExecutorService f14979g;

    /* renamed from: h, reason: collision with root package name */
    private final Queue<a> f14980h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private WithinAppServiceBinder f14981i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f14982j;

    public d0(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new com.google.android.gms.common.util.v.a("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    @GuardedBy("this")
    private void a() {
        while (!this.f14980h.isEmpty()) {
            this.f14980h.poll().a();
        }
    }

    private synchronized void b() {
        Log.isLoggable("FirebaseInstanceId", 3);
        while (!this.f14980h.isEmpty()) {
            Log.isLoggable("FirebaseInstanceId", 3);
            WithinAppServiceBinder withinAppServiceBinder = this.f14981i;
            if (withinAppServiceBinder != null && withinAppServiceBinder.isBinderAlive()) {
                Log.isLoggable("FirebaseInstanceId", 3);
                this.f14981i.send(this.f14980h.poll());
            } else {
                c();
                return;
            }
        }
    }

    @GuardedBy("this")
    private void c() {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            boolean z = this.f14982j;
            StringBuilder sb = new StringBuilder(39);
            sb.append("binder is dead. start connection? ");
            sb.append(!z);
            sb.toString();
        }
        if (this.f14982j) {
            return;
        }
        this.f14982j = true;
        try {
            if (com.google.android.gms.common.stats.a.a().a(this.f14977e, this.f14978f, this, 65)) {
                return;
            }
        } catch (SecurityException unused) {
        }
        this.f14982j = false;
        a();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("onServiceConnected: ");
            sb.append(valueOf);
            sb.toString();
        }
        this.f14982j = false;
        if (!(iBinder instanceof WithinAppServiceBinder)) {
            String valueOf2 = String.valueOf(iBinder);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 28);
            sb2.append("Invalid service connection: ");
            sb2.append(valueOf2);
            sb2.toString();
            a();
            return;
        }
        this.f14981i = (WithinAppServiceBinder) iBinder;
        b();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
            sb.toString();
        }
        b();
    }

    @VisibleForTesting
    d0(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f14980h = new ArrayDeque();
        this.f14982j = false;
        this.f14977e = context.getApplicationContext();
        this.f14978f = new Intent(str).setPackage(this.f14977e.getPackageName());
        this.f14979g = scheduledExecutorService;
    }

    public synchronized e.i.b.b.d.h<Void> a(Intent intent) {
        a aVar;
        Log.isLoggable("FirebaseInstanceId", 3);
        aVar = new a(intent);
        aVar.a(this.f14979g);
        this.f14980h.add(aVar);
        b();
        return aVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final Intent f14983a;

        /* renamed from: b, reason: collision with root package name */
        private final e.i.b.b.d.i<Void> f14984b = new e.i.b.b.d.i<>();

        a(Intent intent) {
            this.f14983a = intent;
        }

        void a(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.iid.b0

                /* renamed from: e, reason: collision with root package name */
                private final d0.a f14972e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f14972e = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.f14972e.c();
                }
            }, 9000L, TimeUnit.MILLISECONDS);
            b().a(scheduledExecutorService, new e.i.b.b.d.c(schedule) { // from class: com.google.firebase.iid.c0

                /* renamed from: a, reason: collision with root package name */
                private final ScheduledFuture f14975a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f14975a = schedule;
                }

                @Override // e.i.b.b.d.c
                public void a(e.i.b.b.d.h hVar) {
                    this.f14975a.cancel(false);
                }
            });
        }

        e.i.b.b.d.h<Void> b() {
            return this.f14984b.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void c() {
            String action = this.f14983a.getAction();
            StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
            sb.append("Service took too long to process intent: ");
            sb.append(action);
            sb.append(" App may get closed.");
            sb.toString();
            a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            this.f14984b.b((e.i.b.b.d.i<Void>) null);
        }
    }
}
