package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ab extends BroadcastReceiver {
    private ab(wa waVar) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        kd.b();
        la.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ab(wa waVar, va vaVar) {
        this(waVar);
    }
}
