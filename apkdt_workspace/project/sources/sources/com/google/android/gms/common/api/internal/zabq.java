package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class zabq extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private Context f5150a;

    /* renamed from: b, reason: collision with root package name */
    private final n0 f5151b;

    public zabq(n0 n0Var) {
        this.f5151b = n0Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f5151b.a();
            unregister();
        }
    }

    public final synchronized void unregister() {
        if (this.f5150a != null) {
            this.f5150a.unregisterReceiver(this);
        }
        this.f5150a = null;
    }

    public final void zac(Context context) {
        this.f5150a = context;
    }
}
