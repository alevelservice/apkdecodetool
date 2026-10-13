package com.alibaba.fastjson.c;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* compiled from: MapSerializer.java */
/* loaded from: classes.dex */
public final class s implements w {
    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        boolean z;
        Object a2;
        Object a3;
        c0 c0Var = pVar.f3255b;
        if (obj == null) {
            c0Var.i();
            return;
        }
        Map<String, Object> map = (Map) obj;
        Class<?> cls = map.getClass();
        boolean z2 = (cls == JSONObject.class || cls == HashMap.class || cls == LinkedHashMap.class) && map.containsKey(JSON.DEFAULT_TYPE_KEY);
        if ((c0Var.f3234g & b.SortField.mask) != 0) {
            if (map instanceof JSONObject) {
                map = ((JSONObject) map).getInnerMap();
            }
            if (!(map instanceof SortedMap) && !(map instanceof LinkedHashMap)) {
                try {
                    map = new TreeMap(map);
                } catch (Exception unused) {
                }
            }
        }
        IdentityHashMap<Object, z> identityHashMap = pVar.f3265l;
        if (identityHashMap != null && identityHashMap.containsKey(obj)) {
            pVar.a(obj);
            return;
        }
        z zVar = pVar.m;
        pVar.a(zVar, obj, obj2, 0);
        try {
            c0Var.write(123);
            pVar.c();
            if ((c0Var.f3234g & b.WriteClassName.mask) == 0 || z2) {
                z = true;
            } else {
                c0Var.a(pVar.f3254a.f3224b, false);
                c0Var.c(obj.getClass().getName());
                z = false;
            }
            Class<?> cls2 = null;
            w wVar = null;
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                String key = entry.getKey();
                if (pVar.b(obj, key) && pVar.b(obj, key, value) && ((a3 = p.a(pVar, obj, (a2 = pVar.a(obj, key, value)), value)) != null || (c0Var.f3234g & b.WriteMapNullValue.mask) != 0)) {
                    if (a2 instanceof String) {
                        String str = (String) a2;
                        if (!z) {
                            c0Var.write(44);
                        }
                        if ((c0Var.f3234g & b.PrettyFormat.mask) != 0) {
                            pVar.e();
                        }
                        c0Var.a(str, true);
                    } else {
                        if (!z) {
                            c0Var.write(44);
                        }
                        if ((c0Var.f3234g & b.WriteNonStringKeyAsString.mask) != 0 && !(a2 instanceof Enum)) {
                            pVar.b(JSON.toJSONString(a2));
                        } else {
                            pVar.b(a2);
                        }
                        c0Var.write(58);
                    }
                    if (a3 == null) {
                        c0Var.i();
                    } else {
                        Class<?> cls3 = a3.getClass();
                        if (cls3 == cls2) {
                            wVar.a(pVar, a3, a2, null);
                        } else {
                            w a4 = pVar.f3254a.a(cls3);
                            a4.a(pVar, a3, a2, null);
                            wVar = a4;
                            cls2 = cls3;
                        }
                    }
                    z = false;
                }
            }
            pVar.m = zVar;
            pVar.d();
            if ((c0Var.f3234g & b.PrettyFormat.mask) != 0 && map.size() > 0) {
                pVar.e();
            }
            c0Var.write(125);
        } catch (Throwable th) {
            pVar.m = zVar;
            throw th;
        }
    }
}
