package com.mapbox.turf;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TurfConversion.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<String, Double> f16378a = new HashMap();

    static {
        f16378a.put("miles", Double.valueOf(3960.0d));
        f16378a.put("nauticalmiles", Double.valueOf(3441.145d));
        f16378a.put("degrees", Double.valueOf(57.2957795d));
        f16378a.put("radians", Double.valueOf(1.0d));
        f16378a.put("inches", Double.valueOf(2.509056E8d));
        f16378a.put("yards", Double.valueOf(6969600.0d));
        Map<String, Double> map = f16378a;
        Double valueOf = Double.valueOf(6373000.0d);
        map.put("meters", valueOf);
        Map<String, Double> map2 = f16378a;
        Double valueOf2 = Double.valueOf(6.373E8d);
        map2.put("centimeters", valueOf2);
        Map<String, Double> map3 = f16378a;
        Double valueOf3 = Double.valueOf(6373.0d);
        map3.put("kilometers", valueOf3);
        f16378a.put("feet", Double.valueOf(2.090879265E7d));
        f16378a.put("centimetres", valueOf2);
        f16378a.put("metres", valueOf);
        f16378a.put("kilometres", valueOf3);
    }

    public static double a(double d2) {
        return ((d2 % 360.0d) * 3.141592653589793d) / 180.0d;
    }

    public static double a(double d2, @NonNull String str) {
        return d2 * f16378a.get(str).doubleValue();
    }
}
