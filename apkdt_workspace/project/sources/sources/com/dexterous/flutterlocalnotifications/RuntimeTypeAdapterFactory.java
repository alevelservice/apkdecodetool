package com.dexterous.flutterlocalnotifications;

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
/* loaded from: classes.dex */
public final class RuntimeTypeAdapterFactory<T> implements p {
    private final Class<?> baseType;
    private final Map<String, Class<?>> labelToSubtype = new LinkedHashMap();
    private final Map<Class<?>, String> subtypeToLabel = new LinkedHashMap();
    private final String typeFieldName;

    private RuntimeTypeAdapterFactory(Class<?> cls, String str) {
        if (str != null && cls != null) {
            this.baseType = cls;
            this.typeFieldName = str;
            return;
        }
        throw new NullPointerException();
    }

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls, String str) {
        return new RuntimeTypeAdapterFactory<>(cls, str);
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
        return new TypeAdapter<R>() { // from class: com.dexterous.flutterlocalnotifications.RuntimeTypeAdapterFactory.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public R read2(com.google.gson.r.a aVar2) {
                JsonElement a3 = k.a(aVar2);
                JsonElement remove = a3.getAsJsonObject().remove(RuntimeTypeAdapterFactory.this.typeFieldName);
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
                String str = (String) RuntimeTypeAdapterFactory.this.subtypeToLabel.get(cls);
                TypeAdapter typeAdapter = (TypeAdapter) linkedHashMap2.get(cls);
                if (typeAdapter != null) {
                    JsonObject asJsonObject = typeAdapter.toJsonTree(r).getAsJsonObject();
                    if (asJsonObject.has(RuntimeTypeAdapterFactory.this.typeFieldName)) {
                        throw new com.google.gson.k("cannot serialize " + cls.getName() + " because it already defines a field named " + RuntimeTypeAdapterFactory.this.typeFieldName);
                    }
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.add(RuntimeTypeAdapterFactory.this.typeFieldName, new JsonPrimitive(str));
                    for (Map.Entry<String, JsonElement> entry2 : asJsonObject.entrySet()) {
                        jsonObject.add(entry2.getKey(), entry2.getValue());
                    }
                    k.a(jsonObject, cVar);
                    return;
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

    public static <T> RuntimeTypeAdapterFactory<T> of(Class<T> cls) {
        return new RuntimeTypeAdapterFactory<>(cls, "type");
    }

    public RuntimeTypeAdapterFactory<T> registerSubtype(Class<? extends T> cls) {
        return registerSubtype(cls, cls.getSimpleName());
    }
}
