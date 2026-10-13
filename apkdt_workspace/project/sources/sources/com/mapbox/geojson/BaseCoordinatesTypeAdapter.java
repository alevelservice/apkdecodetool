package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.TypeAdapter;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@Keep
/* loaded from: classes2.dex */
public abstract class BaseCoordinatesTypeAdapter<T> extends TypeAdapter<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public Point readPoint(a aVar) {
        List<Double> readPointList = readPointList(aVar);
        if (readPointList != null && readPointList.size() > 1) {
            return new Point("Point", null, readPointList);
        }
        throw new GeoJsonException(" Point coordinates should be non-null double array");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Double> readPointList(a aVar) {
        if (aVar.C() != b.NULL) {
            ArrayList arrayList = new ArrayList();
            aVar.i();
            while (aVar.p()) {
                arrayList.add(Double.valueOf(aVar.t()));
            }
            aVar.l();
            if (arrayList.size() > 2) {
                return CoordinateShifterManager.getCoordinateShifter().shiftLonLatAlt(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue());
            }
            return CoordinateShifterManager.getCoordinateShifter().shiftLonLat(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue());
        }
        throw new NullPointerException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writePoint(c cVar, Point point) {
        writePointList(cVar, point.coordinates());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writePointList(c cVar, List<Double> list) {
        if (list == null) {
            return;
        }
        cVar.i();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(list);
        cVar.a(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()));
        cVar.a(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()));
        if (list.size() > 2) {
            cVar.a(unshiftPoint.get(2));
        }
        cVar.k();
    }
}
