package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.exception.GeoJsonException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@Keep
/* loaded from: classes2.dex */
public class ListOfPointCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<List<Point>> {
    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public List<Point> read2(a aVar) {
        if (aVar.C() != b.NULL) {
            if (aVar.C() == b.BEGIN_ARRAY) {
                ArrayList arrayList = new ArrayList();
                aVar.i();
                while (aVar.C() == b.BEGIN_ARRAY) {
                    arrayList.add(readPoint(aVar));
                }
                aVar.l();
                return arrayList;
            }
            throw new GeoJsonException("coordinates should be non-null array of array of double");
        }
        throw new NullPointerException();
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, List<Point> list) {
        if (list == null) {
            cVar.q();
            return;
        }
        cVar.i();
        Iterator<Point> it = list.iterator();
        while (it.hasNext()) {
            writePoint(cVar, it.next());
        }
        cVar.k();
    }
}
