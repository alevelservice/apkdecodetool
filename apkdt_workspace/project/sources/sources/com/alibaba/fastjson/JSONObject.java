package com.alibaba.fastjson;

import com.alibaba.fastjson.a.e;
import com.alibaba.fastjson.a.n;
import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class JSONObject extends JSON implements Serializable, Cloneable, InvocationHandler, Map<String, Object> {
    private final Map<String, Object> map;

    public JSONObject() {
        this(16, false);
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    public Object clone() {
        return new JSONObject(new LinkedHashMap(this.map));
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return this.map.equals(obj);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return this.map.get(obj);
    }

    public BigDecimal getBigDecimal(String str) {
        return com.alibaba.fastjson.e.d.e(get(str));
    }

    public BigInteger getBigInteger(String str) {
        return com.alibaba.fastjson.e.d.f(get(str));
    }

    public Boolean getBoolean(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.e.d.m(obj);
    }

    public boolean getBooleanValue(String str) {
        Boolean m = com.alibaba.fastjson.e.d.m(get(str));
        if (m == null) {
            return false;
        }
        return m.booleanValue();
    }

    public Byte getByte(String str) {
        return com.alibaba.fastjson.e.d.b(get(str));
    }

    public byte getByteValue(String str) {
        Byte b2 = com.alibaba.fastjson.e.d.b(get(str));
        if (b2 == null) {
            return (byte) 0;
        }
        return b2.byteValue();
    }

    public byte[] getBytes(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.e.d.l(obj);
    }

    public Date getDate(String str) {
        return com.alibaba.fastjson.e.d.i(get(str));
    }

    public Double getDouble(String str) {
        return com.alibaba.fastjson.e.d.h(get(str));
    }

    public double getDoubleValue(String str) {
        Double h2 = com.alibaba.fastjson.e.d.h(get(str));
        if (h2 == null) {
            return 0.0d;
        }
        return h2.doubleValue();
    }

    public Float getFloat(String str) {
        return com.alibaba.fastjson.e.d.g(get(str));
    }

    public float getFloatValue(String str) {
        Float g2 = com.alibaba.fastjson.e.d.g(get(str));
        if (g2 == null) {
            return 0.0f;
        }
        return g2.floatValue();
    }

    public Map<String, Object> getInnerMap() {
        return this.map;
    }

    public int getIntValue(String str) {
        Integer k2 = com.alibaba.fastjson.e.d.k(get(str));
        if (k2 == null) {
            return 0;
        }
        return k2.intValue();
    }

    public Integer getInteger(String str) {
        return com.alibaba.fastjson.e.d.k(get(str));
    }

    public b getJSONArray(String str) {
        Object obj = this.map.get(str);
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj instanceof String) {
            return (b) JSON.parse((String) obj);
        }
        return (b) JSON.toJSON(obj);
    }

    public JSONObject getJSONObject(String str) {
        Object obj = this.map.get(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        if (obj instanceof String) {
            return JSON.parseObject((String) obj);
        }
        return (JSONObject) JSON.toJSON(obj);
    }

    public Long getLong(String str) {
        return com.alibaba.fastjson.e.d.j(get(str));
    }

    public long getLongValue(String str) {
        Long j2 = com.alibaba.fastjson.e.d.j(get(str));
        if (j2 == null) {
            return 0L;
        }
        return j2.longValue();
    }

    public <T> T getObject(String str, Class<T> cls) {
        return (T) com.alibaba.fastjson.e.d.a(this.map.get(str), cls);
    }

    public Short getShort(String str) {
        return com.alibaba.fastjson.e.d.d(get(str));
    }

    public short getShortValue(String str) {
        Short d2 = com.alibaba.fastjson.e.d.d(get(str));
        if (d2 == null) {
            return (short) 0;
        }
        return d2.shortValue();
    }

    public String getString(String str) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String str = null;
        if (parameterTypes.length == 1) {
            if (method.getName().equals("equals")) {
                return Boolean.valueOf(equals(objArr[0]));
            }
            if (method.getReturnType() == Void.TYPE) {
                JSONField jSONField = (JSONField) method.getAnnotation(JSONField.class);
                String name = (jSONField == null || jSONField.name().length() == 0) ? null : jSONField.name();
                if (name == null) {
                    String name2 = method.getName();
                    if (name2.startsWith("set")) {
                        String substring = name2.substring(3);
                        if (substring.length() != 0) {
                            name = Character.toLowerCase(substring.charAt(0)) + substring.substring(1);
                        } else {
                            throw new f("illegal setter");
                        }
                    } else {
                        throw new f("illegal setter");
                    }
                }
                this.map.put(name, objArr[0]);
                return null;
            }
            throw new f("illegal setter");
        }
        if (parameterTypes.length == 0) {
            if (method.getReturnType() != Void.TYPE) {
                JSONField jSONField2 = (JSONField) method.getAnnotation(JSONField.class);
                if (jSONField2 != null && jSONField2.name().length() != 0) {
                    str = jSONField2.name();
                }
                if (str == null) {
                    String name3 = method.getName();
                    if (name3.startsWith("get")) {
                        String substring2 = name3.substring(3);
                        if (substring2.length() != 0) {
                            str = Character.toLowerCase(substring2.charAt(0)) + substring2.substring(1);
                        } else {
                            throw new f("illegal getter");
                        }
                    } else if (name3.startsWith("is")) {
                        String substring3 = name3.substring(2);
                        if (substring3.length() != 0) {
                            str = Character.toLowerCase(substring3.charAt(0)) + substring3.substring(1);
                        } else {
                            throw new f("illegal getter");
                        }
                    } else {
                        if (name3.startsWith("hashCode")) {
                            return Integer.valueOf(hashCode());
                        }
                        if (name3.startsWith("toString")) {
                            return toString();
                        }
                        throw new f("illegal getter");
                    }
                }
                return com.alibaba.fastjson.e.d.a(this.map.get(str), method.getGenericReturnType(), n.f3204f);
            }
            throw new f("illegal getter");
        }
        throw new UnsupportedOperationException(method.toGenericString());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.map.values();
    }

    public JSONObject(Map<String, Object> map) {
        this.map = map;
    }

    @Override // java.util.Map
    public Object put(String str, Object obj) {
        return this.map.put(str, obj);
    }

    public <T> T getObject(String str, Class<T> cls, e... eVarArr) {
        Object obj = this.map.get(str);
        int i2 = JSON.DEFAULT_PARSER_FEATURE;
        for (e eVar : eVarArr) {
            i2 |= eVar.mask;
        }
        return (T) com.alibaba.fastjson.e.d.a(obj, cls, n.f3204f, i2);
    }

    public JSONObject(boolean z) {
        this(16, z);
    }

    public JSONObject(int i2) {
        this(i2, false);
    }

    public JSONObject(int i2, boolean z) {
        if (z) {
            this.map = new LinkedHashMap(i2);
        } else {
            this.map = new HashMap(i2);
        }
    }
}
