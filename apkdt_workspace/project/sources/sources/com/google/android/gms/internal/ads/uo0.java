package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uo0 implements ko0<vo0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f9782a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f9783b;

    public uo0(tz0 tz0Var, Context context) {
        this.f9782a = tz0Var;
        this.f9783b = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<vo0> a() {
        return this.f9782a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.xo0

            /* renamed from: e, reason: collision with root package name */
            private final uo0 f10409e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10409e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10409e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ vo0 b() {
        int i2;
        boolean z;
        int i3;
        int i4;
        TelephonyManager telephonyManager = (TelephonyManager) this.f9783b.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int networkType = telephonyManager.getNetworkType();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.n.c();
        int i5 = -1;
        if (wa.b(this.f9783b, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f9783b.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int ordinal = activeNetworkInfo.getDetailedState().ordinal();
                i4 = type;
                i5 = ordinal;
            } else {
                i4 = -1;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                i3 = i5;
                i2 = i4;
                z = connectivityManager.isActiveNetworkMetered();
            } else {
                i3 = i5;
                i2 = i4;
                z = false;
            }
        } else {
            i2 = -2;
            z = false;
            i3 = -1;
        }
        return new vo0(networkOperator, i2, networkType, phoneType, z, i3);
    }
}
