package com.alibaba.fastjson.a;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.a.c;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapDeserializer.java */
/* loaded from: classes.dex */
public class l implements com.alibaba.fastjson.a.a.f {

    /* renamed from: a, reason: collision with root package name */
    public static l f3197a = new l();

    l() {
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(c cVar, Type type, Object obj) {
        if (type == JSONObject.class && cVar.q == null) {
            return (T) cVar.j();
        }
        f fVar = cVar.f3148i;
        if (fVar.f3161a == 8) {
            fVar.b(16);
            return null;
        }
        Map<?, ?> a2 = a(type);
        m mVar = cVar.f3149j;
        try {
            cVar.a(mVar, a2, obj);
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type type2 = parameterizedType.getActualTypeArguments()[0];
                Type type3 = parameterizedType.getActualTypeArguments()[1];
                if (String.class == type2) {
                    return (T) a(cVar, a2, type3, obj);
                }
                return (T) a(cVar, a2, type2, type3, obj);
            }
            return (T) cVar.a(a2, obj);
        } finally {
            cVar.a(mVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0129, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map a(com.alibaba.fastjson.a.c r9, java.util.Map<java.lang.String, java.lang.Object> r10, java.lang.reflect.Type r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.l.a(com.alibaba.fastjson.a.c, java.util.Map, java.lang.reflect.Type, java.lang.Object):java.util.Map");
    }

    public static Object a(c cVar, Map<Object, Object> map, Type type, Type type2, Object obj) {
        Object obj2;
        f fVar = cVar.f3148i;
        int i2 = fVar.f3161a;
        int i3 = 16;
        if (i2 != 12 && i2 != 16) {
            throw new com.alibaba.fastjson.f("syntax error, expect {, actual " + g.a(i2));
        }
        com.alibaba.fastjson.a.a.f a2 = cVar.f3145f.a(type);
        com.alibaba.fastjson.a.a.f a3 = cVar.f3145f.a(type2);
        fVar.e();
        m mVar = cVar.f3149j;
        while (true) {
            try {
                int i4 = fVar.f3161a;
                if (i4 == 13) {
                    fVar.b(i3);
                    return map;
                }
                if (i4 == 4 && fVar.f3168h == 4 && fVar.q.startsWith("$ref", fVar.f3171k + 1) && !fVar.a(e.DisableSpecialKeyDetect)) {
                    fVar.a(':');
                    if (fVar.f3161a == 4) {
                        String m = fVar.m();
                        if ("..".equals(m)) {
                            obj2 = mVar.f3199b.f3198a;
                        } else if ("$".equals(m)) {
                            m mVar2 = mVar;
                            while (mVar2.f3199b != null) {
                                mVar2 = mVar2.f3199b;
                            }
                            obj2 = mVar2.f3198a;
                        } else {
                            cVar.a(new c.a(mVar, m));
                            cVar.n = 1;
                            obj2 = null;
                        }
                        fVar.b(13);
                        if (fVar.f3161a == 13) {
                            fVar.b(16);
                            return obj2;
                        }
                        throw new com.alibaba.fastjson.f("illegal ref");
                    }
                    throw new com.alibaba.fastjson.f("illegal ref, " + g.a(i4));
                }
                if (map.size() == 0 && i4 == 4 && JSON.DEFAULT_TYPE_KEY.equals(fVar.m()) && !fVar.a(e.DisableSpecialKeyDetect)) {
                    fVar.a(':');
                    fVar.b(16);
                    if (fVar.f3161a == 13) {
                        fVar.e();
                        return map;
                    }
                    fVar.e();
                }
                Object a4 = a2.a(cVar, type, null);
                if (fVar.f3161a == 17) {
                    fVar.e();
                    Object a5 = a3.a(cVar, type2, a4);
                    if (cVar.n == 1) {
                        cVar.b(map, a4);
                    }
                    map.put(a4, a5);
                    if (fVar.f3161a == 16) {
                        fVar.e();
                    }
                    i3 = 16;
                } else {
                    throw new com.alibaba.fastjson.f("syntax error, expect :, actual " + fVar.f3161a);
                }
            } finally {
                cVar.a(mVar);
            }
        }
    }

    protected Map<?, ?> a(Type type) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type != SortedMap.class && type != TreeMap.class) {
            if (type != ConcurrentMap.class && type != ConcurrentHashMap.class) {
                if (type != Map.class && type != HashMap.class) {
                    if (type == LinkedHashMap.class) {
                        return new LinkedHashMap();
                    }
                    if (type == JSONObject.class) {
                        return new JSONObject();
                    }
                    if (type instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) type;
                        Type rawType = parameterizedType.getRawType();
                        if (EnumMap.class.equals(rawType)) {
                            return new EnumMap((Class) parameterizedType.getActualTypeArguments()[0]);
                        }
                        return a(rawType);
                    }
                    Class cls = (Class) type;
                    if (!cls.isInterface()) {
                        try {
                            return (Map) cls.newInstance();
                        } catch (Exception e2) {
                            throw new com.alibaba.fastjson.f("unsupport type " + type, e2);
                        }
                    }
                    throw new com.alibaba.fastjson.f("unsupport type " + type);
                }
                return new HashMap();
            }
            return new ConcurrentHashMap();
        }
        return new TreeMap();
    }
}
