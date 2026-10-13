package com.mapbox.android.telemetry;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;

/* compiled from: AlarmReceiver.java */
/* loaded from: classes2.dex */
class a extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private final y f15549a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull y yVar) {
        this.f15549a = yVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent a() {
        return new Intent("com.mapbox.scheduler_flusher");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if ("com.mapbox.scheduler_flusher".equals(intent.getAction())) {
                this.f15549a.a();
            }
        } catch (Throwable th) {
            th.toString();
        }
    }
}
