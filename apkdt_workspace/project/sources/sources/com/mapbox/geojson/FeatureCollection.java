package com.mapbox.geojson;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.e;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public final class FeatureCollection implements GeoJson {
    private static final String TYPE = "FeatureCollection";

    @JsonAdapter(BoundingBoxTypeAdapter.class)
    private final BoundingBox bbox;
    private final List<Feature> features;
    private final String type;

    /* loaded from: classes2.dex */
    static final class GsonTypeAdapter extends TypeAdapter<FeatureCollection> {
        private volatile TypeAdapter<BoundingBox> boundingBoxAdapter;
        private final Gson gson;
        private volatile TypeAdapter<List<Feature>> listFeatureAdapter;
        private volatile TypeAdapter<String> stringAdapter;

        GsonTypeAdapter(Gson gson) {
            this.gson = gson;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public FeatureCollection read2(a aVar) {
            String str = null;
            if (aVar.C() == b.NULL) {
                aVar.A();
                return null;
            }
            aVar.j();
            BoundingBox boundingBox = null;
            List<Feature> list = null;
            while (aVar.p()) {
                String z = aVar.z();
                if (aVar.C() == b.NULL) {
                    aVar.A();
                } else {
                    char c2 = 65535;
                    int hashCode = z.hashCode();
                    if (hashCode != -290659267) {
                        if (hashCode != 3017257) {
                            if (hashCode == 3575610 && z.equals("type")) {
                                c2 = 0;
                            }
                        } else if (z.equals("bbox")) {
                            c2 = 1;
                        }
                    } else if (z.equals("features")) {
                        c2 = 2;
                    }
                    if (c2 == 0) {
                        TypeAdapter<String> typeAdapter = this.stringAdapter;
                        if (typeAdapter == null) {
                            typeAdapter = this.gson.a(String.class);
                            this.stringAdapter = typeAdapter;
                        }
                        str = typeAdapter.read2(aVar);
                    } else if (c2 == 1) {
                        TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxAdapter;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.gson.a(BoundingBox.class);
                            this.boundingBoxAdapter = typeAdapter2;
                        }
                        boundingBox = typeAdapter2.read2(aVar);
                    } else if (c2 != 2) {
                        aVar.D();
                    } else {
                        TypeAdapter<List<Feature>> typeAdapter3 = this.listFeatureAdapter;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.gson.a((com.google.gson.q.a) com.google.gson.q.a.getParameterized(List.class, Feature.class));
                            this.listFeatureAdapter = typeAdapter3;
                        }
                        list = typeAdapter3.read2(aVar);
                    }
                }
            }
            aVar.m();
            return new FeatureCollection(str, boundingBox, list);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, FeatureCollection featureCollection) {
            if (featureCollection == null) {
                cVar.q();
                return;
            }
            cVar.j();
            cVar.b("type");
            if (featureCollection.type() == null) {
                cVar.q();
            } else {
                TypeAdapter<String> typeAdapter = this.stringAdapter;
                if (typeAdapter == null) {
                    typeAdapter = this.gson.a(String.class);
                    this.stringAdapter = typeAdapter;
                }
                typeAdapter.write(cVar, featureCollection.type());
            }
            cVar.b("bbox");
            if (featureCollection.bbox() == null) {
                cVar.q();
            } else {
                TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxAdapter;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.gson.a(BoundingBox.class);
                    this.boundingBoxAdapter = typeAdapter2;
                }
                typeAdapter2.write(cVar, featureCollection.bbox());
            }
            cVar.b("features");
            if (featureCollection.features() == null) {
                cVar.q();
            } else {
                TypeAdapter<List<Feature>> typeAdapter3 = this.listFeatureAdapter;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.gson.a((com.google.gson.q.a) com.google.gson.q.a.getParameterized(List.class, Feature.class));
                    this.listFeatureAdapter = typeAdapter3;
                }
                typeAdapter3.write(cVar, featureCollection.features());
            }
            cVar.l();
        }
    }

    FeatureCollection(String str, @Nullable BoundingBox boundingBox, @Nullable List<Feature> list) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            this.features = list;
            return;
        }
        throw new NullPointerException("Null type");
    }

    public static FeatureCollection fromFeature(@NonNull Feature feature) {
        return new FeatureCollection(TYPE, null, Arrays.asList(feature));
    }

    public static FeatureCollection fromFeatures(@NonNull Feature[] featureArr) {
        return new FeatureCollection(TYPE, null, Arrays.asList(featureArr));
    }

    public static FeatureCollection fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        return (FeatureCollection) eVar.a().a(str, FeatureCollection.class);
    }

    public static TypeAdapter<FeatureCollection> typeAdapter(Gson gson) {
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
        if (!(obj instanceof FeatureCollection)) {
            return false;
        }
        FeatureCollection featureCollection = (FeatureCollection) obj;
        if (this.type.equals(featureCollection.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(featureCollection.bbox()) : featureCollection.bbox() == null)) {
            List<Feature> list = this.features;
            if (list == null) {
                if (featureCollection.features() == null) {
                    return true;
                }
            } else if (list.equals(featureCollection.features())) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public List<Feature> features() {
        return this.features;
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        int hashCode2 = (hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003;
        List<Feature> list = this.features;
        return hashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    @Override // com.mapbox.geojson.GeoJson
    public String toJson() {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        return eVar.a().a(this);
    }

    public String toString() {
        return "FeatureCollection{type=" + this.type + ", bbox=" + this.bbox + ", features=" + this.features + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static FeatureCollection fromFeatures(@NonNull List<Feature> list) {
        return new FeatureCollection(TYPE, null, list);
    }

    public static FeatureCollection fromFeature(@NonNull Feature feature, @Nullable BoundingBox boundingBox) {
        return new FeatureCollection(TYPE, boundingBox, Arrays.asList(feature));
    }

    public static FeatureCollection fromFeatures(@NonNull Feature[] featureArr, @Nullable BoundingBox boundingBox) {
        return new FeatureCollection(TYPE, boundingBox, Arrays.asList(featureArr));
    }

    public static FeatureCollection fromFeatures(@NonNull List<Feature> list, @Nullable BoundingBox boundingBox) {
        return new FeatureCollection(TYPE, boundingBox, list);
    }
}
