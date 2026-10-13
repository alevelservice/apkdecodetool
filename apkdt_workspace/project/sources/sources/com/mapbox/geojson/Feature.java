package com.mapbox.geojson;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.e;
import com.google.gson.r.a;
import com.google.gson.r.b;
import com.google.gson.r.c;
import com.mapbox.geojson.gson.BoundingBoxTypeAdapter;
import com.mapbox.geojson.gson.GeoJsonAdapterFactory;

@Keep
/* loaded from: classes2.dex */
public final class Feature implements GeoJson {
    private static final String TYPE = "Feature";

    @JsonAdapter(BoundingBoxTypeAdapter.class)
    private final BoundingBox bbox;
    private final Geometry geometry;
    private final String id;
    private final JsonObject properties;
    private final String type;

    /* loaded from: classes2.dex */
    static final class GsonTypeAdapter extends TypeAdapter<Feature> {
        private volatile TypeAdapter<BoundingBox> boundingBoxTypeAdapter;
        private volatile TypeAdapter<Geometry> geometryTypeAdapter;
        private final Gson gson;
        private volatile TypeAdapter<JsonObject> jsonObjectTypeAdapter;
        private volatile TypeAdapter<String> stringTypeAdapter;

        GsonTypeAdapter(Gson gson) {
            this.gson = gson;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0034. Please report as an issue. */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Feature read2(a aVar) {
            if (aVar.C() == b.NULL) {
                aVar.A();
                return null;
            }
            aVar.j();
            String str = null;
            BoundingBox boundingBox = null;
            String str2 = null;
            Geometry geometry = null;
            JsonObject jsonObject = null;
            while (aVar.p()) {
                String z = aVar.z();
                if (aVar.C() == b.NULL) {
                    aVar.A();
                } else {
                    char c2 = 65535;
                    switch (z.hashCode()) {
                        case -926053069:
                            if (z.equals("properties")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 3355:
                            if (z.equals("id")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 3017257:
                            if (z.equals("bbox")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 3575610:
                            if (z.equals("type")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 1846020210:
                            if (z.equals("geometry")) {
                                c2 = 3;
                                break;
                            }
                            break;
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
                    } else if (c2 == 2) {
                        TypeAdapter<String> typeAdapter3 = this.stringTypeAdapter;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.gson.a(String.class);
                            this.stringTypeAdapter = typeAdapter3;
                        }
                        str2 = typeAdapter3.read2(aVar);
                    } else if (c2 == 3) {
                        TypeAdapter<Geometry> typeAdapter4 = this.geometryTypeAdapter;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.gson.a(Geometry.class);
                            this.geometryTypeAdapter = typeAdapter4;
                        }
                        geometry = typeAdapter4.read2(aVar);
                    } else if (c2 != 4) {
                        aVar.D();
                    } else {
                        TypeAdapter<JsonObject> typeAdapter5 = this.jsonObjectTypeAdapter;
                        if (typeAdapter5 == null) {
                            typeAdapter5 = this.gson.a(JsonObject.class);
                            this.jsonObjectTypeAdapter = typeAdapter5;
                        }
                        jsonObject = typeAdapter5.read2(aVar);
                    }
                }
            }
            aVar.m();
            return new Feature(str, boundingBox, str2, geometry, jsonObject);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(c cVar, Feature feature) {
            if (feature == null) {
                cVar.q();
                return;
            }
            cVar.j();
            cVar.b("type");
            if (feature.type() == null) {
                cVar.q();
            } else {
                TypeAdapter<String> typeAdapter = this.stringTypeAdapter;
                if (typeAdapter == null) {
                    typeAdapter = this.gson.a(String.class);
                    this.stringTypeAdapter = typeAdapter;
                }
                typeAdapter.write(cVar, feature.type());
            }
            cVar.b("bbox");
            if (feature.bbox() == null) {
                cVar.q();
            } else {
                TypeAdapter<BoundingBox> typeAdapter2 = this.boundingBoxTypeAdapter;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.gson.a(BoundingBox.class);
                    this.boundingBoxTypeAdapter = typeAdapter2;
                }
                typeAdapter2.write(cVar, feature.bbox());
            }
            cVar.b("id");
            if (feature.id() == null) {
                cVar.q();
            } else {
                TypeAdapter<String> typeAdapter3 = this.stringTypeAdapter;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.gson.a(String.class);
                    this.stringTypeAdapter = typeAdapter3;
                }
                typeAdapter3.write(cVar, feature.id());
            }
            cVar.b("geometry");
            if (feature.geometry() == null) {
                cVar.q();
            } else {
                TypeAdapter<Geometry> typeAdapter4 = this.geometryTypeAdapter;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.gson.a(Geometry.class);
                    this.geometryTypeAdapter = typeAdapter4;
                }
                typeAdapter4.write(cVar, feature.geometry());
            }
            cVar.b("properties");
            if (feature.properties() == null) {
                cVar.q();
            } else {
                TypeAdapter<JsonObject> typeAdapter5 = this.jsonObjectTypeAdapter;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.gson.a(JsonObject.class);
                    this.jsonObjectTypeAdapter = typeAdapter5;
                }
                typeAdapter5.write(cVar, feature.properties());
            }
            cVar.l();
        }
    }

    Feature(String str, @Nullable BoundingBox boundingBox, @Nullable String str2, @Nullable Geometry geometry, @Nullable JsonObject jsonObject) {
        if (str != null) {
            this.type = str;
            this.bbox = boundingBox;
            this.id = str2;
            this.geometry = geometry;
            this.properties = jsonObject;
            return;
        }
        throw new NullPointerException("Null type");
    }

    public static Feature fromGeometry(@Nullable Geometry geometry) {
        return new Feature(TYPE, null, null, geometry, new JsonObject());
    }

    public static Feature fromJson(@NonNull String str) {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        Feature feature = (Feature) eVar.a().a(str, Feature.class);
        return feature.properties() != null ? feature : new Feature(TYPE, feature.bbox(), feature.id(), feature.geometry(), new JsonObject());
    }

    public static TypeAdapter<Feature> typeAdapter(Gson gson) {
        return new GsonTypeAdapter(gson);
    }

    public void addBooleanProperty(String str, Boolean bool) {
        properties().addProperty(str, bool);
    }

    public void addCharacterProperty(String str, Character ch) {
        properties().addProperty(str, ch);
    }

    public void addNumberProperty(String str, Number number) {
        properties().addProperty(str, number);
    }

    public void addProperty(String str, JsonElement jsonElement) {
        properties().add(str, jsonElement);
    }

    public void addStringProperty(String str, String str2) {
        properties().addProperty(str, str2);
    }

    @Override // com.mapbox.geojson.GeoJson
    @Nullable
    public BoundingBox bbox() {
        return this.bbox;
    }

    public boolean equals(Object obj) {
        BoundingBox boundingBox;
        String str;
        Geometry geometry;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        if (this.type.equals(feature.type()) && ((boundingBox = this.bbox) != null ? boundingBox.equals(feature.bbox()) : feature.bbox() == null) && ((str = this.id) != null ? str.equals(feature.id()) : feature.id() == null) && ((geometry = this.geometry) != null ? geometry.equals(feature.geometry()) : feature.geometry() == null)) {
            JsonObject jsonObject = this.properties;
            if (jsonObject == null) {
                if (feature.properties() == null) {
                    return true;
                }
            } else if (jsonObject.equals(feature.properties())) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public Geometry geometry() {
        return this.geometry;
    }

    public Boolean getBooleanProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return Boolean.valueOf(jsonElement.getAsBoolean());
    }

    public Character getCharacterProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return Character.valueOf(jsonElement.getAsCharacter());
    }

    public Number getNumberProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return jsonElement.getAsNumber();
    }

    public JsonElement getProperty(String str) {
        return properties().get(str);
    }

    public String getStringProperty(String str) {
        JsonElement jsonElement = properties().get(str);
        if (jsonElement == null) {
            return null;
        }
        return jsonElement.getAsString();
    }

    public boolean hasNonNullValueForProperty(String str) {
        return hasProperty(str) && !getProperty(str).isJsonNull();
    }

    public boolean hasProperty(String str) {
        return properties().has(str);
    }

    public int hashCode() {
        int hashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        BoundingBox boundingBox = this.bbox;
        int hashCode2 = (hashCode ^ (boundingBox == null ? 0 : boundingBox.hashCode())) * 1000003;
        String str = this.id;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        Geometry geometry = this.geometry;
        int hashCode4 = (hashCode3 ^ (geometry == null ? 0 : geometry.hashCode())) * 1000003;
        JsonObject jsonObject = this.properties;
        return hashCode4 ^ (jsonObject != null ? jsonObject.hashCode() : 0);
    }

    @Nullable
    public String id() {
        return this.id;
    }

    @Nullable
    public JsonObject properties() {
        return this.properties;
    }

    public JsonElement removeProperty(String str) {
        return properties().remove(str);
    }

    @Override // com.mapbox.geojson.GeoJson
    public String toJson() {
        e eVar = new e();
        eVar.a(GeoJsonAdapterFactory.create());
        eVar.a(GeometryAdapterFactory.create());
        return eVar.a().a(properties().size() == 0 ? new Feature(TYPE, bbox(), id(), geometry(), null) : this);
    }

    public String toString() {
        return "Feature{type=" + this.type + ", bbox=" + this.bbox + ", id=" + this.id + ", geometry=" + this.geometry + ", properties=" + this.properties + "}";
    }

    @Override // com.mapbox.geojson.GeoJson
    @NonNull
    public String type() {
        return this.type;
    }

    public static Feature fromGeometry(@Nullable Geometry geometry, @Nullable BoundingBox boundingBox) {
        return new Feature(TYPE, boundingBox, null, geometry, new JsonObject());
    }

    public static Feature fromGeometry(@Nullable Geometry geometry, @Nullable JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        return new Feature(TYPE, null, null, geometry, jsonObject);
    }

    public static Feature fromGeometry(@Nullable Geometry geometry, @Nullable JsonObject jsonObject, @Nullable BoundingBox boundingBox) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        return new Feature(TYPE, boundingBox, null, geometry, jsonObject);
    }

    public static Feature fromGeometry(@Nullable Geometry geometry, @Nullable JsonObject jsonObject, @Nullable String str) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        return new Feature(TYPE, null, str, geometry, jsonObject);
    }

    public static Feature fromGeometry(@Nullable Geometry geometry, @NonNull JsonObject jsonObject, @Nullable String str, @Nullable BoundingBox boundingBox) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        return new Feature(TYPE, boundingBox, str, geometry, jsonObject);
    }
}
