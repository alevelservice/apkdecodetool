package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.exception.GeoJsonException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
class ListofListofListOfPointCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<List<List<List<Point>>>> {
    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public List<List<List<Point>>> read2(a aVar) {
        if (aVar.C() != b.NULL) {
            if (aVar.C() == b.BEGIN_ARRAY) {
                aVar.i();
                ArrayList arrayList = new ArrayList();
                while (aVar.C() == b.BEGIN_ARRAY) {
                    aVar.i();
                    ArrayList arrayList2 = new ArrayList();
                    while (aVar.C() == b.BEGIN_ARRAY) {
                        aVar.i();
                        ArrayList arrayList3 = new ArrayList();
                        while (aVar.C() == b.BEGIN_ARRAY) {
                            arrayList3.add(readPoint(aVar));
                        }
                        aVar.l();
                        arrayList2.add(arrayList3);
                    }
                    aVar.l();
                    arrayList.add(arrayList2);
                }
                aVar.l();
                return arrayList;
            }
            throw new GeoJsonException("coordinates should be array of array of array of double");
        }
        throw new NullPointerException();
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, List<List<List<Point>>> list) {
        if (list == null) {
            cVar.q();
            return;
        }
        cVar.i();
        for (List<List<Point>> list2 : list) {
            cVar.i();
            for (List<Point> list3 : list2) {
                cVar.i();
                Iterator<Point> it = list3.iterator();
                while (it.hasNext()) {
                    writePoint(cVar, it.next());
                }
                cVar.k();
            }
            cVar.k();
        }
        cVar.k();
    }
}
