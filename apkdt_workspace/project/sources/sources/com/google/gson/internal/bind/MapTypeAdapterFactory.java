package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.c;
import com.google.gson.internal.e;
import com.google.gson.internal.h;
import com.google.gson.internal.k;
import com.google.gson.n;
import com.google.gson.p;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes2.dex */
public final class MapTypeAdapterFactory implements p {

    /* renamed from: e, reason: collision with root package name */
    private final c f15355e;

    /* renamed from: f, reason: collision with root package name */
    final boolean f15356f;

    /* loaded from: classes2.dex */
    private final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        private final TypeAdapter<K> f15357a;

        /* renamed from: b, reason: collision with root package name */
        private final TypeAdapter<V> f15358b;

        /* renamed from: c, reason: collision with root package name */
        private final h<? extends Map<K, V>> f15359c;

        public Adapter(Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, h<? extends Map<K, V>> hVar) {
            this.f15357a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f15358b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.f15359c = hVar;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.gson.r.c cVar, Map<K, V> map) {
            if (map == null) {
                cVar.q();
                return;
            }
            if (!MapTypeAdapterFactory.this.f15356f) {
                cVar.j();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.b(String.valueOf(entry.getKey()));
                    this.f15358b.write(cVar, entry.getValue());
                }
                cVar.l();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i2 = 0;
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                JsonElement jsonTree = this.f15357a.toJsonTree(entry2.getKey());
                arrayList.add(jsonTree);
                arrayList2.add(entry2.getValue());
                z |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
            }
            if (z) {
                cVar.i();
                int size = arrayList.size();
                while (i2 < size) {
                    cVar.i();
                    k.a((JsonElement) arrayList.get(i2), cVar);
                    this.f15358b.write(cVar, arrayList2.get(i2));
                    cVar.k();
                    i2++;
                }
                cVar.k();
                return;
            }
            cVar.j();
            int size2 = arrayList.size();
            while (i2 < size2) {
                cVar.b(a((JsonElement) arrayList.get(i2)));
                this.f15358b.write(cVar, arrayList2.get(i2));
                i2++;
            }
            cVar.l();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Map<K, V> read2(com.google.gson.r.a aVar) {
            com.google.gson.r.b C = aVar.C();
            if (C == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            Map<K, V> a2 = this.f15359c.a();
            if (C == com.google.gson.r.b.BEGIN_ARRAY) {
                aVar.i();
                while (aVar.p()) {
                    aVar.i();
                    K read2 = this.f15357a.read2(aVar);
                    if (a2.put(read2, this.f15358b.read2(aVar)) == null) {
                        aVar.l();
                    } else {
                        throw new n("duplicate key: " + read2);
                    }
                }
                aVar.l();
            } else {
                aVar.j();
                while (aVar.p()) {
                    e.f15442a.a(aVar);
                    K read22 = this.f15357a.read2(aVar);
                    if (a2.put(read22, this.f15358b.read2(aVar)) != null) {
                        throw new n("duplicate key: " + read22);
                    }
                }
                aVar.m();
            }
            return a2;
        }

        private String a(JsonElement jsonElement) {
            if (jsonElement.isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                if (asJsonPrimitive.isNumber()) {
                    return String.valueOf(asJsonPrimitive.getAsNumber());
                }
                if (asJsonPrimitive.isBoolean()) {
                    return Boolean.toString(asJsonPrimitive.getAsBoolean());
                }
                if (asJsonPrimitive.isString()) {
                    return asJsonPrimitive.getAsString();
                }
                throw new AssertionError();
            }
            if (jsonElement.isJsonNull()) {
                return "null";
            }
            throw new AssertionError();
        }
    }

    public MapTypeAdapterFactory(c cVar, boolean z) {
        this.f15355e = cVar;
        this.f15356f = z;
    }

    private TypeAdapter<?> a(Gson gson, Type type) {
        if (type != Boolean.TYPE && type != Boolean.class) {
            return gson.a((com.google.gson.q.a) com.google.gson.q.a.get(type));
        }
        return TypeAdapters.f15404f;
    }

    @Override // com.google.gson.p
    public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
        Type type = aVar.getType();
        if (!Map.class.isAssignableFrom(aVar.getRawType())) {
            return null;
        }
        Type[] b2 = com.google.gson.internal.b.b(type, com.google.gson.internal.b.e(type));
        return new Adapter(gson, b2[0], a(gson, b2[0]), b2[1], gson.a((com.google.gson.q.a) com.google.gson.q.a.get(b2[1])), this.f15355e.a(aVar));
    }
}
