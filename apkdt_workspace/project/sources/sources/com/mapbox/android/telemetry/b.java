package com.mapbox.android.telemetry;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.IntentFilter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AlarmSchedulerFlusher.java */
/* loaded from: classes2.dex */
public class b implements z {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15553a;

    /* renamed from: b, reason: collision with root package name */
    private final AlarmManager f15554b;

    /* renamed from: c, reason: collision with root package name */
    private final a f15555c;

    /* renamed from: d, reason: collision with root package name */
    private PendingIntent f15556d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, AlarmManager alarmManager, a aVar) {
        this.f15553a = context;
        this.f15554b = alarmManager;
        this.f15555c = aVar;
    }

    @Override // com.mapbox.android.telemetry.z
    public void a() {
        this.f15556d = PendingIntent.getBroadcast(this.f15553a, 0, this.f15555c.a(), 134217728);
        this.f15553a.registerReceiver(this.f15555c, new IntentFilter("com.mapbox.scheduler_flusher"));
    }

    @Override // com.mapbox.android.telemetry.z
    public void b() {
        PendingIntent pendingIntent = this.f15556d;
        if (pendingIntent != null) {
            this.f15554b.cancel(pendingIntent);
        }
        try {
            this.f15553a.unregisterReceiver(this.f15555c);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // com.mapbox.android.telemetry.z
    public void a(long j2) {
        long j3 = a0.f15550c;
        this.f15554b.setInexactRepeating(3, j2 + j3, j3, this.f15556d);
    }
}
