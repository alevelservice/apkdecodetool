package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.b4;
import com.google.android.gms.measurement.internal.z3;

/* loaded from: classes.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements b4 {

    /* renamed from: g, reason: collision with root package name */
    private z3 f12731g;

    @Override // com.google.android.gms.measurement.internal.b4
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override // com.google.android.gms.measurement.internal.b4
    @MainThread
    public final void doStartService(Context context, Intent intent) {
        WakefulBroadcastReceiver.startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        if (this.f12731g == null) {
            this.f12731g = new z3(this);
        }
        this.f12731g.a(context, intent);
    }
}
