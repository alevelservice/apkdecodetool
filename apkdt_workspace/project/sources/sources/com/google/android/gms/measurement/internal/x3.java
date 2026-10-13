package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.internal.measurement.zze;
import com.google.android.gms.internal.measurement.zzf;

/* loaded from: classes.dex */
public final class x3 implements ServiceConnection {

    /* renamed from: e, reason: collision with root package name */
    private final String f13316e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ u3 f13317f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x3(u3 u3Var, String str) {
        this.f13317f = u3Var;
        this.f13316e = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f13317f.f13247a.zzab().t().a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzf zza = zze.zza(iBinder);
            if (zza == null) {
                this.f13317f.f13247a.zzab().t().a("Install Referrer Service implementation was not found");
            } else {
                this.f13317f.f13247a.zzab().w().a("Install Referrer Service connected");
                this.f13317f.f13247a.b().a(new w3(this, zza, this));
            }
        } catch (Exception e2) {
            this.f13317f.f13247a.zzab().t().a("Exception occurred while calling Install Referrer API", e2);
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f13317f.f13247a.zzab().w().a("Install Referrer Service disconnected");
    }
}
