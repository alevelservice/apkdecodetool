package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
final class f implements ServiceConnection {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    int f4936e;

    /* renamed from: f, reason: collision with root package name */
    final Messenger f4937f;

    /* renamed from: g, reason: collision with root package name */
    o f4938g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    final Queue<q<?>> f4939h;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    final SparseArray<q<?>> f4940i;

    /* renamed from: j, reason: collision with root package name */
    final /* synthetic */ e f4941j;

    private f(e eVar) {
        this.f4941j = eVar;
        this.f4936e = 0;
        this.f4937f = new Messenger(new e.i.b.b.b.a.e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.i

            /* renamed from: e, reason: collision with root package name */
            private final f f4943e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4943e = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f4943e.a(message);
            }
        }));
        this.f4939h = new ArrayDeque();
        this.f4940i = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean a(q<?> qVar) {
        int i2 = this.f4936e;
        if (i2 == 0) {
            this.f4939h.add(qVar);
            com.google.android.gms.common.internal.m.b(this.f4936e == 0);
            Log.isLoggable("MessengerIpcClient", 2);
            this.f4936e = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (!com.google.android.gms.common.stats.a.a().a(e.a(this.f4941j), intent, this, 1)) {
                a(0, "Unable to bind to service");
            } else {
                e.b(this.f4941j).schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.h

                    /* renamed from: e, reason: collision with root package name */
                    private final f f4942e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f4942e = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4942e.c();
                    }
                }, 30L, TimeUnit.SECONDS);
            }
            return true;
        }
        if (i2 == 1) {
            this.f4939h.add(qVar);
            return true;
        }
        if (i2 == 2) {
            this.f4939h.add(qVar);
            a();
            return true;
        }
        if (i2 != 3 && i2 != 4) {
            int i3 = this.f4936e;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Unknown state: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void b() {
        if (this.f4936e == 2 && this.f4939h.isEmpty() && this.f4940i.size() == 0) {
            Log.isLoggable("MessengerIpcClient", 2);
            this.f4936e = 3;
            com.google.android.gms.common.stats.a.a().a(e.a(this.f4941j), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void c() {
        if (this.f4936e == 1) {
            a(1, "Timed out while binding");
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        Log.isLoggable("MessengerIpcClient", 2);
        e.b(this.f4941j).execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.k

            /* renamed from: e, reason: collision with root package name */
            private final f f4945e;

            /* renamed from: f, reason: collision with root package name */
            private final IBinder f4946f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4945e = this;
                this.f4946f = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                f fVar = this.f4945e;
                IBinder iBinder2 = this.f4946f;
                synchronized (fVar) {
                    try {
                        if (iBinder2 == null) {
                            fVar.a(0, "Null service connection");
                            return;
                        }
                        try {
                            fVar.f4938g = new o(iBinder2);
                            fVar.f4936e = 2;
                            fVar.a();
                        } catch (RemoteException e2) {
                            fVar.a(0, e2.getMessage());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.isLoggable("MessengerIpcClient", 2);
        e.b(this.f4941j).execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.m

            /* renamed from: e, reason: collision with root package name */
            private final f f4949e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4949e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4949e.a(2, "Service disconnected");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Message message) {
        int i2 = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i2);
            sb.toString();
        }
        synchronized (this) {
            q<?> qVar = this.f4940i.get(i2);
            if (qVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i2);
                sb2.toString();
                return true;
            }
            this.f4940i.remove(i2);
            b();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                qVar.a(new p(4, "Not supported by GmsCore"));
            } else {
                qVar.a(data);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        e.b(this.f4941j).execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.j

            /* renamed from: e, reason: collision with root package name */
            private final f f4944e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4944e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final q<?> poll;
                final f fVar = this.f4944e;
                while (true) {
                    synchronized (fVar) {
                        if (fVar.f4936e != 2) {
                            return;
                        }
                        if (fVar.f4939h.isEmpty()) {
                            fVar.b();
                            return;
                        } else {
                            poll = fVar.f4939h.poll();
                            fVar.f4940i.put(poll.f4952a, poll);
                            e.b(fVar.f4941j).schedule(new Runnable(fVar, poll) { // from class: com.google.android.gms.cloudmessaging.l

                                /* renamed from: e, reason: collision with root package name */
                                private final f f4947e;

                                /* renamed from: f, reason: collision with root package name */
                                private final q f4948f;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f4947e = fVar;
                                    this.f4948f = poll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f4947e.a(this.f4948f.f4952a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        sb.toString();
                    }
                    Context a2 = e.a(fVar.f4941j);
                    Messenger messenger = fVar.f4937f;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f4954c;
                    obtain.arg1 = poll.f4952a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.a());
                    bundle.putString("pkg", a2.getPackageName());
                    bundle.putBundle(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, poll.f4955d);
                    obtain.setData(bundle);
                    try {
                        fVar.f4938g.a(obtain);
                    } catch (RemoteException e2) {
                        fVar.a(2, e2.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(int i2, @Nullable String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Disconnected: ".concat(valueOf);
            } else {
                new String("Disconnected: ");
            }
        }
        int i3 = this.f4936e;
        if (i3 == 0) {
            throw new IllegalStateException();
        }
        if (i3 != 1 && i3 != 2) {
            if (i3 != 3) {
                if (i3 == 4) {
                    return;
                }
                int i4 = this.f4936e;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
            this.f4936e = 4;
            return;
        }
        Log.isLoggable("MessengerIpcClient", 2);
        this.f4936e = 4;
        com.google.android.gms.common.stats.a.a().a(e.a(this.f4941j), this);
        p pVar = new p(i2, str);
        Iterator<q<?>> it = this.f4939h.iterator();
        while (it.hasNext()) {
            it.next().a(pVar);
        }
        this.f4939h.clear();
        for (int i5 = 0; i5 < this.f4940i.size(); i5++) {
            this.f4940i.valueAt(i5).a(pVar);
        }
        this.f4940i.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(int i2) {
        q<?> qVar = this.f4940i.get(i2);
        if (qVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i2);
            sb.toString();
            this.f4940i.remove(i2);
            qVar.a(new p(3, "Timed out waiting for response"));
            b();
        }
    }
}
