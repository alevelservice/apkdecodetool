package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzx;

@VisibleForTesting
/* loaded from: classes.dex */
public final class m5 {

    /* renamed from: a, reason: collision with root package name */
    final Context f13077a;

    /* renamed from: b, reason: collision with root package name */
    String f13078b;

    /* renamed from: c, reason: collision with root package name */
    String f13079c;

    /* renamed from: d, reason: collision with root package name */
    String f13080d;

    /* renamed from: e, reason: collision with root package name */
    Boolean f13081e;

    /* renamed from: f, reason: collision with root package name */
    long f13082f;

    /* renamed from: g, reason: collision with root package name */
    zzx f13083g;

    /* renamed from: h, reason: collision with root package name */
    boolean f13084h;

    @VisibleForTesting
    public m5(Context context, zzx zzxVar) {
        this.f13084h = true;
        com.google.android.gms.common.internal.m.a(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.m.a(applicationContext);
        this.f13077a = applicationContext;
        if (zzxVar != null) {
            this.f13083g = zzxVar;
            this.f13078b = zzxVar.f12253j;
            this.f13079c = zzxVar.f12252i;
            this.f13080d = zzxVar.f12251h;
            this.f13084h = zzxVar.f12250g;
            this.f13082f = zzxVar.f12249f;
            Bundle bundle = zzxVar.f12254k;
            if (bundle != null) {
                this.f13081e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
