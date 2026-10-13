package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.d;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class GCoreWakefulBroadcastReceiver extends WakefulBroadcastReceiver {
    @KeepForSdk
    @SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
    public static boolean completeWakefulIntent(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context != null) {
            d.a().a(context, intent);
        } else {
            String valueOf = String.valueOf(intent.toUri(0));
            if (valueOf.length() != 0) {
                "context shouldn't be null. intent: ".concat(valueOf);
            } else {
                new String("context shouldn't be null. intent: ");
            }
        }
        return WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
