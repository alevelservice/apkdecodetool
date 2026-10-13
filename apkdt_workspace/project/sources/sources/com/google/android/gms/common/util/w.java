package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: b, reason: collision with root package name */
    private static long f5437b;

    /* renamed from: a, reason: collision with root package name */
    private static final IntentFilter f5436a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: c, reason: collision with root package name */
    private static float f5438c = Float.NaN;

    @TargetApi(20)
    public static int a(Context context) {
        boolean isScreenOn;
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f5436a);
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & (o.d() ? 7 : 3)) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        if (o.g()) {
            isScreenOn = powerManager.isInteractive();
        } else {
            isScreenOn = powerManager.isScreenOn();
        }
        return (isScreenOn ? 2 : 0) | i2;
    }

    public static synchronized float b(Context context) {
        synchronized (w.class) {
            if (SystemClock.elapsedRealtime() - f5437b < 60000 && !Float.isNaN(f5438c)) {
                return f5438c;
            }
            if (context.getApplicationContext().registerReceiver(null, f5436a) != null) {
                f5438c = r6.getIntExtra("level", -1) / r6.getIntExtra("scale", -1);
            }
            f5437b = SystemClock.elapsedRealtime();
            return f5438c;
        }
    }
}
