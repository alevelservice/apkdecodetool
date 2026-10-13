package com.mapbox.geojson;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.e;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class GeometryCollection implements Geometry {
    private static final String TYPE = "GeometryCollection";
    private final BoundingBox bbox;
    private final List<Geometry> geometries;
    private final String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class GsonTypeAdapter extends TypeAdapter<GeometryCollection> {
        private volatile TypeAdapter<BoundingBox> boundingBoxTypeAdapter;
        private final Gson gson;
        private volatile TypeAdapter<List<Geometry>> listGeometryAdapter;
        private volatile TypeAdapter<String> stringTypeAdapter;

        GsonTypeAdapter(Gson gson) {
            this.gson = gson;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public GeometryCollection read2(a aVar) {
            String str = null;
            if (aVar.C() == b.NULL) {
                aVar.A();
                return null;
            }
            aVar.j();
            BoundingBox boundingBox = null;
            List<Geometry> list = null;
            while (aVar.p()) {
                String z = aVar.z();
                if (aVar.C() == b.NULL) {
                    aVar.A();
                } else {
                    char c2 = 65535;
                    int hashCode = z.hashCode();
                    if (hashCode != 3017257) {
                        if (hashCode != 3575610) {
                            if (hashCode == 203916432 && z.equals("geometries")) {
                                c2 = 2;
                            }
                        } else if (z.equals("type")) {
                            c2 = 0;
                        }
                    } else if (z.equals("bbox")) {
                        c2 = 1;
                    }
                    if (c2 == 0) {
                        TypeAdapter<String> typeAdapter = this.stringTypeAdapter;
                        if (typeAdapter == null) {
                            typeAdapter = this.gson.a(String.class);
                            this.stringTypeAdapter = typeAdapter;
                        }
                        str = typeAdapter.read2(aVar);
                    } else if (c2 == 1) {
                        TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxTypeAdapter;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.gson.a(BoundingBox.class);
                            this.boundingBoxTypeAdapter = typeAdapter2;
                        }
                        boundingBox = typeAdapter2.read2(aVar);
                    } else if (c2 != 2) {
                        aVar.D();
                    } else {
                        TypeAdapter<List<Geometry>> typeAdapter3 = this.listGeometryAdapter;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.gson.a((com.google.gson.q.a) com.google.gson.q.a.getParameterized(List.class, Geometry.class));
                            this.listGeometryAdapter = typeAdapter3;
                        }
                        list = typeAdapter3.read2(aVar);
                    }
                }
            }
            aVar.m();
            if (str == null) {
                str = GeometryCollection.TYPE;
            }
            return new GeometryCollection(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, GeometryCollection geometryCollection) {
            if (geometryCollection == null) {
                cVar.q();
                return;
            }
            cVar.j();
            cVar.b("type");
            if (geometryCollection.type() == null) {
                cVar.q();
            } else {
                TypeAdapter<String> typeAdapter = this.stringTypeAdapter;
                if (typeAdapter == null) {
                    typeAdapter = this.gson.a(String.class);
                    this.stringTypeAdapter = typeAdapter;
                }
                typeAdapter.write(cVar, geometryCollection.type());
            }
            cVar.b("bbox");
            if (geometryCollection.bbox() == null) {
                cVar.q();
            } else {
                TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxTypeAdapter;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.gson.a(BoundingBox.class);
                    this.boundingBoxTypeAdapter = typeAdapter2;
                }
                typeAdapter2.write(cVar, geometryCollection.bbox());
            }
            cVar.b("geometries");
            if (geometryCollection.geometries() == null) {
                cVar.q();
            } else {
                TypeAdapter<List<Geometry>> typeAdapter3 = this.listGeometryAdapter;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.gson.a((com.google.gson.q.a) com.google.gson.q.a.getParameterized(List.class, Geometry.class));
                    this.listGeometryAdapter = typeAdapter3;
                }
                typeAdapter3.write(cVar, geometryCollection.geometries());
            }
            cVar.l();
        }
    }

    GeometryCollection(String str, @Nullable BoundingBox boundingBox, List<Geometry> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            if (list != null) {
                this.geometries = list;
                return;
            }
            throw new NullPointerException("Null geometries");
        }
        throw new NullPointerException("Null type");
    }

    public static GeometryCollection fromGeometries(@NonNull List<Geometry> list) {
        return new GeometryCollection(TYPE, null, list);
    }

    public static GeometryCollection fromGeometry(@NonNull Geometry geometry) {
        return new GeometryCollection(TYPE, null, Arrays.asList(geometry));
    }

    public static GeometryCollection fromJson(String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        return (GeometryCollection) eVar.a().a(str, GeometryCollection.class);
    }

    public static TypeAdapter<GeometryCollection> typeAdapter(Gson gson) {
        return new GsonTypeAdapter(gson);
    }

    @Override // com.mapbox.geojson.GeoJson
    @Nullable
    public BoundingBox bbox() {
        return this.bbox;
    }

    public boolean equals(Object obj) {
        BoundingBox boundingBox;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GeometryCollection)) {
            return false;
        }
        GeometryCollection geometryCollection = (GeometryCollection) obj;
        return this.type.equals(geometryCollection.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(geometryCollection.bbox()) : geometryCollection.bbox() == null) && this.geometries.equals(geometryCollection.geometries());
    }

    @NonNull
    public List<Geometry> geometries() {
        return this.geometries;
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        return ((hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003) ^ this.geometries.hashCode();
    }

    @Override // com.mapbox.geojson.GeoJson
    public String toJson() {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        return eVar.a().a(this);
    }

    public String toString() {
        return "GeometryCollection{type=" + this.type + ", bbox=" + this.bbox + ", geometries=" + this.geometries + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static GeometryCollection fromGeometries(@NonNull List<Geometry> list, @Nullable BoundingBox boundingBox) {
        return new GeometryCollection(TYPE, boundingBox, list);
    }

    public static GeometryCollection fromGeometry(@NonNull Geometry geometry, @Nullable BoundingBox boundingBox) {
        return new GeometryCollection(TYPE, boundingBox, Arrays.asList(geometry));
    }
}
