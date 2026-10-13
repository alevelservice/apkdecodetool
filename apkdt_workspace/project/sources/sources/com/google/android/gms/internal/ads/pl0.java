package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pl0 implements ko0<ql0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f8718a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f8719b;

    public pl0(tz0 tz0Var, Context context) {
        this.f8718a = tz0Var;
        this.f8719b = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<ql0> a() {
        return this.f8718a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.sl0

            /* renamed from: e, reason: collision with root package name */
            private final pl0 f9391e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9391e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f9391e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ql0 b() {
        double d2;
        Intent registerReceiver = this.f8719b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(H5PluginHandler.ZIM_IDENTIFY_STATUS, -1);
            double intExtra2 = registerReceiver.getIntExtra("level", -1);
            double intExtra3 = registerReceiver.getIntExtra("scale", -1);
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d2 = intExtra2 / intExtra3;
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d2 = -1.0d;
        }
        return new ql0(d2, z);
    }
}
