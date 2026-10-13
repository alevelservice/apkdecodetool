package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes.dex */
public final class m8 {

    /* renamed from: a, reason: collision with root package name */
    final Context f13093a;

    @VisibleForTesting
    public m8(Context context) {
        com.google.android.gms.common.internal.m.a(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.m.a(applicationContext);
        this.f13093a = applicationContext;
    }
}
