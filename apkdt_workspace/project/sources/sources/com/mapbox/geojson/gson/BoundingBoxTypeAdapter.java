package com.mapbox.geojson.gson;

import androidx.annotation.Keep;
import com.google.gson.TypeAdapter;
import com.google.gson.r.a;
import com.google.gson.r.c;
import com.mapbox.geojson.BoundingBox;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.shifter.CoordinateShifterManager;
import com.mapbox.geojson.utils.GeoJsonUtils;
import java.util.ArrayList;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public class BoundingBoxTypeAdapter extends TypeAdapter<BoundingBox> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public BoundingBox read2(a aVar) {
        ArrayList arrayList = new ArrayList();
        aVar.i();
        while (aVar.p()) {
            arrayList.add(Double.valueOf(aVar.t()));
        }
        aVar.l();
        if (arrayList.size() == 6) {
            return BoundingBox.fromLngLats(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue(), ((Double) arrayList.get(3)).doubleValue(), ((Double) arrayList.get(4)).doubleValue(), ((Double) arrayList.get(5)).doubleValue());
        }
        if (arrayList.size() == 4) {
            return BoundingBox.fromLngLats(((Double) arrayList.get(0)).doubleValue(), ((Double) arrayList.get(1)).doubleValue(), ((Double) arrayList.get(2)).doubleValue(), ((Double) arrayList.get(3)).doubleValue());
        }
        throw new GeoJsonException("The value of the bbox member MUST be an array of length 2*n where n is the number of dimensions represented in the contained geometries,with all axes of the most southwesterly point followed  by all axes of the more northeasterly point. The axes order of a bbox follows the axes order of geometries.");
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, BoundingBox boundingBox) {
        if (boundingBox == null) {
            cVar.q();
            return;
        }
        cVar.i();
        Point southwest = boundingBox.southwest();
        List<Double> unshiftPoint = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(southwest);
        cVar.a(GeoJsonUtils.trim(unshiftPoint.get(0).doubleValue()));
        cVar.a(GeoJsonUtils.trim(unshiftPoint.get(1).doubleValue()));
        if (southwest.hasAltitude()) {
            cVar.a(unshiftPoint.get(2));
        }
        Point northeast = boundingBox.northeast();
        List<Double> unshiftPoint2 = CoordinateShifterManager.getCoordinateShifter().unshiftPoint(northeast);
        cVar.a(GeoJsonUtils.trim(unshiftPoint2.get(0).doubleValue()));
        cVar.a(GeoJsonUtils.trim(unshiftPoint2.get(1).doubleValue()));
        if (northeast.hasAltitude()) {
            cVar.a(unshiftPoint2.get(2));
        }
        cVar.k();
    }
}
