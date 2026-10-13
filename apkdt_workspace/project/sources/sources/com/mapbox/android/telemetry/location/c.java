package com.mapbox.android.telemetry.location;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import e.m.a.a.d.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LocationEngineControllerImpl.java */
/* loaded from: classes2.dex */
public class c implements b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15630a;

    /* renamed from: b, reason: collision with root package name */
    private final e.m.a.a.d.c f15631b;

    /* renamed from: c, reason: collision with root package name */
    private final LocationUpdatesBroadcastReceiver f15632c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull Context context, @NonNull e.m.a.a.d.c cVar, @NonNull LocationUpdatesBroadcastReceiver locationUpdatesBroadcastReceiver) {
        this.f15630a = context;
        this.f15631b = cVar;
        this.f15632c = locationUpdatesBroadcastReceiver;
    }

    private boolean a() {
        return androidx.core.content.a.a(this.f15630a, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    private PendingIntent b() {
        return PendingIntent.getBroadcast(this.f15630a, 0, new Intent("com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"), 134217728);
    }

    private void c() {
        try {
            this.f15630a.registerReceiver(this.f15632c, new IntentFilter("com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"));
        } catch (IllegalArgumentException e2) {
            e2.toString();
        }
    }

    private void d() {
        this.f15631b.a(b());
    }

    @SuppressLint({"MissingPermission"})
    private void e() {
        if (a()) {
            try {
                this.f15631b.a(a(1000L), b());
            } catch (SecurityException e2) {
                e2.toString();
            }
        }
    }

    private void f() {
        try {
            this.f15630a.unregisterReceiver(this.f15632c);
        } catch (IllegalArgumentException e2) {
            e2.toString();
        }
    }

    @Override // com.mapbox.android.telemetry.location.b
    public void onDestroy() {
        d();
        f();
    }

    @Override // com.mapbox.android.telemetry.location.b
    public void onResume() {
        c();
        e();
    }

    private static h a(long j2) {
        h.b bVar = new h.b(j2);
        bVar.a(3);
        bVar.b(5000L);
        return bVar.a();
    }
}
