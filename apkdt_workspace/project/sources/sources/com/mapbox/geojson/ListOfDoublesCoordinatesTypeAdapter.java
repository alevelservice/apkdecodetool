package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.r.a;
import com.google.gson.r.c;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@Keep
/* loaded from: classes2.dex */
public class ListOfDoublesCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<List<Double>> {
    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public List<Double> read2(a aVar) {
        return readPointList(aVar);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, List<Double> list) {
        writePointList(cVar, list);
    }
}
