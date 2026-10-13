package com.mapbox.android.telemetry.errors;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class TokenChangeBroadcastReceiver extends BroadcastReceiver {
    public static void register(@NonNull Context context) {
        a.n.a.a.a(context).a(new TokenChangeBroadcastReceiver(), new IntentFilter("com.mapbox.android.telemetry.action.TOKEN_CHANGED"));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            ErrorReporterJobIntentService.enqueueWork(context);
            a.n.a.a.a(context).a(this);
        } catch (Throwable th) {
            th.toString();
        }
    }
}
