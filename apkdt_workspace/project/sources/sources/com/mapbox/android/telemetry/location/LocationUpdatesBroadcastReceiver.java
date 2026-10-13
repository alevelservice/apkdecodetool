package com.mapbox.android.telemetry.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import com.mapbox.android.telemetry.x;
import e.m.a.a.d.i;

/* loaded from: classes2.dex */
public class LocationUpdatesBroadcastReceiver extends BroadcastReceiver {
    static final String ACTION_LOCATION_UPDATED = "com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED";

    private static boolean a(Location location) {
        return Double.isInfinite(location.getLatitude()) || Double.isInfinite(location.getLongitude()) || Double.isInfinite(location.getAltitude()) || Float.isInfinite(location.getAccuracy());
    }

    private static boolean b(Location location) {
        return Double.isNaN(location.getLatitude()) || Double.isNaN(location.getLongitude()) || Double.isNaN(location.getAltitude()) || Float.isNaN(location.getAccuracy());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        i c2;
        if (intent == null) {
            return;
        }
        try {
            if (ACTION_LOCATION_UPDATED.equals(intent.getAction()) && (c2 = i.c(intent)) != null) {
                a d2 = a.d();
                x b2 = d2.b();
                String a2 = d2.a();
                for (Location location : c2.b()) {
                    if (!b(location) && !a(location)) {
                        b2.a(d.a(location, a2));
                    }
                }
            }
        } catch (Throwable th) {
            th.toString();
        }
    }
}
