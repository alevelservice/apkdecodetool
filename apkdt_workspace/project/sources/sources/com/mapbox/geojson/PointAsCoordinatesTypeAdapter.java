package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.r.a;
import com.google.gson.r.c;

@Keep
/* loaded from: classes2.dex */
public class PointAsCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<Point> {
    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public Point read2(a aVar) {
        return readPoint(aVar);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, Point point) {
        writePoint(cVar, point);
    }
}
