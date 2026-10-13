package com.alibaba.fastjson.e;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* compiled from: ParameterizedTypeImpl.java */
/* loaded from: classes.dex */
public class c implements ParameterizedType {

    /* renamed from: e, reason: collision with root package name */
    private final Type[] f3293e;

    /* renamed from: f, reason: collision with root package name */
    private final Type f3294f;

    /* renamed from: g, reason: collision with root package name */
    private final Type f3295g;

    public c(Type[] typeArr, Type type, Type type2) {
        this.f3293e = typeArr;
        this.f3294f = type;
        this.f3295g = type2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (!Arrays.equals(this.f3293e, cVar.f3293e)) {
            return false;
        }
        Type type = this.f3294f;
        if (type == null ? cVar.f3294f != null : !type.equals(cVar.f3294f)) {
            return false;
        }
        Type type2 = this.f3295g;
        Type type3 = cVar.f3295g;
        return type2 != null ? type2.equals(type3) : type3 == null;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return this.f3293e;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return this.f3294f;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return this.f3295g;
    }

    public int hashCode() {
        Type[] typeArr = this.f3293e;
        int hashCode = (typeArr != null ? Arrays.hashCode(typeArr) : 0) * 31;
        Type type = this.f3294f;
        int hashCode2 = (hashCode + (type != null ? type.hashCode() : 0)) * 31;
        Type type2 = this.f3295g;
        return hashCode2 + (type2 != null ? type2.hashCode() : 0);
    }
}
