package com.mapbox.android.telemetry.location;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.mapbox.android.accounts.v1.AccountsConstants;
import com.mapbox.android.telemetry.x;
import e.m.a.a.d.f;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: LocationCollectionClient.java */
/* loaded from: classes2.dex */
public class a implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g, reason: collision with root package name */
    private static final Object f15621g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private static a f15622h;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final b f15623a;

    /* renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f15624b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    private final AtomicReference<e> f15625c = new AtomicReference<>();

    /* renamed from: d, reason: collision with root package name */
    private final HandlerThread f15626d;

    /* renamed from: e, reason: collision with root package name */
    private final x f15627e;

    /* renamed from: f, reason: collision with root package name */
    private Handler f15628f;

    /* compiled from: LocationCollectionClient.java */
    /* renamed from: com.mapbox.android.telemetry.location.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class HandlerC0152a extends Handler {
        HandlerC0152a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                a.this.a(message);
            } catch (Throwable th) {
                th.toString();
            }
        }
    }

    @VisibleForTesting
    a(@NonNull b bVar, @NonNull HandlerThread handlerThread, @NonNull e eVar, @NonNull SharedPreferences sharedPreferences, @NonNull x xVar) {
        this.f15623a = bVar;
        this.f15626d = handlerThread;
        this.f15625c.set(eVar);
        this.f15627e = xVar;
        this.f15626d.start();
        this.f15628f = new HandlerC0152a(handlerThread.getLooper());
        a(sharedPreferences);
    }

    public static a a(@NonNull Context context, long j2) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f15621g) {
            if (f15622h == null) {
                f15622h = new a(new c(context, f.a(context), new LocationUpdatesBroadcastReceiver()), new HandlerThread("LocationSettingsChangeThread"), new e(j2), context.getSharedPreferences(AccountsConstants.MAPBOX_SHARED_PREFERENCES, 0), new x(context, "", String.format("%s/%s", "mapbox-android-location", "5.0.1")));
            }
        }
        return f15622h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static a d() {
        a aVar;
        synchronized (f15621g) {
            if (f15622h != null) {
                aVar = f15622h;
            } else {
                throw new IllegalStateException("LocationCollectionClient is not installed.");
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b() {
        return this.f15627e;
    }

    boolean c() {
        return this.f15624b.get();
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        try {
            if ("mapboxTelemetryLocationState".equals(str)) {
                a(sharedPreferences.getBoolean("mapboxTelemetryLocationState", false));
            } else if ("mapboxSessionRotationInterval".equals(str)) {
                a(sharedPreferences.getLong("mapboxSessionRotationInterval", TimeUnit.HOURS.toMillis(24L)));
            }
        } catch (Exception e2) {
            e2.toString();
        }
    }

    void a(long j2) {
        this.f15625c.set(new e(j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f15625c.get().b();
    }

    void a(boolean z) {
        if (this.f15624b.compareAndSet(!z, z)) {
            this.f15628f.sendEmptyMessage(0);
        }
    }

    @VisibleForTesting
    void a(Message message) {
        if (message.what != 0) {
            return;
        }
        if (c()) {
            this.f15623a.onResume();
            this.f15627e.b();
        } else {
            this.f15623a.onDestroy();
            this.f15627e.a();
        }
    }

    private void a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean("mapboxTelemetryLocationState", this.f15624b.get());
        edit.putLong("mapboxSessionRotationInterval", this.f15625c.get().a());
        edit.apply();
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
    }
}
