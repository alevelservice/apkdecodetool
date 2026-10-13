package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.iid.WithinAppServiceBinder;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes.dex */
public abstract class EnhancedIntentService extends Service {

    /* renamed from: e, reason: collision with root package name */
    private Binder f15170e;

    /* renamed from: g, reason: collision with root package name */
    private int f15172g;

    @VisibleForTesting
    final ExecutorService executor = g.b();

    /* renamed from: f, reason: collision with root package name */
    private final Object f15171f = new Object();

    /* renamed from: h, reason: collision with root package name */
    private int f15173h = 0;

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    class a implements WithinAppServiceBinder.a {
        a() {
        }

        @Override // com.google.firebase.iid.WithinAppServiceBinder.a
        @KeepForSdk
        public e.i.b.b.d.h<Void> a(Intent intent) {
            return EnhancedIntentService.this.b(intent);
        }
    }

    private void a(Intent intent) {
        if (intent != null) {
            com.google.firebase.iid.z.a(intent);
        }
        synchronized (this.f15171f) {
            int i2 = this.f15173h - 1;
            this.f15173h = i2;
            if (i2 == 0) {
                stopSelfResultHook(this.f15172g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public e.i.b.b.d.h<Void> b(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return e.i.b.b.d.k.a((Object) null);
        }
        final e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        this.executor.execute(new Runnable(this, intent, iVar) { // from class: com.google.firebase.messaging.d

            /* renamed from: e, reason: collision with root package name */
            private final EnhancedIntentService f15226e;

            /* renamed from: f, reason: collision with root package name */
            private final Intent f15227f;

            /* renamed from: g, reason: collision with root package name */
            private final e.i.b.b.d.i f15228g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15226e = this;
                this.f15227f = intent;
                this.f15228g = iVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f15226e.lambda$processIntent$0$EnhancedIntentService(this.f15227f, this.f15228g);
            }
        });
        return iVar.a();
    }

    protected Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onStartCommand$1$EnhancedIntentService(Intent intent, e.i.b.b.d.h hVar) {
        a(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$processIntent$0$EnhancedIntentService(Intent intent, e.i.b.b.d.i iVar) {
        try {
            handleIntent(intent);
        } finally {
            iVar.a((e.i.b.b.d.i) null);
        }
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        Log.isLoggable("EnhancedIntentService", 3);
        if (this.f15170e == null) {
            this.f15170e = new WithinAppServiceBinder(new a());
        }
        return this.f15170e;
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i2, int i3) {
        synchronized (this.f15171f) {
            this.f15172g = i3;
            this.f15173h++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            a(intent);
            return 2;
        }
        e.i.b.b.d.h<Void> b2 = b(startCommandIntent);
        if (b2.d()) {
            a(intent);
            return 2;
        }
        b2.a(e.f15238e, new e.i.b.b.d.c(this, intent) { // from class: com.google.firebase.messaging.f

            /* renamed from: a, reason: collision with root package name */
            private final EnhancedIntentService f15249a;

            /* renamed from: b, reason: collision with root package name */
            private final Intent f15250b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15249a = this;
                this.f15250b = intent;
            }

            @Override // e.i.b.b.d.c
            public void a(e.i.b.b.d.h hVar) {
                this.f15249a.lambda$onStartCommand$1$EnhancedIntentService(this.f15250b, hVar);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i2) {
        return stopSelfResult(i2);
    }
}
