package com.alibaba.fastjson.a.a;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

/* compiled from: FieldDeserializer.java */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final com.alibaba.fastjson.e.a f3139a;

    /* renamed from: b, reason: collision with root package name */
    public final Class<?> f3140b;

    /* renamed from: c, reason: collision with root package name */
    protected Enum[] f3141c;

    /* renamed from: d, reason: collision with root package name */
    protected long[] f3142d;

    public d(Class<?> cls, com.alibaba.fastjson.e.a aVar, int i2) {
        this.f3140b = cls;
        this.f3139a = aVar;
        if (aVar == null) {
            return;
        }
        Class<?> cls2 = aVar.f3286k;
        if (cls2.isEnum()) {
            Enum[] enumArr = (Enum[]) cls2.getEnumConstants();
            long[] jArr = new long[enumArr.length];
            this.f3142d = new long[enumArr.length];
            for (int i3 = 0; i3 < enumArr.length; i3++) {
                long j2 = -3750763034362895579L;
                for (int i4 = 0; i4 < enumArr[i3].name().length(); i4++) {
                    j2 = (j2 ^ r1.charAt(i4)) * 1099511628211L;
                }
                jArr[i3] = j2;
                this.f3142d[i3] = j2;
            }
            Arrays.sort(this.f3142d);
            this.f3141c = new Enum[enumArr.length];
            for (int i5 = 0; i5 < this.f3142d.length; i5++) {
                int i6 = 0;
                while (true) {
                    if (i6 >= jArr.length) {
                        break;
                    }
                    if (this.f3142d[i5] == jArr[i6]) {
                        this.f3141c[i5] = enumArr[i6];
                        break;
                    }
                    i6++;
                }
            }
        }
    }

    public Enum a(long j2) {
        int binarySearch;
        if (this.f3141c != null && (binarySearch = Arrays.binarySearch(this.f3142d, j2)) >= 0) {
            return this.f3141c[binarySearch];
        }
        return null;
    }

    public abstract void a(com.alibaba.fastjson.a.c cVar, Object obj, Type type, Map<String, Object> map);

    public void a(Object obj, int i2) {
        this.f3139a.f3282g.setInt(obj, i2);
    }

    public void a(Object obj, long j2) {
        this.f3139a.f3282g.setLong(obj, j2);
    }

    public void a(Object obj, float f2) {
        this.f3139a.f3282g.setFloat(obj, f2);
    }

    public void a(Object obj, double d2) {
        this.f3139a.f3282g.setDouble(obj, d2);
    }

    public void a(Object obj, Object obj2) {
        if (obj2 == null && this.f3139a.f3286k.isPrimitive()) {
            return;
        }
        com.alibaba.fastjson.e.a aVar = this.f3139a;
        Field field = aVar.f3282g;
        Method method = aVar.f3281f;
        try {
            if (aVar.f3283h) {
                if (aVar.n) {
                    if (Map.class.isAssignableFrom(aVar.f3286k)) {
                        Map map = (Map) field.get(obj);
                        if (map != null) {
                            map.putAll((Map) obj2);
                            return;
                        }
                        return;
                    }
                    Collection collection = (Collection) field.get(obj);
                    if (collection != null) {
                        collection.addAll((Collection) obj2);
                        return;
                    }
                    return;
                }
                field.set(obj, obj2);
                return;
            }
            if (aVar.n) {
                if (Map.class.isAssignableFrom(aVar.f3286k)) {
                    Map map2 = (Map) method.invoke(obj, new Object[0]);
                    if (map2 != null) {
                        map2.putAll((Map) obj2);
                        return;
                    }
                    return;
                }
                Collection collection2 = (Collection) method.invoke(obj, new Object[0]);
                if (collection2 != null) {
                    collection2.addAll((Collection) obj2);
                    return;
                }
                return;
            }
            method.invoke(obj, obj2);
        } catch (Exception e2) {
            throw new com.alibaba.fastjson.f("set property error, " + this.f3139a.f3280e, e2);
        }
    }
}
