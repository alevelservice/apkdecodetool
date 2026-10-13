package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.ev;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
public final class nv0 implements BaseGmsClient.a, BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private aw0 f8440e;

    /* renamed from: f, reason: collision with root package name */
    private final String f8441f;

    /* renamed from: g, reason: collision with root package name */
    private final String f8442g;

    /* renamed from: h, reason: collision with root package name */
    private final LinkedBlockingQueue<ev> f8443h;

    /* renamed from: i, reason: collision with root package name */
    private final HandlerThread f8444i = new HandlerThread("GassClient");

    public nv0(Context context, String str, String str2) {
        this.f8441f = str;
        this.f8442g = str2;
        this.f8444i.start();
        this.f8440e = new aw0(context, this.f8444i.getLooper(), this, this);
        this.f8443h = new LinkedBlockingQueue<>();
        this.f8440e.k();
    }

    private final zzczc b() {
        try {
            return this.f8440e.A();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @VisibleForTesting
    private static ev c() {
        ev.b r = ev.r();
        r.j(32768L);
        return (ev) r.s();
    }

    public final ev a(int i2) {
        ev evVar;
        try {
            evVar = this.f8443h.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            evVar = null;
        }
        return evVar == null ? c() : evVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(Bundle bundle) {
        zzczc b2 = b();
        if (b2 != null) {
            try {
                try {
                    this.f8443h.put(b2.zza(new zzcyy(this.f8441f, this.f8442g)).j());
                    a();
                    this.f8444i.quit();
                } catch (Throwable unused) {
                    this.f8443h.put(c());
                    a();
                    this.f8444i.quit();
                }
            } catch (InterruptedException unused2) {
                a();
                this.f8444i.quit();
            } catch (Throwable th) {
                a();
                this.f8444i.quit();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.f8443h.put(c());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnectionSuspended(int i2) {
        try {
            this.f8443h.put(c());
        } catch (InterruptedException unused) {
        }
    }

    private final void a() {
        aw0 aw0Var = this.f8440e;
        if (aw0Var != null) {
            if (aw0Var.f() || this.f8440e.d()) {
                this.f8440e.a();
            }
        }
    }
}
