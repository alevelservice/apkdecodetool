package com.mapbox.geojson.shifter;

import com.mapbox.geojson.Point;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class CoordinateShifterManager {
    private static final CoordinateShifter DEFAULT = new CoordinateShifter() { // from class: com.mapbox.geojson.shifter.CoordinateShifterManager.1
        @Override // com.mapbox.geojson.shifter.CoordinateShifter
        public List<Double> shiftLonLat(double d2, double d3) {
            return Arrays.asList(Double.valueOf(d2), Double.valueOf(d3));
        }

        @Override // com.mapbox.geojson.shifter.CoordinateShifter
        public List<Double> shiftLonLatAlt(double d2, double d3, double d4) {
            return Double.isNaN(d4) ? Arrays.asList(Double.valueOf(d2), Double.valueOf(d3)) : Arrays.asList(Double.valueOf(d2), Double.valueOf(d3), Double.valueOf(d4));
        }

        @Override // com.mapbox.geojson.shifter.CoordinateShifter
        public List<Double> unshiftPoint(Point point) {
            return point.coordinates();
        }

        @Override // com.mapbox.geojson.shifter.CoordinateShifter
        public List<Double> unshiftPoint(List<Double> list) {
            return list;
        }
    };
    private static volatile CoordinateShifter coordinateShifter = DEFAULT;

    public static CoordinateShifter getCoordinateShifter() {
        return coordinateShifter;
    }

    public static boolean isUsingDefaultShifter() {
        return coordinateShifter == DEFAULT;
    }

    public static void setCoordinateShifter(CoordinateShifter coordinateShifter2) {
        if (coordinateShifter2 == null) {
            coordinateShifter2 = DEFAULT;
        }
        coordinateShifter = coordinateShifter2;
    }
}
