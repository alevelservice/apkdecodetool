package com.mapbox.geojson;

import androidx.annotation.Keep;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.exception.GeoJsonException;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;

/* JADX INFO: Access modifiers changed from: package-private */
@Keep
/* loaded from: classes2.dex */
public abstract class BaseGeometryTypeAdapter<G, T> extends TypeAdapter<G> {
    private volatile TypeAdapter<BoundingBox> boundingBoxAdapter = new BoundingBoxTypeAdapter();
    private volatile TypeAdapter<T> coordinatesAdapter;
    private final Gson gson;
    private volatile TypeAdapter<String> stringAdapter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseGeometryTypeAdapter(Gson gson, TypeAdapter<T> typeAdapter) {
        this.gson = gson;
        this.coordinatesAdapter = typeAdapter;
    }

    abstract CoordinateContainer<T> createCoordinateContainer(String str, BoundingBox boundingBox, T t);

    public CoordinateContainer<T> readCoordinateContainer(a aVar) {
        String str = null;
        if (aVar.C() == b.NULL) {
            aVar.A();
            return null;
        }
        aVar.j();
        BoundingBox boundingBox = null;
        T t = null;
        while (aVar.p()) {
            String z = aVar.z();
            if (aVar.C() == b.NULL) {
                aVar.A();
            } else {
                char c2 = 65535;
                int hashCode = z.hashCode();
                if (hashCode != 3017257) {
                    if (hashCode != 3575610) {
                        if (hashCode == 1871919611 && z.equals("coordinates")) {
                            c2 = 2;
                        }
                    } else if (z.equals("type")) {
                        c2 = 0;
                    }
                } else if (z.equals("bbox")) {
                    c2 = 1;
                }
                if (c2 == 0) {
                    TypeAdapter<String> typeAdapter = this.stringAdapter;
                    if (typeAdapter == null) {
                        typeAdapter = this.gson.a((Class) String.class);
                        this.stringAdapter = typeAdapter;
                    }
                    str = typeAdapter.read2(aVar);
                } else if (c2 == 1) {
                    TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxAdapter;
                    if (typeAdapter2 == null) {
                        typeAdapter2 = this.gson.a((Class) BoundingBox.class);
                        this.boundingBoxAdapter = typeAdapter2;
                    }
                    boundingBox = typeAdapter2.read2(aVar);
                } else if (c2 != 2) {
                    aVar.D();
                } else {
                    TypeAdapter<T> typeAdapter3 = this.coordinatesAdapter;
                    if (typeAdapter3 != null) {
                        t = typeAdapter3.read2(aVar);
                    } else {
                        throw new GeoJsonException("Coordinates type adapter is null");
                    }
                }
            }
        }
        aVar.m();
        return createCoordinateContainer(str, boundingBox, t);
    }

    public void writeCoordinateContainer(c cVar, CoordinateContainer<T> coordinateContainer) {
        if (coordinateContainer == null) {
            cVar.q();
            return;
        }
        cVar.j();
        cVar.b("type");
        if (coordinateContainer.type() == null) {
            cVar.q();
        } else {
            TypeAdapter<String> typeAdapter = this.stringAdapter;
            if (typeAdapter == null) {
                typeAdapter = this.gson.a((Class) String.class);
                this.stringAdapter = typeAdapter;
            }
            typeAdapter.write(cVar, coordinateContainer.type());
        }
        cVar.b("bbox");
        if (coordinateContainer.bbox() == null) {
            cVar.q();
        } else {
            TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxAdapter;
            if (typeAdapter2 == null) {
                typeAdapter2 = this.gson.a((Class) BoundingBox.class);
                this.boundingBoxAdapter = typeAdapter2;
            }
            typeAdapter2.write(cVar, coordinateContainer.bbox());
        }
        cVar.b("coordinates");
        if (coordinateContainer.coordinates() == null) {
            cVar.q();
        } else {
            TypeAdapter<T> typeAdapter3 = this.coordinatesAdapter;
            if (typeAdapter3 != null) {
                typeAdapter3.write(cVar, coordinateContainer.coordinates());
            } else {
                throw new GeoJsonException("Coordinates type adapter is null");
            }
        }
        cVar.l();
    }
}
