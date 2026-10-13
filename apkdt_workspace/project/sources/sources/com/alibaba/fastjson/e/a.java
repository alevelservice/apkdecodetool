package com.alibaba.fastjson.e;

import com.alibaba.fastjson.annotation.JSONField;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* compiled from: FieldInfo.java */
/* loaded from: classes.dex */
public class a implements Comparable<a> {

    /* renamed from: e, reason: collision with root package name */
    public final String f3280e;

    /* renamed from: f, reason: collision with root package name */
    public final Method f3281f;

    /* renamed from: g, reason: collision with root package name */
    public final Field f3282g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f3283h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3284i;

    /* renamed from: j, reason: collision with root package name */
    private int f3285j;

    /* renamed from: k, reason: collision with root package name */
    public final Class<?> f3286k;

    /* renamed from: l, reason: collision with root package name */
    public final Type f3287l;
    public final Class<?> m;
    public final boolean n;
    private final JSONField o;
    private final JSONField p;
    public final boolean q;
    public final String r;
    public final long s;
    public final String[] t;
    public final int u;

    public a(String str, Class<?> cls, Class<?> cls2, Type type, Field field, int i2, int i3) {
        this.f3285j = 0;
        this.f3280e = str;
        this.m = cls;
        this.f3286k = cls2;
        this.f3287l = type;
        this.f3281f = null;
        this.f3282g = field;
        this.f3285j = i2;
        this.u = i3;
        boolean z = true;
        this.q = cls2.isEnum() && !com.alibaba.fastjson.d.class.isAssignableFrom(cls2);
        this.o = null;
        this.p = null;
        if (field != null) {
            int modifiers = field.getModifiers();
            if ((modifiers & 1) == 0 && this.f3281f != null) {
                z = false;
            }
            this.f3283h = z;
            this.f3284i = Modifier.isTransient(modifiers);
        } else {
            this.f3283h = false;
            this.f3284i = false;
        }
        this.n = false;
        long j2 = -3750763034362895579L;
        for (int i4 = 0; i4 < str.length(); i4++) {
            j2 = (j2 ^ str.charAt(i4)) * 1099511628211L;
        }
        this.s = j2;
        this.r = null;
        this.t = new String[0];
    }

    public static Type a(Class<?> cls, Type type, Type type2) {
        TypeVariable<Class<? super Object>>[] typeVariableArr;
        ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type a2 = a(cls, type, genericComponentType);
                return genericComponentType != a2 ? Array.newInstance(d.c(a2), 0).getClass() : type2;
            }
            if (!d.a(type)) {
                return type2;
            }
            if (type2 instanceof TypeVariable) {
                ParameterizedType parameterizedType2 = (ParameterizedType) d.b(type);
                Class<?> c2 = d.c((Type) parameterizedType2);
                TypeVariable typeVariable = (TypeVariable) type2;
                for (int i2 = 0; i2 < c2.getTypeParameters().length; i2++) {
                    if (c2.getTypeParameters()[i2].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i2];
                    }
                }
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                if (type instanceof ParameterizedType) {
                    parameterizedType = (ParameterizedType) type;
                    typeVariableArr = cls.getTypeParameters();
                } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                    parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                    typeVariableArr = cls.getSuperclass().getTypeParameters();
                } else {
                    typeVariableArr = null;
                    parameterizedType = null;
                }
                Type[] typeArr = null;
                boolean z = false;
                for (int i3 = 0; i3 < actualTypeArguments.length && parameterizedType != null; i3++) {
                    Type type3 = actualTypeArguments[i3];
                    if (type3 instanceof TypeVariable) {
                        TypeVariable typeVariable2 = (TypeVariable) type3;
                        Type[] typeArr2 = typeArr;
                        boolean z2 = z;
                        for (int i4 = 0; i4 < typeVariableArr.length; i4++) {
                            if (typeVariableArr[i4].getName().equals(typeVariable2.getName())) {
                                if (typeArr2 == null) {
                                    typeArr2 = parameterizedType.getActualTypeArguments();
                                }
                                actualTypeArguments[i3] = typeArr2[i4];
                                z2 = true;
                            }
                        }
                        z = z2;
                        typeArr = typeArr2;
                    }
                }
                if (z) {
                    return new c(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType());
                }
            }
        }
        return type2;
    }

    public boolean b(a aVar) {
        return aVar == this || compareTo(aVar) == 0;
    }

    public String toString() {
        return this.f3280e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0147, code lost:
    
        r7 = r16.m.getTypeParameters();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x014f, code lost:
    
        if (r11 >= r7.length) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0157, code lost:
    
        if (r3.equals(r7[r11]) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x015c, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0159, code lost:
    
        r10 = r12[r11];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(java.lang.String r17, java.lang.reflect.Method r18, java.lang.reflect.Field r19, java.lang.Class<?> r20, java.lang.reflect.Type r21, int r22, int r23, com.alibaba.fastjson.annotation.JSONField r24, com.alibaba.fastjson.annotation.JSONField r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.e.a.<init>(java.lang.String, java.lang.reflect.Method, java.lang.reflect.Field, java.lang.Class, java.lang.reflect.Type, int, int, com.alibaba.fastjson.annotation.JSONField, com.alibaba.fastjson.annotation.JSONField, boolean):void");
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        int i2 = this.f3285j;
        int i3 = aVar.f3285j;
        if (i2 < i3) {
            return -1;
        }
        if (i2 > i3) {
            return 1;
        }
        return this.f3280e.compareTo(aVar.f3280e);
    }

    public JSONField a() {
        JSONField jSONField = this.o;
        return jSONField != null ? jSONField : this.p;
    }

    public Object a(Object obj) {
        if (this.f3283h) {
            return this.f3282g.get(obj);
        }
        return this.f3281f.invoke(obj, new Object[0]);
    }

    public void a(Object obj, Object obj2) {
        Method method = this.f3281f;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.f3282g.set(obj, obj2);
        }
    }
}
