package com.google.firebase.crashlytics.d.h;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ap.zoloz.hummer.h5.H5PluginHandler;

/* compiled from: BatteryState.java */
/* loaded from: classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    private final Float f14413a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f14414b;

    private e(Float f2, boolean z) {
        this.f14414b = z;
        this.f14413a = f2;
    }

    public Float a() {
        return this.f14413a;
    }

    public int b() {
        Float f2;
        if (!this.f14414b || (f2 = this.f14413a) == null) {
            return 1;
        }
        return ((double) f2.floatValue()) < 0.99d ? 2 : 3;
    }

    public static e a(Context context) {
        boolean z;
        Float f2 = null;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            z = b(registerReceiver);
            f2 = a(registerReceiver);
        } else {
            z = false;
        }
        return new e(f2, z);
    }

    private static boolean b(Intent intent) {
        int intExtra = intent.getIntExtra(H5PluginHandler.ZIM_IDENTIFY_STATUS, -1);
        if (intExtra == -1) {
            return false;
        }
        return intExtra == 2 || intExtra == 5;
    }

    private static Float a(Intent intent) {
        int intExtra = intent.getIntExtra("level", -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }
}
