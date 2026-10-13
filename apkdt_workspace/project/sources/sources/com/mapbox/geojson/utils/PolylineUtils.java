package com.mapbox.geojson.utils;

import androidx.annotation.NonNull;
import com.mapbox.geojson.Point;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class PolylineUtils {
    private static final boolean SIMPLIFY_DEFAULT_HIGHEST_QUALITY = false;
    private static final double SIMPLIFY_DEFAULT_TOLERANCE = 1.0d;

    private PolylineUtils() {
    }

    @NonNull
    public static List<Point> decode(@NonNull String str, int i2) {
        int i3;
        int i4;
        int length = str.length();
        double pow = Math.pow(10.0d, i2);
        ArrayList arrayList = new ArrayList();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < length) {
            int i8 = 1;
            int i9 = 0;
            while (true) {
                i3 = i5 + 1;
                int charAt = (str.charAt(i5) - '?') - 1;
                i8 += charAt << i9;
                i9 += 5;
                if (charAt < 31) {
                    break;
                }
                i5 = i3;
            }
            int i10 = ((i8 & 1) != 0 ? (i8 >> 1) ^ (-1) : i8 >> 1) + i6;
            int i11 = 1;
            int i12 = 0;
            while (true) {
                i4 = i3 + 1;
                int charAt2 = (str.charAt(i3) - '?') - 1;
                i11 += charAt2 << i12;
                i12 += 5;
                if (charAt2 < 31) {
                    break;
                }
                i3 = i4;
            }
            int i13 = i11 & 1;
            int i14 = i11 >> 1;
            if (i13 != 0) {
                i14 ^= -1;
            }
            i7 += i14;
            double d2 = i7;
            Double.isNaN(d2);
            double d3 = i10;
            Double.isNaN(d3);
            arrayList.add(Point.fromLngLat(d2 / pow, d3 / pow));
            i6 = i10;
            i5 = i4;
        }
        return arrayList;
    }

    @NonNull
    public static String encode(@NonNull List<Point> list, int i2) {
        StringBuilder sb = new StringBuilder();
        double pow = Math.pow(10.0d, i2);
        long j2 = 0;
        long j3 = 0;
        for (Point point : list) {
            long round = Math.round(point.latitude() * pow);
            long round2 = Math.round(point.longitude() * pow);
            encode(round - j2, sb);
            encode(round2 - j3, sb);
            j2 = round;
            j3 = round2;
        }
        return sb.toString();
    }

    private static double getSqDist(Point point, Point point2) {
        double longitude = point.longitude() - point2.longitude();
        double latitude = point.latitude() - point2.latitude();
        return (longitude * longitude) + (latitude * latitude);
    }

    private static double getSqSegDist(Point point, Point point2, Point point3) {
        double longitude = point2.longitude();
        double latitude = point2.latitude();
        double longitude2 = point3.longitude() - longitude;
        double latitude2 = point3.latitude() - latitude;
        if (longitude2 != 0.0d || latitude2 != 0.0d) {
            double longitude3 = (((point.longitude() - longitude) * longitude2) + ((point.latitude() - latitude) * latitude2)) / ((longitude2 * longitude2) + (latitude2 * latitude2));
            if (longitude3 > SIMPLIFY_DEFAULT_TOLERANCE) {
                longitude = point3.longitude();
                latitude = point3.latitude();
            } else if (longitude3 > 0.0d) {
                longitude += longitude2 * longitude3;
                latitude += latitude2 * longitude3;
            }
        }
        double longitude4 = point.longitude() - longitude;
        double latitude3 = point.latitude() - latitude;
        return (longitude4 * longitude4) + (latitude3 * latitude3);
    }

    @NonNull
    public static List<Point> simplify(@NonNull List<Point> list) {
        return simplify(list, SIMPLIFY_DEFAULT_TOLERANCE, false);
    }

    private static List<Point> simplifyDouglasPeucker(List<Point> list, double d2) {
        int size = list.size() - 1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(list.get(0));
        arrayList.addAll(simplifyDpStep(list, 0, size, d2, arrayList));
        arrayList.add(list.get(size));
        return arrayList;
    }

    private static List<Point> simplifyDpStep(List<Point> list, int i2, int i3, double d2, List<Point> list2) {
        ArrayList arrayList = new ArrayList();
        double d3 = d2;
        int i4 = 0;
        for (int i5 = i2 + 1; i5 < i3; i5++) {
            double sqSegDist = getSqSegDist(list.get(i5), list.get(i2), list.get(i3));
            if (sqSegDist > d3) {
                i4 = i5;
                d3 = sqSegDist;
            }
        }
        if (d3 > d2) {
            if (i4 - i2 > 1) {
                arrayList.addAll(simplifyDpStep(list, i2, i4, d2, list2));
            }
            arrayList.add(list.get(i4));
            if (i3 - i4 > 1) {
                arrayList.addAll(simplifyDpStep(list, i4, i3, d2, list2));
            }
        }
        return arrayList;
    }

    private static List<Point> simplifyRadialDist(List<Point> list, double d2) {
        Point point = list.get(0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(point);
        int size = list.size();
        Point point2 = null;
        for (int i2 = 1; i2 < size; i2++) {
            point2 = list.get(i2);
            if (getSqDist(point2, point) > d2) {
                arrayList.add(point2);
                point = point2;
            }
        }
        if (!point.equals(point2)) {
            arrayList.add(point2);
        }
        return arrayList;
    }

    @NonNull
    public static List<Point> simplify(@NonNull List<Point> list, double d2) {
        return simplify(list, d2, false);
    }

    @NonNull
    public static List<Point> simplify(@NonNull List<Point> list, boolean z) {
        return simplify(list, SIMPLIFY_DEFAULT_TOLERANCE, z);
    }

    @NonNull
    public static List<Point> simplify(@NonNull List<Point> list, double d2, boolean z) {
        if (list.size() <= 2) {
            return list;
        }
        double d3 = d2 * d2;
        if (!z) {
            list = simplifyRadialDist(list, d3);
        }
        return simplifyDouglasPeucker(list, d3);
    }

    private static void encode(long j2, StringBuilder sb) {
        long j3 = j2 << 1;
        if (j2 < 0) {
            j3 ^= -1;
        }
        while (j3 >= 32) {
            sb.append(Character.toChars((int) ((32 | (31 & j3)) + 63)));
            j3 >>= 5;
        }
        sb.append(Character.toChars((int) (j3 + 63)));
    }
}
