package com.alibaba.fastjson.e;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.a.h;
import com.alibaba.fastjson.a.n;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.f;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: TypeUtils.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f3296a = false;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f3297b = true;

    /* renamed from: c, reason: collision with root package name */
    private static volatile Class f3298c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile boolean f3299d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile boolean f3300e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile Constructor f3301f;

    /* renamed from: g, reason: collision with root package name */
    private static volatile Method f3302g;

    /* renamed from: h, reason: collision with root package name */
    private static volatile Method f3303h;

    /* renamed from: i, reason: collision with root package name */
    private static volatile Method f3304i;

    /* renamed from: j, reason: collision with root package name */
    private static volatile boolean f3305j;

    /* renamed from: k, reason: collision with root package name */
    private static volatile Map<Class, String[]> f3306k;

    /* renamed from: l, reason: collision with root package name */
    private static volatile boolean f3307l;
    private static final ConcurrentMap<String, Class<?>> m = new ConcurrentHashMap(36, 0.75f, 1);

    static {
        m.put("byte", Byte.TYPE);
        m.put("short", Short.TYPE);
        m.put("int", Integer.TYPE);
        m.put("long", Long.TYPE);
        m.put("float", Float.TYPE);
        m.put("double", Double.TYPE);
        m.put("boolean", Boolean.TYPE);
        m.put("char", Character.TYPE);
        m.put("[byte", byte[].class);
        m.put("[short", short[].class);
        m.put("[int", int[].class);
        m.put("[long", long[].class);
        m.put("[float", float[].class);
        m.put("[double", double[].class);
        m.put("[boolean", boolean[].class);
        m.put("[char", char[].class);
        m.put("[B", byte[].class);
        m.put("[S", short[].class);
        m.put("[I", int[].class);
        m.put("[J", long[].class);
        m.put("[F", float[].class);
        m.put("[D", double[].class);
        m.put("[C", char[].class);
        m.put("[Z", boolean[].class);
        m.put("java.util.HashMap", HashMap.class);
        m.put("java.util.TreeMap", TreeMap.class);
        m.put("java.util.Date", Date.class);
        m.put("com.alibaba.fastjson.JSONObject", JSONObject.class);
        m.put("java.util.concurrent.ConcurrentHashMap", ConcurrentHashMap.class);
        m.put("java.text.SimpleDateFormat", SimpleDateFormat.class);
        m.put("java.lang.StackTraceElement", StackTraceElement.class);
        m.put("java.lang.RuntimeException", RuntimeException.class);
    }

    public static boolean a(Class cls) {
        if (f3298c == null && !f3299d) {
            try {
                f3298c = Class.forName("kotlin.Metadata");
            } catch (Throwable unused) {
                f3299d = true;
            }
        }
        if (f3298c == null) {
            return false;
        }
        return cls.isAnnotationPresent(f3298c);
    }

    public static String[] b(Class cls) {
        if (f3301f == null && !f3300e) {
            try {
                Class<?> cls2 = Class.forName("kotlin.reflect.jvm.internal.KClassImpl");
                f3301f = cls2.getConstructor(Class.class);
                f3302g = cls2.getMethod("getConstructors", new Class[0]);
                f3303h = Class.forName("kotlin.z.f").getMethod("getParameters", new Class[0]);
                f3304i = Class.forName("kotlin.z.g").getMethod("getName", new Class[0]);
            } catch (Throwable unused) {
                f3300e = true;
            }
        }
        if (f3301f == null || f3305j) {
            return null;
        }
        try {
            Iterator it = ((Iterable) f3302g.invoke(f3301f.newInstance(cls), new Object[0])).iterator();
            Object obj = null;
            while (it.hasNext()) {
                Object next = it.next();
                List list = (List) f3303h.invoke(next, new Object[0]);
                if (obj == null || list.size() != 0) {
                    obj = next;
                }
                it.hasNext();
            }
            List list2 = (List) f3303h.invoke(obj, new Object[0]);
            String[] strArr = new String[list2.size()];
            for (int i2 = 0; i2 < list2.size(); i2++) {
                strArr[i2] = (String) f3304i.invoke(list2.get(i2), new Object[0]);
            }
            return strArr;
        } catch (Throwable unused2) {
            f3305j = true;
            return null;
        }
    }

    public static final Character c(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Character) {
            return (Character) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            if (str.length() == 1) {
                return Character.valueOf(str.charAt(0));
            }
            throw new f("can not cast to byte, value : " + obj);
        }
        throw new f("can not cast to byte, value : " + obj);
    }

    public static final Short d(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            return Short.valueOf(Short.parseShort(str));
        }
        throw new f("can not cast to short, value : " + obj);
    }

    public static final BigDecimal e(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        if (obj instanceof BigInteger) {
            return new BigDecimal((BigInteger) obj);
        }
        String obj2 = obj.toString();
        if (obj2.length() == 0 || "null".equals(obj2)) {
            return null;
        }
        return new BigDecimal(obj2);
    }

    public static final BigInteger f(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigInteger) {
            return (BigInteger) obj;
        }
        if (!(obj instanceof Float) && !(obj instanceof Double)) {
            String obj2 = obj.toString();
            if (obj2.length() == 0 || "null".equals(obj2)) {
                return null;
            }
            return new BigInteger(obj2);
        }
        return BigInteger.valueOf(((Number) obj).longValue());
    }

    public static final Float g(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (obj instanceof String) {
            String obj2 = obj.toString();
            if (obj2.length() == 0 || "null".equals(obj2)) {
                return null;
            }
            return Float.valueOf(Float.parseFloat(obj2));
        }
        throw new f("can not cast to float, value : " + obj);
    }

    public static final Double h(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            String obj2 = obj.toString();
            if (obj2.length() == 0 || "null".equals(obj2)) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(obj2));
        }
        throw new f("can not cast to double, value : " + obj);
    }

    public static final Date i(Object obj) {
        String str;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Calendar) {
            return ((Calendar) obj).getTime();
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        long longValue = obj instanceof Number ? ((Number) obj).longValue() : -1L;
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.indexOf(45) != -1) {
                if (str2.length() == JSON.DEFFAULT_DATE_FORMAT.length()) {
                    str = JSON.DEFFAULT_DATE_FORMAT;
                } else if (str2.length() == 10) {
                    str = "yyyy-MM-dd";
                } else if (str2.length() == 19) {
                    str = "yyyy-MM-dd HH:mm:ss";
                } else {
                    str = (str2.length() == 29 && str2.charAt(26) == ':' && str2.charAt(28) == '0') ? "yyyy-MM-dd'T'HH:mm:ss.SSSXXX" : "yyyy-MM-dd HH:mm:ss.SSS";
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, JSON.defaultLocale);
                simpleDateFormat.setTimeZone(JSON.defaultTimeZone);
                try {
                    return simpleDateFormat.parse(str2);
                } catch (ParseException unused) {
                    throw new f("can not cast to Date, value : " + str2);
                }
            }
            if (str2.length() == 0 || "null".equals(str2)) {
                return null;
            }
            longValue = Long.parseLong(str2);
        }
        if (longValue >= 0) {
            return new Date(longValue);
        }
        throw new f("can not cast to Date, value : " + obj);
    }

    public static final Long j(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            try {
                return Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                com.alibaba.fastjson.a.f fVar = new com.alibaba.fastjson.a.f(str);
                Calendar calendar = fVar.b(false) ? fVar.o : null;
                fVar.b();
                if (calendar != null) {
                    return Long.valueOf(calendar.getTimeInMillis());
                }
            }
        }
        throw new f("can not cast to long, value : " + obj);
    }

    public static final Integer k(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(str));
        }
        throw new f("can not cast to int, value : " + obj);
    }

    public static final byte[] l(Object obj) {
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            return com.alibaba.fastjson.a.f.a(str, 0, str.length());
        }
        throw new f("can not cast to int, value : " + obj);
    }

    public static final Boolean m(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof Number) {
            return Boolean.valueOf(((Number) obj).intValue() == 1);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            if (!"true".equalsIgnoreCase(str) && !"1".equals(str)) {
                if ("false".equalsIgnoreCase(str) || ZimPlatform.REASON_0.equals(str)) {
                    return Boolean.FALSE;
                }
            } else {
                return Boolean.TRUE;
            }
        }
        throw new f("can not cast to int, value : " + obj);
    }

    private static boolean a(Class cls, String str) {
        String[] strArr;
        if (f3306k == null && !f3307l) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put(Class.forName("kotlin.y.c"), new String[]{"getEndInclusive", "isEmpty"});
                hashMap.put(Class.forName("kotlin.y.j"), new String[]{"getEndInclusive", "isEmpty"});
                hashMap.put(Class.forName("kotlin.y.m"), new String[]{"getEndInclusive", "isEmpty"});
                hashMap.put(Class.forName("kotlin.y.e"), new String[]{"getEndInclusive", "isEmpty"});
                hashMap.put(Class.forName("kotlin.y.d"), new String[]{"getEndInclusive", "isEmpty"});
                f3306k = hashMap;
            } catch (Throwable unused) {
                f3307l = true;
            }
        }
        return (f3306k == null || (strArr = f3306k.get(cls)) == null || Arrays.binarySearch(strArr, str) < 0) ? false : true;
    }

    public static Type d(Type type) {
        Type type2;
        if (type instanceof ParameterizedType) {
            type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) type2).getUpperBounds();
                if (upperBounds.length == 1) {
                    type2 = upperBounds[0];
                }
            }
        } else {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (!cls.getName().startsWith("java.")) {
                    type2 = d(cls.getGenericSuperclass());
                }
            }
            type2 = null;
        }
        return type2 == null ? Object.class : type2;
    }

    public static Class<?> c(Type type) {
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return c(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            return (Class) ((TypeVariable) type).getBounds()[0];
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return c(upperBounds[0]);
            }
            return Object.class;
        }
        return Object.class;
    }

    public static Object c(Class<?> cls) {
        if (cls == Byte.TYPE) {
            return (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (short) 0;
        }
        if (cls == Integer.TYPE) {
            return 0;
        }
        if (cls == Long.TYPE) {
            return 0L;
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        return cls == Character.TYPE ? '0' : null;
    }

    public static final String a(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static final <T> T a(Object obj, Class<T> cls) {
        return (T) a(obj, (Class) cls, n.f3204f);
    }

    public static final <T> T a(Object obj, Class<T> cls, n nVar) {
        return (T) a(obj, cls, nVar, 0);
    }

    public static final Byte b(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
            return Byte.valueOf(Byte.parseByte(str));
        }
        throw new f("can not cast to byte, value : " + obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T a(Object obj, Class<T> cls, n nVar, int i2) {
        Object obj2;
        if (obj == 0) {
            return null;
        }
        if (cls != null) {
            if (cls == obj.getClass()) {
                return obj;
            }
            if (obj instanceof Map) {
                if (cls == Map.class) {
                    return obj;
                }
                Map map = (Map) obj;
                return (cls != Object.class || map.containsKey(JSON.DEFAULT_TYPE_KEY)) ? (T) a((Map<String, Object>) map, (Class) cls, nVar, i2) : obj;
            }
            int i3 = 0;
            if (cls.isArray()) {
                if (obj instanceof Collection) {
                    Collection collection = (Collection) obj;
                    T t = (T) Array.newInstance(cls.getComponentType(), collection.size());
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        Array.set(t, i3, a(it.next(), (Class) cls.getComponentType(), nVar));
                        i3++;
                    }
                    return t;
                }
                if (cls == byte[].class) {
                    return (T) l(obj);
                }
            }
            if (cls.isAssignableFrom(obj.getClass())) {
                return obj;
            }
            if (cls != Boolean.TYPE && cls != Boolean.class) {
                if (cls != Byte.TYPE && cls != Byte.class) {
                    if ((cls == Character.TYPE || cls == Character.class) && (obj instanceof String)) {
                        String str = (String) obj;
                        if (str.length() == 1) {
                            return (T) Character.valueOf(str.charAt(0));
                        }
                    }
                    if (cls != Short.TYPE && cls != Short.class) {
                        if (cls != Integer.TYPE && cls != Integer.class) {
                            if (cls != Long.TYPE && cls != Long.class) {
                                if (cls != Float.TYPE && cls != Float.class) {
                                    if (cls != Double.TYPE && cls != Double.class) {
                                        if (cls == String.class) {
                                            return (T) a(obj);
                                        }
                                        if (cls == BigDecimal.class) {
                                            return (T) e(obj);
                                        }
                                        if (cls == BigInteger.class) {
                                            return (T) f(obj);
                                        }
                                        if (cls == Date.class) {
                                            return (T) i(obj);
                                        }
                                        if (cls.isEnum()) {
                                            return (T) b(obj, cls, nVar);
                                        }
                                        if (Calendar.class.isAssignableFrom(cls)) {
                                            Date i4 = i(obj);
                                            if (cls == Calendar.class) {
                                                obj2 = (T) Calendar.getInstance(JSON.defaultTimeZone, JSON.defaultLocale);
                                            } else {
                                                try {
                                                    obj2 = (T) ((Calendar) cls.newInstance());
                                                } catch (Exception e2) {
                                                    throw new f("can not cast to : " + cls.getName(), e2);
                                                }
                                            }
                                            ((Calendar) obj2).setTime(i4);
                                            return (T) obj2;
                                        }
                                        if (obj instanceof String) {
                                            String str2 = (String) obj;
                                            if (str2.length() == 0 || "null".equals(str2)) {
                                                return null;
                                            }
                                            if (cls == Currency.class) {
                                                return (T) Currency.getInstance(str2);
                                            }
                                        }
                                        throw new f("can not cast to : " + cls.getName());
                                    }
                                    return (T) h(obj);
                                }
                                return (T) g(obj);
                            }
                            return (T) j(obj);
                        }
                        return (T) k(obj);
                    }
                    return (T) d(obj);
                }
                return (T) b(obj);
            }
            return (T) m(obj);
        }
        throw new IllegalArgumentException("clazz is null");
    }

    public static final <T> T b(Object obj, Class<T> cls, n nVar) {
        try {
            if (obj instanceof String) {
                String str = (String) obj;
                if (str.length() == 0) {
                    return null;
                }
                return (T) Enum.valueOf(cls, str);
            }
            if (obj instanceof Number) {
                int intValue = ((Number) obj).intValue();
                T[] enumConstants = cls.getEnumConstants();
                if (intValue < enumConstants.length) {
                    return enumConstants[intValue];
                }
            }
            throw new f("can not cast to : " + cls.getName());
        } catch (Exception e2) {
            throw new f("can not cast to : " + cls.getName(), e2);
        }
    }

    public static long c(String str) {
        long j2 = -3750763034362895579L;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt != '_' && charAt != '-') {
                if (charAt >= 'A' && charAt <= 'Z') {
                    charAt = (char) (charAt + ' ');
                }
                j2 = (j2 ^ charAt) * 1099511628211L;
            }
        }
        return j2;
    }

    public static Type b(Type type) {
        return type instanceof Class ? b(((Class) type).getGenericSuperclass()) : type;
    }

    public static String b(String str) {
        if (str == null || str.length() == 0 || (str.length() > 1 && Character.isUpperCase(str.charAt(1)) && Character.isUpperCase(str.charAt(0)))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }

    private static Field b(Class<?> cls, String str, Field[] fieldArr, Map<Class<?>, Field[]> map) {
        char charAt;
        char charAt2;
        for (Field field : fieldArr) {
            String name = field.getName();
            if (str.equals(name)) {
                return field;
            }
            if (str.length() > 2 && (charAt = str.charAt(0)) >= 'a' && charAt <= 'z' && (charAt2 = str.charAt(1)) >= 'A' && charAt2 <= 'Z' && str.equalsIgnoreCase(name)) {
                return field;
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass == null || superclass == Object.class) {
            return null;
        }
        Field[] fieldArr2 = map != null ? map.get(superclass) : null;
        if (fieldArr2 == null) {
            fieldArr2 = superclass.getDeclaredFields();
            if (map != null) {
                map.put(superclass, fieldArr2);
            }
        }
        return a(superclass, str, fieldArr2, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T a(Object obj, Type type, n nVar) {
        if (obj == 0) {
            return null;
        }
        if (type instanceof Class) {
            return (T) a(obj, (Class) type, nVar);
        }
        if (type instanceof ParameterizedType) {
            return (T) a(obj, (ParameterizedType) type, nVar);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
        }
        if (type instanceof TypeVariable) {
            return obj;
        }
        throw new f("can not cast to : " + type);
    }

    /* JADX WARN: Type inference failed for: r7v8, types: [T, java.util.Map, java.util.HashMap] */
    public static final <T> T a(Object obj, ParameterizedType parameterizedType, n nVar) {
        T t;
        Type rawType = parameterizedType.getRawType();
        if (rawType == Set.class || rawType == HashSet.class || rawType == TreeSet.class || rawType == List.class || rawType == ArrayList.class) {
            Type type = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                if (rawType != Set.class && rawType != HashSet.class) {
                    if (rawType == TreeSet.class) {
                        t = (T) new TreeSet();
                    } else {
                        t = (T) new ArrayList();
                    }
                } else {
                    t = (T) new HashSet();
                }
                Iterator<T> it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    ((Collection) t).add(a(it.next(), type, nVar));
                }
                return t;
            }
        }
        if (rawType == Map.class || rawType == HashMap.class) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            Type type3 = parameterizedType.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                ?? r7 = (T) new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    r7.put(a(entry.getKey(), type2, nVar), a(entry.getValue(), type3, nVar));
                }
                return r7;
            }
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0 || "null".equals(str)) {
                return null;
            }
        }
        if (parameterizedType.getActualTypeArguments().length == 1 && (parameterizedType.getActualTypeArguments()[0] instanceof WildcardType)) {
            return (T) a(obj, rawType, nVar);
        }
        throw new f("can not cast to : " + parameterizedType);
    }

    public static final <T> T a(Map<String, Object> map, Class<T> cls, n nVar, int i2) {
        JSONObject jSONObject;
        int i3 = 0;
        try {
            if (cls == StackTraceElement.class) {
                String str = (String) map.get("className");
                String str2 = (String) map.get("methodName");
                String str3 = (String) map.get("fileName");
                Number number = (Number) map.get("lineNumber");
                if (number != null) {
                    i3 = number.intValue();
                }
                return (T) new StackTraceElement(str, str2, str3, i3);
            }
            Object obj = map.get(JSON.DEFAULT_TYPE_KEY);
            if (obj instanceof String) {
                String str4 = (String) obj;
                if (nVar == null) {
                    nVar = n.f3204f;
                }
                Class<?> a2 = nVar.a(str4, (Class<?>) null, i2);
                if (a2 != null) {
                    if (!a2.equals(cls)) {
                        return (T) a(map, (Class) a2, nVar, i2);
                    }
                } else {
                    throw new ClassNotFoundException(str4 + " not found");
                }
            }
            if (cls.isInterface()) {
                if (map instanceof JSONObject) {
                    jSONObject = (JSONObject) map;
                } else {
                    jSONObject = new JSONObject(map);
                }
                if (nVar == null) {
                    nVar = n.a();
                }
                return nVar.a(cls) != null ? (T) JSON.parseObject(JSON.toJSONString(jSONObject), cls) : (T) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, jSONObject);
            }
            if (cls == String.class && (map instanceof JSONObject)) {
                return (T) map.toString();
            }
            if (nVar == null) {
                nVar = n.f3204f;
            }
            com.alibaba.fastjson.a.a.f a3 = nVar.a(cls);
            h hVar = a3 instanceof h ? (h) a3 : null;
            if (hVar != null) {
                return (T) hVar.a(map, nVar);
            }
            throw new f("can not get javaBeanDeserializer");
        } catch (Exception e2) {
            throw new f(e2.getMessage(), e2);
        }
    }

    public static Class<?> a(String str) {
        return m.get(str);
    }

    public static Class<?> a(String str, ClassLoader classLoader) {
        return a(str, classLoader, true);
    }

    public static Class<?> a(String str, ClassLoader classLoader, boolean z) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.length() < 256) {
            Class<?> cls = m.get(str);
            if (cls != null) {
                return cls;
            }
            if (str.charAt(0) == '[') {
                return Array.newInstance(a(str.substring(1), classLoader), 0).getClass();
            }
            if (str.startsWith("L") && str.endsWith(";")) {
                return a(str.substring(1, str.length() - 1), classLoader);
            }
            if (classLoader != null) {
                try {
                    cls = classLoader.loadClass(str);
                    if (z) {
                        m.put(str, cls);
                    }
                    return cls;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            try {
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                if (contextClassLoader != null && contextClassLoader != classLoader) {
                    Class<?> loadClass = contextClassLoader.loadClass(str);
                    if (z) {
                        try {
                            m.put(str, loadClass);
                        } catch (Exception e3) {
                            e = e3;
                            cls = loadClass;
                            e.printStackTrace();
                            cls = Class.forName(str);
                            m.put(str, cls);
                            return cls;
                        }
                    }
                    return loadClass;
                }
            } catch (Exception e4) {
                e = e4;
            }
            try {
                cls = Class.forName(str);
                m.put(str, cls);
                return cls;
            } catch (Exception e5) {
                e5.printStackTrace();
                return cls;
            }
        }
        throw new f("className too long. " + str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v68 java.lang.String, still in use, count: 2, list:
          (r0v68 java.lang.String) from 0x0305: IF  (r0v68 java.lang.String) == (null java.lang.String)  -> B:197:0x0307 A[HIDDEN]
          (r0v68 java.lang.String) from 0x030c: PHI (r0v64 java.lang.String) = (r0v63 java.lang.String), (r0v68 java.lang.String) binds: [B:195:0x030b, B:143:0x0305] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0167  */
    /* JADX WARN: Type inference failed for: r18v6, types: [java.lang.annotation.Annotation[][]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.alibaba.fastjson.e.a> a(java.lang.Class<?> r43, int r44, boolean r45, com.alibaba.fastjson.annotation.JSONType r46, java.util.Map<java.lang.String, java.lang.String> r47, boolean r48, boolean r49, boolean r50, com.alibaba.fastjson.h r51) {
        /*
            Method dump skipped, instructions count: 1497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.e.d.a(java.lang.Class, int, boolean, com.alibaba.fastjson.annotation.JSONType, java.util.Map, boolean, boolean, boolean, com.alibaba.fastjson.h):java.util.List");
    }

    public static JSONField a(Class<?> cls, Method method) {
        boolean z;
        JSONField jSONField;
        boolean z2;
        JSONField jSONField2;
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Method method2 : cls2.getMethods()) {
                if (method2.getName().equals(method.getName())) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    Class<?>[] parameterTypes2 = method.getParameterTypes();
                    if (parameterTypes.length != parameterTypes2.length) {
                        continue;
                    } else {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= parameterTypes.length) {
                                z2 = true;
                                break;
                            }
                            if (!parameterTypes[i2].equals(parameterTypes2[i2])) {
                                z2 = false;
                                break;
                            }
                            i2++;
                        }
                        if (z2 && (jSONField2 = (JSONField) method2.getAnnotation(JSONField.class)) != null) {
                            return jSONField2;
                        }
                    }
                }
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null && Modifier.isAbstract(superclass.getModifiers())) {
            Class<?>[] parameterTypes3 = method.getParameterTypes();
            for (Method method3 : superclass.getMethods()) {
                Class<?>[] parameterTypes4 = method3.getParameterTypes();
                if (parameterTypes4.length == parameterTypes3.length && method3.getName().equals(method.getName())) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= parameterTypes3.length) {
                            z = true;
                            break;
                        }
                        if (!parameterTypes4[i3].equals(parameterTypes3[i3])) {
                            z = false;
                            break;
                        }
                        i3++;
                    }
                    if (z && (jSONField = (JSONField) method3.getAnnotation(JSONField.class)) != null) {
                        return jSONField;
                    }
                }
            }
        }
        return null;
    }

    private static boolean a(Class<?> cls, JSONType jSONType, String str) {
        if (jSONType != null && jSONType.ignores() != null) {
            for (String str2 : jSONType.ignores()) {
                if (str.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        return (superclass == Object.class || superclass == null || !a(superclass, (JSONType) superclass.getAnnotation(JSONType.class), str)) ? false : true;
    }

    public static boolean a(Type type) {
        Type genericSuperclass;
        if (type instanceof ParameterizedType) {
            return true;
        }
        return (type instanceof Class) && (genericSuperclass = ((Class) type).getGenericSuperclass()) != Object.class && a(genericSuperclass);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(Class<?> cls, Member member, int i2) {
        if (member != 0 && f3297b) {
            Class<? super Object> superclass = cls.getSuperclass();
            if ((superclass == null || superclass == Object.class) && (member.getModifiers() & 1) != 0 && (i2 & 1) != 0) {
                return false;
            }
            try {
                ((AccessibleObject) member).setAccessible(true);
                return true;
            } catch (AccessControlException unused) {
                f3297b = false;
            }
        }
        return false;
    }

    public static Field a(Class<?> cls, String str, Field[] fieldArr, Map<Class<?>, Field[]> map) {
        Field b2 = b(cls, str, fieldArr, map);
        if (b2 == null) {
            b2 = b(cls, "_" + str, fieldArr, map);
        }
        if (b2 == null) {
            b2 = b(cls, "m_" + str, fieldArr, map);
        }
        if (b2 != null) {
            return b2;
        }
        return b(cls, "m" + str.substring(0, 1).toUpperCase() + str.substring(1), fieldArr, map);
    }

    public static boolean a(Type[] typeArr, TypeVariable[] typeVariableArr, Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < typeArr.length; i2++) {
            Type type = typeArr[i2];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (a(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i2] = new c(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType());
                    z = true;
                }
            } else if (type instanceof TypeVariable) {
                boolean z2 = z;
                for (int i3 = 0; i3 < typeVariableArr.length; i3++) {
                    if (type.equals(typeVariableArr[i3])) {
                        typeArr[i2] = typeArr2[i3];
                        z2 = true;
                    }
                }
                z = z2;
            }
        }
        return z;
    }
}
