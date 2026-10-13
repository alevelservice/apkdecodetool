package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.h;
import com.google.gson.internal.c;
import com.google.gson.m;
import com.google.gson.p;

/* loaded from: classes2.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements p {

    /* renamed from: e, reason: collision with root package name */
    private final c f15354e;

    public JsonAdapterAnnotationTypeAdapterFactory(c cVar) {
        this.f15354e = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeAdapter<?> a(c cVar, Gson gson, com.google.gson.q.a<?> aVar, JsonAdapter jsonAdapter) {
        TypeAdapter<?> treeTypeAdapter;
        Object a2 = cVar.a(com.google.gson.q.a.get((Class) jsonAdapter.value())).a();
        if (a2 instanceof TypeAdapter) {
            treeTypeAdapter = (TypeAdapter) a2;
        } else if (a2 instanceof p) {
            treeTypeAdapter = ((p) a2).create(gson, aVar);
        } else {
            boolean z = a2 instanceof m;
            if (!z && !(a2 instanceof h)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a2.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            treeTypeAdapter = new TreeTypeAdapter<>(z ? (m) a2 : null, a2 instanceof h ? (h) a2 : null, gson, aVar, null);
        }
        return (treeTypeAdapter == null || !jsonAdapter.nullSafe()) ? treeTypeAdapter : treeTypeAdapter.nullSafe();
    }

    @Override // com.google.gson.p
    public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
        JsonAdapter jsonAdapter = (JsonAdapter) aVar.getRawType().getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return (TypeAdapter<T>) a(this.f15354e, gson, aVar, jsonAdapter);
    }
}
