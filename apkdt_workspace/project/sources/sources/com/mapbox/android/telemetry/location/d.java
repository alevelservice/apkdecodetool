package com.mapbox.android.telemetry.location;

import android.location.Location;
import com.mapbox.android.telemetry.LocationEvent;
import java.math.BigDecimal;

/* compiled from: LocationMapper.java */
/* loaded from: classes2.dex */
public class d {
    private static double a(double d2, double d3, double d4) {
        double d5 = d4 - d3;
        return ((((d2 - d3) % d5) + d5) % d5) + d3;
    }

    public static LocationEvent a(Location location, String str) {
        return a(location, "unknown", str);
    }

    private static double b(double d2) {
        return (d2 < -180.0d || d2 > 180.0d) ? a(d2, -180.0d, 180.0d) : d2;
    }

    private static LocationEvent a(Location location, String str, String str2) {
        LocationEvent locationEvent = new LocationEvent(str2, a(location.getLatitude()), b(a(location.getLongitude())), str);
        b(location, locationEvent);
        a(location, locationEvent);
        return locationEvent;
    }

    private static void b(Location location, LocationEvent locationEvent) {
        if (location.hasAltitude()) {
            locationEvent.setAltitude(Double.valueOf(Math.round(location.getAltitude())));
        }
    }

    private static double a(double d2) {
        return new BigDecimal(d2).setScale(7, 1).doubleValue();
    }

    private static void a(Location location, LocationEvent locationEvent) {
        if (location.hasAccuracy()) {
            locationEvent.setAccuracy(Float.valueOf(Math.round(location.getAccuracy())));
        }
    }
}
