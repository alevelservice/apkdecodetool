package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes.dex */
public final class m7 implements ServiceConnection, BaseGmsClient.a, BaseGmsClient.b {

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f13090e;

    /* renamed from: f, reason: collision with root package name */
    private volatile c3 f13091f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ u6 f13092g;

    /* JADX INFO: Access modifiers changed from: protected */
    public m7(u6 u6Var) {
        this.f13092g = u6Var;
    }

    @WorkerThread
    public final void a(Intent intent) {
        m7 m7Var;
        this.f13092g.g();
        Context context = this.f13092g.getContext();
        com.google.android.gms.common.stats.a a2 = com.google.android.gms.common.stats.a.a();
        synchronized (this) {
            if (this.f13090e) {
                this.f13092g.zzab().y().a("Connection attempt already in progress");
                return;
            }
            this.f13092g.zzab().y().a("Using local app measurement service");
            this.f13090e = true;
            m7Var = this.f13092g.f13254c;
            a2.a(context, intent, m7Var, 129);
        }
    }

    @WorkerThread
    public final void b() {
        this.f13092g.g();
        Context context = this.f13092g.getContext();
        synchronized (this) {
            if (this.f13090e) {
                this.f13092g.zzab().y().a("Connection attempt already in progress");
                return;
            }
            if (this.f13091f != null && (this.f13091f.d() || this.f13091f.f())) {
                this.f13092g.zzab().y().a("Already awaiting connection attempt");
                return;
            }
            this.f13091f = new c3(context, Looper.getMainLooper(), this, this);
            this.f13092g.zzab().y().a("Connecting to remote service");
            this.f13090e = true;
            this.f13091f.k();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    @MainThread
    public final void onConnected(@Nullable Bundle bundle) {
        com.google.android.gms.common.internal.m.a("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.f13092g.b().a(new n7(this, this.f13091f.u()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f13091f = null;
                this.f13090e = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.b
    @MainThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        com.google.android.gms.common.internal.m.a("MeasurementServiceConnection.onConnectionFailed");
        f3 g2 = this.f13092g.f12908a.g();
        if (g2 != null) {
            g2.t().a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f13090e = false;
            this.f13091f = null;
        }
        this.f13092g.b().a(new p7(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    @MainThread
    public final void onConnectionSuspended(int i2) {
        com.google.android.gms.common.internal.m.a("MeasurementServiceConnection.onConnectionSuspended");
        this.f13092g.zzab().x().a("Service connection suspended");
        this.f13092g.b().a(new q7(this));
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        m7 m7Var;
        zzdx zzdzVar;
        com.google.android.gms.common.internal.m.a("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f13090e = false;
                this.f13092g.zzab().q().a("Service connected with null binder");
                return;
            }
            zzdx zzdxVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        if (queryLocalInterface instanceof zzdx) {
                            zzdzVar = (zzdx) queryLocalInterface;
                        } else {
                            zzdzVar = new zzdz(iBinder);
                        }
                        zzdxVar = zzdzVar;
                    }
                    this.f13092g.zzab().y().a("Bound to IMeasurementService interface");
                } else {
                    this.f13092g.zzab().q().a("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f13092g.zzab().q().a("Service connect failed to get IMeasurementService");
            }
            if (zzdxVar == null) {
                this.f13090e = false;
                try {
                    com.google.android.gms.common.stats.a a2 = com.google.android.gms.common.stats.a.a();
                    Context context = this.f13092g.getContext();
                    m7Var = this.f13092g.f13254c;
                    a2.a(context, m7Var);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f13092g.b().a(new l7(this, zzdxVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.m.a("MeasurementServiceConnection.onServiceDisconnected");
        this.f13092g.zzab().x().a("Service disconnected");
        this.f13092g.b().a(new o7(this, componentName));
    }

    @WorkerThread
    public final void a() {
        if (this.f13091f != null && (this.f13091f.f() || this.f13091f.d())) {
            this.f13091f.a();
        }
        this.f13091f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(m7 m7Var, boolean z) {
        m7Var.f13090e = false;
        return false;
    }
}
