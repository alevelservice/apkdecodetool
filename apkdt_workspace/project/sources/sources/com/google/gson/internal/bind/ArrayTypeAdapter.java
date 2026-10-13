package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.p;
import com.google.gson.r.c;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class ArrayTypeAdapter<E> extends TypeAdapter<Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final p f15346c = new p() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            Type type = aVar.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type d2 = com.google.gson.internal.b.d(type);
            return new ArrayTypeAdapter(gson, gson.a((com.google.gson.q.a) com.google.gson.q.a.get(d2)), com.google.gson.internal.b.e(d2));
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final Class<E> f15347a;

    /* renamed from: b, reason: collision with root package name */
    private final TypeAdapter<E> f15348b;

    public ArrayTypeAdapter(Gson gson, TypeAdapter<E> typeAdapter, Class<E> cls) {
        this.f15348b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.f15347a = cls;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public Object read2(com.google.gson.r.a aVar) {
        if (aVar.C() == com.google.gson.r.b.NULL) {
            aVar.A();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.i();
        while (aVar.p()) {
            arrayList.add(this.f15348b.read2(aVar));
        }
        aVar.l();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f15347a, size);
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(newInstance, i2, arrayList.get(i2));
        }
        return newInstance;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, Object obj) {
        if (obj == null) {
            cVar.q();
            return;
        }
        cVar.i();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.f15348b.write(cVar, Array.get(obj, i2));
        }
        cVar.k();
    }
}
