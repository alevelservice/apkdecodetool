package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.internal.h;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class g0 extends h implements Handler.Callback {

    /* renamed from: h, reason: collision with root package name */
    private final Context f5296h;

    /* renamed from: i, reason: collision with root package name */
    private final Handler f5297i;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("mConnectionStatus")
    private final HashMap<h.a, i0> f5295g = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    private final com.google.android.gms.common.stats.a f5298j = com.google.android.gms.common.stats.a.a();

    /* renamed from: k, reason: collision with root package name */
    private final long f5299k = 5000;

    /* renamed from: l, reason: collision with root package name */
    private final long f5300l = 300000;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(Context context) {
        this.f5296h = context.getApplicationContext();
        this.f5297i = new com.google.android.gms.internal.common.f(context.getMainLooper(), this);
    }

    @Override // com.google.android.gms.common.internal.h
    protected final boolean a(h.a aVar, ServiceConnection serviceConnection, String str) {
        boolean d2;
        m.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f5295g) {
            i0 i0Var = this.f5295g.get(aVar);
            if (i0Var == null) {
                i0Var = new i0(this, aVar);
                i0Var.a(serviceConnection, serviceConnection, str);
                i0Var.a(str);
                this.f5295g.put(aVar, i0Var);
            } else {
                this.f5297i.removeMessages(0, aVar);
                if (!i0Var.a(serviceConnection)) {
                    i0Var.a(serviceConnection, serviceConnection, str);
                    int c2 = i0Var.c();
                    if (c2 == 1) {
                        serviceConnection.onServiceConnected(i0Var.b(), i0Var.a());
                    } else if (c2 == 2) {
                        i0Var.a(str);
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            d2 = i0Var.d();
        }
        return d2;
    }

    @Override // com.google.android.gms.common.internal.h
    protected final void b(h.a aVar, ServiceConnection serviceConnection, String str) {
        m.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f5295g) {
            i0 i0Var = this.f5295g.get(aVar);
            if (i0Var != null) {
                if (i0Var.a(serviceConnection)) {
                    i0Var.a(serviceConnection, str);
                    if (i0Var.e()) {
                        this.f5297i.sendMessageDelayed(this.f5297i.obtainMessage(0, aVar), this.f5299k);
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 76);
                    sb.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                String valueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 50);
                sb2.append("Nonexistent connection status for service config: ");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            synchronized (this.f5295g) {
                h.a aVar = (h.a) message.obj;
                i0 i0Var = this.f5295g.get(aVar);
                if (i0Var != null && i0Var.e()) {
                    if (i0Var.d()) {
                        i0Var.b("GmsClientSupervisor");
                    }
                    this.f5295g.remove(aVar);
                }
            }
            return true;
        }
        if (i2 != 1) {
            return false;
        }
        synchronized (this.f5295g) {
            h.a aVar2 = (h.a) message.obj;
            i0 i0Var2 = this.f5295g.get(aVar2);
            if (i0Var2 != null && i0Var2.c() == 3) {
                String valueOf = String.valueOf(aVar2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                sb.append("Timeout waiting for ServiceConnection callback ");
                sb.append(valueOf);
                sb.toString();
                new Exception();
                ComponentName b2 = i0Var2.b();
                if (b2 == null) {
                    b2 = aVar2.a();
                }
                if (b2 == null) {
                    b2 = new ComponentName(aVar2.b(), "unknown");
                }
                i0Var2.onServiceDisconnected(b2);
            }
        }
        return true;
    }
}
