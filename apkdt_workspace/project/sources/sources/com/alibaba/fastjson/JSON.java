package com.alibaba.fastjson;

import com.alibaba.fastjson.a.c;
import com.alibaba.fastjson.a.e;
import com.alibaba.fastjson.a.n;
import com.alibaba.fastjson.c.a;
import com.alibaba.fastjson.c.a0;
import com.alibaba.fastjson.c.b0;
import com.alibaba.fastjson.c.c0;
import com.alibaba.fastjson.c.p;
import com.alibaba.fastjson.c.q;
import com.alibaba.fastjson.c.u;
import com.alibaba.fastjson.c.w;
import com.alibaba.fastjson.c.x;
import com.alibaba.fastjson.c.y;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class JSON implements d, g {
    public static final String DEFAULT_TYPE_KEY = "@type";
    public static final String VERSION = "1.1.68";
    public static TimeZone defaultTimeZone = TimeZone.getDefault();
    public static Locale defaultLocale = Locale.getDefault();
    public static int DEFAULT_PARSER_FEATURE = ((e.UseBigDecimal.mask | 0) | e.SortFeidFastMatch.mask) | e.IgnoreNotMatch.mask;
    public static String DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static int DEFAULT_GENERATE_FEATURE = (((com.alibaba.fastjson.c.b.QuoteFieldNames.mask | 0) | com.alibaba.fastjson.c.b.SkipTransientField.mask) | com.alibaba.fastjson.c.b.WriteEnumUsingToString.mask) | com.alibaba.fastjson.c.b.SortField.mask;

    public static final Object parse(String str) {
        return parse(str, DEFAULT_PARSER_FEATURE);
    }

    public static final b parseArray(String str) {
        return parseArray(str, new e[0]);
    }

    public static final JSONObject parseObject(String str, e... eVarArr) {
        Object parse = parse(str, eVarArr);
        if (parse instanceof JSONObject) {
            return (JSONObject) parse;
        }
        JSONObject jSONObject = (JSONObject) toJSON(parse);
        boolean z = (DEFAULT_PARSER_FEATURE & e.SupportAutoType.mask) != 0;
        if (!z) {
            for (e eVar : eVarArr) {
                if (eVar == e.SupportAutoType) {
                    z = true;
                }
            }
        }
        if (z) {
            jSONObject.put(DEFAULT_TYPE_KEY, (Object) parse.getClass().getName());
        }
        return jSONObject;
    }

    public static final Object toJSON(Object obj) {
        return toJSON(obj, a0.f3222d);
    }

    public static final byte[] toJSONBytes(Object obj, com.alibaba.fastjson.c.b... bVarArr) {
        c0 c0Var = new c0(null, DEFAULT_GENERATE_FEATURE, bVarArr);
        try {
            new p(c0Var, a0.f3222d).b(obj);
            return c0Var.b("UTF-8");
        } finally {
            c0Var.close();
        }
    }

    public static final String toJSONString(Object obj) {
        return toJSONString(obj, a0.f3222d, null, null, DEFAULT_GENERATE_FEATURE, new com.alibaba.fastjson.c.b[0]);
    }

    public static final String toJSONStringWithDateFormat(Object obj, String str, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0.f3222d, null, str, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static final String toJSONStringZ(Object obj, a0 a0Var, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0.f3222d, null, null, 0, bVarArr);
    }

    public static final <T> T toJavaObject(JSON json, Class<T> cls) {
        return (T) com.alibaba.fastjson.e.d.a((Object) json, (Class) cls, n.f3204f);
    }

    public static final void writeJSONStringTo(Object obj, Writer writer, com.alibaba.fastjson.c.b... bVarArr) {
        c0 c0Var = new c0(writer, DEFAULT_GENERATE_FEATURE, bVarArr);
        try {
            new p(c0Var, a0.f3222d).b(obj);
        } finally {
            c0Var.close();
        }
    }

    public String toString() {
        return toJSONString();
    }

    @Override // com.alibaba.fastjson.g
    public void writeJSONString(Appendable appendable) {
        c0 c0Var = new c0(null, DEFAULT_GENERATE_FEATURE, com.alibaba.fastjson.c.b.EMPTY);
        try {
            try {
                new p(c0Var, a0.f3222d).b(this);
                appendable.append(c0Var.toString());
            } catch (IOException e2) {
                throw new f(e2.getMessage(), e2);
            }
        } finally {
            c0Var.close();
        }
    }

    public static final Object parse(String str, int i2) {
        if (str == null) {
            return null;
        }
        c cVar = new c(str, n.f3204f, i2);
        Object b2 = cVar.b((Object) null);
        cVar.c(b2);
        cVar.close();
        return b2;
    }

    public static final b parseArray(String str, e... eVarArr) {
        b bVar = null;
        if (str == null) {
            return null;
        }
        int i2 = DEFAULT_PARSER_FEATURE;
        for (e eVar : eVarArr) {
            i2 |= eVar.mask;
        }
        c cVar = new c(str, n.f3204f, i2);
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 8) {
            fVar.e();
        } else if (a2 != 20) {
            bVar = new b();
            cVar.b((Collection) bVar);
            cVar.c(bVar);
        }
        cVar.close();
        return bVar;
    }

    @Deprecated
    public static final Object toJSON(Object obj, n nVar) {
        return toJSON(obj, a0.f3222d);
    }

    public static final String toJSONString(Object obj, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public <T> T toJavaObject(Class<T> cls) {
        return (T) com.alibaba.fastjson.e.d.a((Object) this, (Class) cls, n.a());
    }

    public static Object toJSON(Object obj, a0 a0Var) {
        Map hashMap;
        if (obj == null) {
            return null;
        }
        if (obj instanceof JSON) {
            return (JSON) obj;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            int size = map.size();
            if (map instanceof LinkedHashMap) {
                hashMap = new LinkedHashMap(size);
            } else if (map instanceof TreeMap) {
                hashMap = new TreeMap();
            } else {
                hashMap = new HashMap(size);
            }
            JSONObject jSONObject = new JSONObject((Map<String, Object>) hashMap);
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put(com.alibaba.fastjson.e.d.a(entry.getKey()), toJSON(entry.getValue()));
            }
            return jSONObject;
        }
        if (obj instanceof Collection) {
            Collection collection = (Collection) obj;
            b bVar = new b(collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                bVar.add(toJSON(it.next()));
            }
            return bVar;
        }
        Class<?> cls = obj.getClass();
        if (cls.isEnum()) {
            return ((Enum) obj).name();
        }
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            b bVar2 = new b(length);
            for (int i2 = 0; i2 < length; i2++) {
                bVar2.add(toJSON(Array.get(obj, i2)));
            }
            return bVar2;
        }
        if (n.a(cls)) {
            return obj;
        }
        w a2 = a0Var.a(cls);
        if (!(a2 instanceof q)) {
            return null;
        }
        q qVar = (q) a2;
        JSONObject jSONObject2 = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry2 : qVar.a(obj).entrySet()) {
                jSONObject2.put(entry2.getKey(), toJSON(entry2.getValue()));
            }
            return jSONObject2;
        } catch (Exception e2) {
            throw new f("toJSON error", e2);
        }
    }

    public static final String toJSONString(Object obj, int i2, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0.f3222d, null, null, i2, bVarArr);
    }

    public static final String toJSONString(Object obj, b0 b0Var, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0.f3222d, new b0[]{b0Var}, null, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static final String toJSONString(Object obj, b0[] b0VarArr, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0.f3222d, b0VarArr, null, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static final Object parse(byte[] bArr, e... eVarArr) {
        try {
            return parseObject(new String(bArr, "UTF-8"), eVarArr);
        } catch (UnsupportedEncodingException e2) {
            throw new f("UTF-8 not support", e2);
        }
    }

    public static final byte[] toJSONBytes(Object obj, a0 a0Var, com.alibaba.fastjson.c.b... bVarArr) {
        c0 c0Var = new c0(null, DEFAULT_GENERATE_FEATURE, bVarArr);
        try {
            new p(c0Var, a0Var).b(obj);
            return c0Var.b("UTF-8");
        } finally {
            c0Var.close();
        }
    }

    public static final String toJSONString(Object obj, a0 a0Var, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0Var, null, null, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static final String toJSONString(Object obj, a0 a0Var, b0 b0Var, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0Var, new b0[]{b0Var}, null, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static final Object parse(String str, e... eVarArr) {
        int i2 = DEFAULT_PARSER_FEATURE;
        for (e eVar : eVarArr) {
            i2 |= eVar.mask;
        }
        return parse(str, i2);
    }

    public static final String toJSONString(Object obj, a0 a0Var, b0[] b0VarArr, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONString(obj, a0Var, b0VarArr, null, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static final JSONObject parseObject(String str) {
        Object parse = parse(str);
        if (!(parse instanceof JSONObject) && parse != null) {
            JSONObject jSONObject = (JSONObject) toJSON(parse);
            if ((DEFAULT_PARSER_FEATURE & e.SupportAutoType.mask) != 0) {
                jSONObject.put(DEFAULT_TYPE_KEY, (Object) parse.getClass().getName());
            }
            return jSONObject;
        }
        return (JSONObject) parse;
    }

    public static final String toJSONString(Object obj, boolean z) {
        return !z ? toJSONString(obj) : toJSONString(obj, com.alibaba.fastjson.c.b.PrettyFormat);
    }

    public static byte[] toJSONBytes(Object obj, a0 a0Var, int i2, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONBytes(obj, a0Var, new b0[0], i2, bVarArr);
    }

    @Override // com.alibaba.fastjson.d
    public String toJSONString() {
        c0 c0Var = new c0(null, DEFAULT_GENERATE_FEATURE, com.alibaba.fastjson.c.b.EMPTY);
        try {
            new p(c0Var, a0.f3222d).b(this);
            return c0Var.toString();
        } finally {
            c0Var.close();
        }
    }

    public static Object parse(String str, n nVar) {
        return parse(str, nVar, DEFAULT_PARSER_FEATURE);
    }

    public static byte[] toJSONBytes(Object obj, b0[] b0VarArr, com.alibaba.fastjson.c.b... bVarArr) {
        return toJSONBytes(obj, a0.f3222d, b0VarArr, DEFAULT_GENERATE_FEATURE, bVarArr);
    }

    public static Object parse(String str, n nVar, e... eVarArr) {
        int i2 = DEFAULT_PARSER_FEATURE;
        for (e eVar : eVarArr) {
            i2 |= eVar.mask;
        }
        return parse(str, nVar, i2);
    }

    public static final <T> List<T> parseArray(String str, Class<T> cls) {
        ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        c cVar = new c(str, n.f3204f);
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 8) {
            fVar.e();
        } else if (a2 != 20 || !fVar.n()) {
            arrayList = new ArrayList();
            cVar.a((Class<?>) cls, (Collection) arrayList);
            cVar.c(arrayList);
        }
        cVar.close();
        return arrayList;
    }

    public static byte[] toJSONBytes(Object obj, a0 a0Var, b0[] b0VarArr, int i2, com.alibaba.fastjson.c.b... bVarArr) {
        c0 c0Var = new c0(null, i2, bVarArr);
        try {
            p pVar = new p(c0Var, a0Var);
            if (b0VarArr != null) {
                for (b0 b0Var : b0VarArr) {
                    if (b0Var != null) {
                        if (b0Var instanceof y) {
                            pVar.i().add((y) b0Var);
                        }
                        if (b0Var instanceof u) {
                            pVar.h().add((u) b0Var);
                        }
                        if (b0Var instanceof com.alibaba.fastjson.c.d) {
                            pVar.b().add((com.alibaba.fastjson.c.d) b0Var);
                        }
                        if (b0Var instanceof x) {
                            pVar.j().add((x) b0Var);
                        }
                        if (b0Var instanceof com.alibaba.fastjson.c.g) {
                            pVar.f().add((com.alibaba.fastjson.c.g) b0Var);
                        }
                        if (b0Var instanceof a) {
                            pVar.g().add((a) b0Var);
                        }
                    }
                }
            }
            pVar.b(obj);
            return c0Var.b("UTF-8");
        } finally {
            c0Var.close();
        }
    }

    public static final <T> T parseObject(String str, j<T> jVar, e... eVarArr) {
        return (T) parseObject(str, jVar.type, n.f3204f, DEFAULT_PARSER_FEATURE, eVarArr);
    }

    public static final <T> T parseObject(String str, Class<T> cls, e... eVarArr) {
        return (T) parseObject(str, cls, n.f3204f, DEFAULT_PARSER_FEATURE, eVarArr);
    }

    public static String toJSONString(Object obj, a0 a0Var, b0[] b0VarArr, String str, int i2, com.alibaba.fastjson.c.b... bVarArr) {
        c0 c0Var = new c0(null, i2, bVarArr);
        try {
            p pVar = new p(c0Var, a0Var);
            for (com.alibaba.fastjson.c.b bVar : bVarArr) {
                pVar.a(bVar, true);
            }
            if (str != null && str.length() != 0) {
                pVar.a(str);
                pVar.a(com.alibaba.fastjson.c.b.WriteDateUseDateFormat, true);
            }
            if (b0VarArr != null) {
                for (b0 b0Var : b0VarArr) {
                    if (b0Var != null) {
                        if (b0Var instanceof y) {
                            pVar.i().add((y) b0Var);
                        }
                        if (b0Var instanceof u) {
                            pVar.h().add((u) b0Var);
                        }
                        if (b0Var instanceof com.alibaba.fastjson.c.d) {
                            pVar.b().add((com.alibaba.fastjson.c.d) b0Var);
                        }
                        if (b0Var instanceof x) {
                            pVar.j().add((x) b0Var);
                        }
                        if (b0Var instanceof com.alibaba.fastjson.c.g) {
                            pVar.f().add((com.alibaba.fastjson.c.g) b0Var);
                        }
                        if (b0Var instanceof a) {
                            pVar.g().add((a) b0Var);
                        }
                    }
                }
            }
            pVar.b(obj);
            return c0Var.toString();
        } finally {
            c0Var.close();
        }
    }

    public static Object parse(String str, n nVar, int i2) {
        if (str == null) {
            return null;
        }
        c cVar = new c(str, nVar, i2);
        Object p = cVar.p();
        cVar.c(p);
        cVar.close();
        return p;
    }

    public static final <T> T parseObject(String str, Class<T> cls, com.alibaba.fastjson.a.a.g gVar, e... eVarArr) {
        return (T) parseObject(str, cls, n.f3204f, gVar, DEFAULT_PARSER_FEATURE, eVarArr);
    }

    public static final <T> T parseObject(String str, Type type, e... eVarArr) {
        return (T) parseObject(str, type, n.f3204f, DEFAULT_PARSER_FEATURE, eVarArr);
    }

    public static final <T> T parseObject(String str, Type type, com.alibaba.fastjson.a.a.g gVar, e... eVarArr) {
        return (T) parseObject(str, type, n.f3204f, gVar, DEFAULT_PARSER_FEATURE, eVarArr);
    }

    public static final <T> T parseObject(String str, Type type, int i2, e... eVarArr) {
        if (str == null) {
            return null;
        }
        for (e eVar : eVarArr) {
            i2 |= eVar.mask;
        }
        c cVar = new c(str, n.f3204f, i2);
        T t = (T) cVar.a(type);
        cVar.c(t);
        cVar.close();
        return t;
    }

    public static final List<Object> parseArray(String str, Type[] typeArr) {
        if (str == null) {
            return null;
        }
        c cVar = new c(str, n.f3204f);
        Object[] a2 = cVar.a(typeArr);
        List<Object> asList = a2 != null ? Arrays.asList(a2) : null;
        cVar.c(asList);
        cVar.close();
        return asList;
    }

    public static final <T> T parseObject(String str, Type type, n nVar, int i2, e... eVarArr) {
        return (T) parseObject(str, type, nVar, null, i2, eVarArr);
    }

    public static final <T> T parseObject(String str, Type type, n nVar, com.alibaba.fastjson.a.a.g gVar, int i2, e... eVarArr) {
        if (str == null) {
            return null;
        }
        for (e eVar : eVarArr) {
            i2 |= eVar.mask;
        }
        c cVar = new c(str, nVar, i2);
        if (gVar instanceof com.alibaba.fastjson.a.a.c) {
            cVar.m().add((com.alibaba.fastjson.a.a.c) gVar);
        }
        if (gVar instanceof com.alibaba.fastjson.a.a.b) {
            cVar.l().add((com.alibaba.fastjson.a.a.b) gVar);
        }
        if (gVar instanceof com.alibaba.fastjson.a.a.e) {
            cVar.q = (com.alibaba.fastjson.a.a.e) gVar;
        }
        T t = (T) cVar.a(type);
        cVar.c(t);
        cVar.close();
        return t;
    }

    public static final <T> T parseObject(byte[] bArr, Type type, e... eVarArr) {
        try {
            return (T) parseObject(new String(bArr, "UTF-8"), type, eVarArr);
        } catch (UnsupportedEncodingException unused) {
            throw new f("UTF-8 not support");
        }
    }

    public static final <T> T parseObject(char[] cArr, int i2, Type type, e... eVarArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        int i3 = DEFAULT_PARSER_FEATURE;
        for (e eVar : eVarArr) {
            i3 |= eVar.mask;
        }
        c cVar = new c(cArr, i2, n.f3204f, i3);
        T t = (T) cVar.a(type);
        cVar.c(t);
        cVar.close();
        return t;
    }

    public static final <T> T parseObject(String str, Class<T> cls) {
        return (T) parseObject(str, (Class) cls, new e[0]);
    }
}
