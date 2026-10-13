package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.measurement.internal.b4;
import com.google.android.gms.measurement.internal.z3;

/* loaded from: classes.dex */
public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements b4 {

    /* renamed from: e, reason: collision with root package name */
    private z3 f12729e;

    @Override // com.google.android.gms.measurement.internal.b4
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override // com.google.android.gms.measurement.internal.b4
    public final void doStartService(Context context, Intent intent) {
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        if (this.f12729e == null) {
            this.f12729e = new z3(this);
        }
        this.f12729e.a(context, intent);
    }
}
