package com.mapbox.geojson.utils;

/* loaded from: classes2.dex */
public class GeoJsonUtils {
    private static double ROUND_PRECISION = 1.0E7d;
    private static long MAX_DOUBLE_TO_ROUND = (long) (9.223372036854776E18d / ROUND_PRECISION);

    public static double trim(double d2) {
        if (d2 > MAX_DOUBLE_TO_ROUND || d2 < (-r0)) {
            return d2;
        }
        double round = Math.round(d2 * ROUND_PRECISION);
        double d3 = ROUND_PRECISION;
        Double.isNaN(round);
        return round / d3;
    }
}
