package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.r.c;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Gson f15396a;

    /* renamed from: b, reason: collision with root package name */
    private final TypeAdapter<T> f15397b;

    /* renamed from: c, reason: collision with root package name */
    private final Type f15398c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.f15396a = gson;
        this.f15397b = typeAdapter;
        this.f15398c = type;
    }

    private Type a(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public T read2(com.google.gson.r.a aVar) {
        return this.f15397b.read2(aVar);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(c cVar, T t) {
        TypeAdapter<T> typeAdapter = this.f15397b;
        Type a2 = a(this.f15398c, t);
        if (a2 != this.f15398c) {
            typeAdapter = this.f15396a.a((com.google.gson.q.a) com.google.gson.q.a.get(a2));
            if (typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) {
                TypeAdapter<T> typeAdapter2 = this.f15397b;
                if (!(typeAdapter2 instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                    typeAdapter = typeAdapter2;
                }
            }
        }
        typeAdapter.write(cVar, t);
    }
}
