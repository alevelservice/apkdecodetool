package com.alibaba.fastjson.a;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.c.t;
import com.alibaba.fastjson.c.v;
import com.alibaba.fastjson.e.a;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

/* compiled from: ParserConfig.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: e, reason: collision with root package name */
    private static long[] f3203e = {-7600952144447537354L};

    /* renamed from: f, reason: collision with root package name */
    public static n f3204f = new n();

    /* renamed from: a, reason: collision with root package name */
    private final com.alibaba.fastjson.e.b<com.alibaba.fastjson.a.a.f> f3205a = new com.alibaba.fastjson.e.b<>(1024);

    /* renamed from: b, reason: collision with root package name */
    public final p f3206b = new p(16384);

    /* renamed from: c, reason: collision with root package name */
    public ClassLoader f3207c;

    /* renamed from: d, reason: collision with root package name */
    public com.alibaba.fastjson.h f3208d;

    public n() {
        this.f3205a.a(SimpleDateFormat.class, t.f3273a);
        this.f3205a.a(Date.class, com.alibaba.fastjson.c.k.f3244a);
        this.f3205a.a(Calendar.class, com.alibaba.fastjson.c.k.f3244a);
        this.f3205a.a(Map.class, l.f3197a);
        this.f3205a.a(HashMap.class, l.f3197a);
        this.f3205a.a(LinkedHashMap.class, l.f3197a);
        this.f3205a.a(TreeMap.class, l.f3197a);
        this.f3205a.a(ConcurrentMap.class, l.f3197a);
        this.f3205a.a(ConcurrentHashMap.class, l.f3197a);
        this.f3205a.a(Collection.class, com.alibaba.fastjson.c.j.f3243a);
        this.f3205a.a(List.class, com.alibaba.fastjson.c.j.f3243a);
        this.f3205a.a(ArrayList.class, com.alibaba.fastjson.c.j.f3243a);
        this.f3205a.a(Object.class, j.f3193a);
        this.f3205a.a(String.class, com.alibaba.fastjson.c.c.f3227a);
        this.f3205a.a(Character.TYPE, t.f3273a);
        this.f3205a.a(Character.class, t.f3273a);
        this.f3205a.a(Byte.TYPE, v.f3274b);
        this.f3205a.a(Byte.class, v.f3274b);
        this.f3205a.a(Short.TYPE, v.f3274b);
        this.f3205a.a(Short.class, v.f3274b);
        this.f3205a.a(Integer.TYPE, com.alibaba.fastjson.c.n.f3253a);
        this.f3205a.a(Integer.class, com.alibaba.fastjson.c.n.f3253a);
        this.f3205a.a(Long.TYPE, com.alibaba.fastjson.c.n.f3253a);
        this.f3205a.a(Long.class, com.alibaba.fastjson.c.n.f3253a);
        this.f3205a.a(BigInteger.class, com.alibaba.fastjson.c.h.f3241a);
        this.f3205a.a(BigDecimal.class, com.alibaba.fastjson.c.h.f3241a);
        this.f3205a.a(Float.TYPE, v.f3274b);
        this.f3205a.a(Float.class, v.f3274b);
        this.f3205a.a(Double.TYPE, v.f3274b);
        this.f3205a.a(Double.class, v.f3274b);
        this.f3205a.a(Boolean.TYPE, com.alibaba.fastjson.c.i.f3242a);
        this.f3205a.a(Boolean.class, com.alibaba.fastjson.c.i.f3242a);
        this.f3205a.a(Class.class, t.f3273a);
        this.f3205a.a(char[].class, com.alibaba.fastjson.c.e.f3236a);
        this.f3205a.a(Object[].class, com.alibaba.fastjson.c.e.f3236a);
        this.f3205a.a(UUID.class, t.f3273a);
        this.f3205a.a(TimeZone.class, t.f3273a);
        this.f3205a.a(Locale.class, t.f3273a);
        this.f3205a.a(Currency.class, t.f3273a);
        this.f3205a.a(URI.class, t.f3273a);
        this.f3205a.a(URL.class, t.f3273a);
        this.f3205a.a(Pattern.class, t.f3273a);
        this.f3205a.a(Charset.class, t.f3273a);
        this.f3205a.a(Number.class, v.f3274b);
        this.f3205a.a(StackTraceElement.class, t.f3273a);
        this.f3205a.a(Serializable.class, j.f3193a);
        this.f3205a.a(Cloneable.class, j.f3193a);
        this.f3205a.a(Comparable.class, j.f3193a);
        this.f3205a.a(Closeable.class, j.f3193a);
    }

    public static n a() {
        return f3204f;
    }

    public com.alibaba.fastjson.a.a.f a(Type type) {
        com.alibaba.fastjson.a.a.f a2 = this.f3205a.a(type);
        if (a2 != null) {
            return a2;
        }
        if (type instanceof Class) {
            return a((Class<?>) type, type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return a((Class<?>) rawType, type);
            }
            return a(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return a(upperBounds[0]);
            }
        }
        return j.f3193a;
    }

    public com.alibaba.fastjson.a.a.f a(Class<?> cls, Type type) {
        com.alibaba.fastjson.a.a.f fVar;
        JSONType jSONType;
        Class<?> mappingTo;
        com.alibaba.fastjson.a.a.f a2 = this.f3205a.a(type);
        if (a2 != null) {
            return a2;
        }
        if (type == null) {
            type = cls;
        }
        com.alibaba.fastjson.a.a.f a3 = this.f3205a.a(type);
        if (a3 != null) {
            return a3;
        }
        if (!a(cls) && (jSONType = (JSONType) cls.getAnnotation(JSONType.class)) != null && (mappingTo = jSONType.mappingTo()) != Void.class) {
            return a(mappingTo, mappingTo);
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable) || (type instanceof ParameterizedType)) {
            a3 = this.f3205a.a(cls);
        }
        if (a3 != null) {
            return a3;
        }
        com.alibaba.fastjson.a.a.f a4 = this.f3205a.a(type);
        if (a4 != null) {
            return a4;
        }
        if (cls.isEnum()) {
            fVar = new d(cls);
        } else if (cls.isArray()) {
            fVar = com.alibaba.fastjson.c.e.f3236a;
        } else if (cls != Set.class && cls != HashSet.class && cls != Collection.class && cls != List.class && cls != ArrayList.class) {
            if (Collection.class.isAssignableFrom(cls)) {
                fVar = com.alibaba.fastjson.c.j.f3243a;
            } else if (Map.class.isAssignableFrom(cls)) {
                fVar = l.f3197a;
            } else if (Throwable.class.isAssignableFrom(cls)) {
                fVar = new q(this, cls);
            } else if (cls.getName().equals("android.net.Uri")) {
                fVar = t.f3273a;
            } else {
                fVar = new h(this, cls, type);
            }
        } else {
            fVar = com.alibaba.fastjson.c.j.f3243a;
        }
        a(type, fVar);
        return fVar;
    }

    public com.alibaba.fastjson.a.a.d a(n nVar, Class<?> cls, a aVar) {
        Class<?> cls2 = aVar.f3286k;
        if (cls2 != List.class && cls2 != ArrayList.class && (!cls2.isArray() || cls2.getComponentType().isPrimitive())) {
            return new b(nVar, cls, aVar);
        }
        return new k(nVar, cls, aVar);
    }

    public void a(Type type, com.alibaba.fastjson.a.a.f fVar) {
        this.f3205a.a(type, fVar);
    }

    public static boolean a(Class<?> cls) {
        return cls.isPrimitive() || cls == Boolean.class || cls == Character.class || cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == String.class || cls == Date.class || cls == java.sql.Date.class || cls == Time.class || cls == Timestamp.class;
    }

    public Class<?> a(String str, Class<?> cls, int i2) {
        if (str == null) {
            return null;
        }
        if (str.length() >= 128 || str.length() < 3) {
            throw new com.alibaba.fastjson.f("autoType is not support. " + str);
        }
        long j2 = -3750763034362895579L;
        if ((str.charAt(0) ^ (-3750763034362895579L)) * 1099511628211L != -5808493101479473382L) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                j2 = (str.charAt(i3) ^ j2) * 1099511628211L;
            }
            if (Arrays.binarySearch(f3203e, j2) < 0) {
                Class<?> a2 = com.alibaba.fastjson.e.d.a(str);
                if (a2 != null) {
                    return a2;
                }
                Class<?> a3 = this.f3205a.a(str);
                if (a3 != null) {
                    return a3;
                }
                Class<?> a4 = com.alibaba.fastjson.e.d.a(str, this.f3207c, false);
                if (a4 != null && cls != null && a4 != HashMap.class && !cls.isAssignableFrom(a4)) {
                    throw new com.alibaba.fastjson.f("type not match. " + str + " -> " + cls.getName());
                }
                int i4 = e.SupportAutoType.mask;
                if ((i2 & i4) != 0 || (i4 & JSON.DEFAULT_PARSER_FEATURE) != 0) {
                    return a4;
                }
                throw new com.alibaba.fastjson.f("SupportAutoType : " + str);
            }
            throw new com.alibaba.fastjson.f("autoType is not support. " + str);
        }
        throw new com.alibaba.fastjson.f("autoType is not support. " + str);
    }
}
