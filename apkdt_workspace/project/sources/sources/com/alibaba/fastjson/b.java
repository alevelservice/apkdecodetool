package com.alibaba.fastjson;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: JSONArray.java */
/* loaded from: classes.dex */
public class b extends JSON implements Serializable, Cloneable, List<Object>, RandomAccess {
    protected transient Type componentType;
    private final List<Object> list;
    protected transient Object relatedArray;

    public b() {
        this.list = new ArrayList(10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        return this.list.add(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends Object> collection) {
        return this.list.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.list.clear();
    }

    public Object clone() {
        return new b(new ArrayList(this.list));
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.list.equals(obj);
    }

    @Override // java.util.List
    public Object get(int i2) {
        return this.list.get(i2);
    }

    public BigDecimal getBigDecimal(int i2) {
        return com.alibaba.fastjson.e.d.e(get(i2));
    }

    public BigInteger getBigInteger(int i2) {
        return com.alibaba.fastjson.e.d.f(get(i2));
    }

    public Boolean getBoolean(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.e.d.m(obj);
    }

    public boolean getBooleanValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return false;
        }
        return com.alibaba.fastjson.e.d.m(obj).booleanValue();
    }

    public Byte getByte(int i2) {
        return com.alibaba.fastjson.e.d.b(get(i2));
    }

    public byte getByteValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return (byte) 0;
        }
        return com.alibaba.fastjson.e.d.b(obj).byteValue();
    }

    public Type getComponentType() {
        return this.componentType;
    }

    public Date getDate(int i2) {
        return com.alibaba.fastjson.e.d.i(get(i2));
    }

    public Double getDouble(int i2) {
        return com.alibaba.fastjson.e.d.h(get(i2));
    }

    public double getDoubleValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return 0.0d;
        }
        return com.alibaba.fastjson.e.d.h(obj).doubleValue();
    }

    public Float getFloat(int i2) {
        return com.alibaba.fastjson.e.d.g(get(i2));
    }

    public float getFloatValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return 0.0f;
        }
        return com.alibaba.fastjson.e.d.g(obj).floatValue();
    }

    public int getIntValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return 0;
        }
        return com.alibaba.fastjson.e.d.k(obj).intValue();
    }

    public Integer getInteger(int i2) {
        return com.alibaba.fastjson.e.d.k(get(i2));
    }

    public b getJSONArray(int i2) {
        Object obj = this.list.get(i2);
        if (obj instanceof b) {
            return (b) obj;
        }
        return (b) JSON.toJSON(obj);
    }

    public JSONObject getJSONObject(int i2) {
        Object obj = this.list.get(i2);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        return (JSONObject) JSON.toJSON(obj);
    }

    public Long getLong(int i2) {
        return com.alibaba.fastjson.e.d.j(get(i2));
    }

    public long getLongValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return 0L;
        }
        return com.alibaba.fastjson.e.d.j(obj).longValue();
    }

    public <T> T getObject(int i2, Class<T> cls) {
        return (T) com.alibaba.fastjson.e.d.a(this.list.get(i2), cls);
    }

    public Object getRelatedArray() {
        return this.relatedArray;
    }

    public Short getShort(int i2) {
        return com.alibaba.fastjson.e.d.d(get(i2));
    }

    public short getShortValue(int i2) {
        Object obj = get(i2);
        if (obj == null) {
            return (short) 0;
        }
        return com.alibaba.fastjson.e.d.d(obj).shortValue();
    }

    public String getString(int i2) {
        return com.alibaba.fastjson.e.d.a(get(i2));
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<Object> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    @Override // java.util.List
    public Object set(int i2, Object obj) {
        return this.list.set(i2, obj);
    }

    public void setComponentType(Type type) {
        this.componentType = type;
    }

    public void setRelatedArray(Object obj) {
        this.relatedArray = obj;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.list.size();
    }

    @Override // java.util.List
    public List<Object> subList(int i2, int i3) {
        return this.list.subList(i2, i3);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.List
    public void add(int i2, Object obj) {
        this.list.add(i2, obj);
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection<? extends Object> collection) {
        return this.list.addAll(i2, collection);
    }

    @Override // java.util.List
    public ListIterator<Object> listIterator(int i2) {
        return this.list.listIterator(i2);
    }

    @Override // java.util.List
    public Object remove(int i2) {
        return this.list.remove(i2);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.list.toArray(tArr);
    }

    public b(List<Object> list) {
        this.list = list;
    }

    public b(int i2) {
        this.list = new ArrayList(i2);
    }
}
