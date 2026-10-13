package com.google.gson.typeadapters;

import androidx.annotation.Keep;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.k;
import com.google.gson.p;
import com.google.gson.q.a;
import com.google.gson.r.c;
import java.util.LinkedHashMap;
import java.util.Map;

@Keep
/* loaded from: classes2.dex */
public final class RuntimeTypeAdapterFactory<T> implements p {
    private final Class<?> baseType;
    private final boolean maintainType;
    private final String typeFieldName;
    private final Map<String, Class<?>> labelToSubtype = new LinkedHashMap();
    private final Map<Class<?>, String> subtypeToLabel = new LinkedHashMap();

    private RuntimeTypeAdapterFactory(Class<?> cls, String str, boolean z) {
        if (str != null && cls != null) {
            this.baseType = cls;
            this.typeFieldName = str;
            this.maintainType = z;
            return;
        }
        throw new NullPointerException();
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str, boolean z) {
        return new RuntimeTypeAdapterFactory<>(cls, str, z);
    }

    @Override // com.google.gson.p
    public <R> TypeAdapter<R> create(Gson gson, a<R> aVar) {
        if (aVar.getRawType() != this.baseType) {
            return null;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, Class<?>> entry : this.labelToSubtype.entrySet()) {
            TypeAdapter<T> a2 = gson.a(this, a.get((Class) entry.getValue()));
            linkedHashMap.put(entry.getKey(), a2);
            linkedHashMap2.put(entry.getValue(), a2);
        }
        return new TypeAdapter<R>() { // from class: com.google.gson.typeadapters.RuntimeTypeAdapterFactory.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public R read2(com.google.gson.r.a aVar2) {
                JsonElement a3 = k.a(aVar2);
                JsonElement remove = RuntimeTypeAdapterFactory.this.maintainType ? a3.getAsJsonObject().get(RuntimeTypeAdapterFactory.this.typeFieldName) : a3.getAsJsonObject().remove(RuntimeTypeAdapterFactory.this.typeFieldName);
                if (remove == null) {
                    throw new com.google.gson.k("cannot deserialize " + RuntimeTypeAdapterFactory.this.baseType + " because it does not define a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
                }
                String asString = remove.getAsString();
                TypeAdapter typeAdapter = (TypeAdapter) linkedHashMap.get(asString);
                if (typeAdapter == null) {
                    throw new com.google.gson.k("cannot deserialize " + RuntimeTypeAdapterFactory.this.baseType + " subtype named " + asString + "; did you forget to register a subtype?");
                }
                return (R) typeAdapter.fromJsonTree(a3);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(c cVar, R r) {
                Class<?> cls = r.getClass();
                TypeAdapter typeAdapter = (TypeAdapter) linkedHashMap2.get(cls);
                if (typeAdapter != null) {
                    JsonObject asJsonObject = typeAdapter.toJsonTree(r).getAsJsonObject();
                    if (RuntimeTypeAdapterFactory.this.maintainType) {
                        k.a(asJsonObject, cVar);
                        return;
                    }
                    JsonObject jsonObject = new JsonObject();
                    if (!asJsonObject.has(RuntimeTypeAdapterFactory.this.typeFieldName)) {
                        jsonObject.add(RuntimeTypeAdapterFactory.this.typeFieldName, new JsonPrimitive((String) RuntimeTypeAdapterFactory.this.subtypeToLabel.get(cls)));
                        for (Map.Entry<String, JsonElement> entry2 : asJsonObject.entrySet()) {
                            jsonObject.add(entry2.getKey(), entry2.getValue());
                        }
                        k.a(jsonObject, cVar);
                        return;
                    }
                    throw new com.google.gson.k("cannot serialize " + cls.getName() + " because it already defines a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
                }
                throw new com.google.gson.k("cannot serialize " + cls.getName() + "; did you forget to register a subtype?");
            }
        }.nullSafe();
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls, String str) {
        if (cls != null && str != null) {
            if (!this.subtypeToLabel.containsKey(cls) && !this.labelToSubtype.containsKey(str)) {
                this.labelToSubtype.put(str, cls);
                this.subtypeToLabel.put(cls, str);
                return this;
            }
            throw new IllegalArgumentException("types and labels must be unique");
        }
        throw new NullPointerException();
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str) {
        return new RuntimeTypeAdapterFactory<>(cls, str, false);
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls) {
        return new RuntimeTypeAdapterFactory<>(cls, "type", false);
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls) {
        return registerSubtype(cls, cls.getSimpleName());
    }
}
