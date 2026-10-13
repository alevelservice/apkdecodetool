package com.alibaba.fastjson.a;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaObjectDeserializer.java */
/* loaded from: classes.dex */
public class j implements com.alibaba.fastjson.a.a.f {

    /* renamed from: a, reason: collision with root package name */
    public static final j f3193a = new j();

    j() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(c cVar, Type type, Object obj) {
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            if (genericComponentType instanceof TypeVariable) {
                genericComponentType = ((TypeVariable) genericComponentType).getBounds()[0];
            }
            ArrayList arrayList = new ArrayList();
            cVar.a(genericComponentType, (Collection) arrayList);
            if (genericComponentType instanceof Class) {
                T t = (T) ((Object[]) Array.newInstance((Class<?>) genericComponentType, arrayList.size()));
                arrayList.toArray((Object[]) t);
                return t;
            }
            return (T) arrayList.toArray();
        }
        return (T) cVar.b(obj);
    }
}
