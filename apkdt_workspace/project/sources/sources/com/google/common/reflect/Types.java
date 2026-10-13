package com.google.common.reflect;

import com.google.common.collect.x;
import com.google.common.collect.z;
import e.i.c.a.f;
import e.i.c.a.h;
import e.i.c.a.j;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.security.AccessControlException;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class Types {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class TypeVariableInvocationHandler implements InvocationHandler {

        /* renamed from: f, reason: collision with root package name */
        private static final z<String, Method> f14214f;

        /* renamed from: e, reason: collision with root package name */
        private final e<?> f14215e;

        static {
            z.b builder = z.builder();
            for (Method method : e.class.getMethods()) {
                if (method.getDeclaringClass().equals(e.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    builder.a(method.getName(), method);
                }
            }
            f14214f = builder.a();
        }

        TypeVariableInvocationHandler(e<?> eVar) {
            this.f14215e = eVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Method method2 = f14214f.get(name);
            if (method2 != null) {
                try {
                    return method2.invoke(this.f14215e, objArr);
                } catch (InvocationTargetException e2) {
                    throw e2.getCause();
                }
            }
            throw new UnsupportedOperationException(name);
        }
    }

    /* loaded from: classes.dex */
    static class a implements e.i.c.a.d<Type, String> {
        a() {
        }

        @Override // e.i.c.a.d
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(Type type) {
            return c.CURRENT.typeName(type);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        b(Type type) {
            this.componentType = c.CURRENT.usedInGenericType(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return h.a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return Types.a(this.componentType) + "[]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static abstract class c {
        static final c CURRENT;
        public static final c JAVA6 = new a("JAVA6", 0);
        public static final c JAVA7 = new b("JAVA7", 1);
        public static final c JAVA8 = new C0108c("JAVA8", 2);
        public static final c JAVA9 = new d("JAVA9", 3);

        /* renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ c[] f14216e = {JAVA6, JAVA7, JAVA8, JAVA9};

        /* loaded from: classes.dex */
        enum a extends c {
            a(String str, int i2) {
                super(str, i2, null);
            }

            @Override // com.google.common.reflect.Types.c
            Type usedInGenericType(Type type) {
                j.a(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new b(cls.getComponentType()) : type;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Types.c
            public GenericArrayType newArrayType(Type type) {
                return new b(type);
            }
        }

        /* loaded from: classes.dex */
        enum b extends c {
            b(String str, int i2) {
                super(str, i2, null);
            }

            @Override // com.google.common.reflect.Types.c
            Type newArrayType(Type type) {
                if (type instanceof Class) {
                    return Types.a((Class<?>) type);
                }
                return new b(type);
            }

            @Override // com.google.common.reflect.Types.c
            Type usedInGenericType(Type type) {
                j.a(type);
                return type;
            }
        }

        /* renamed from: com.google.common.reflect.Types$c$c, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        enum C0108c extends c {
            C0108c(String str, int i2) {
                super(str, i2, null);
            }

            @Override // com.google.common.reflect.Types.c
            Type newArrayType(Type type) {
                return c.JAVA7.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.c
            String typeName(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException(e2);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3);
                }
            }

            @Override // com.google.common.reflect.Types.c
            Type usedInGenericType(Type type) {
                return c.JAVA7.usedInGenericType(type);
            }
        }

        /* loaded from: classes.dex */
        enum d extends c {
            d(String str, int i2) {
                super(str, i2, null);
            }

            @Override // com.google.common.reflect.Types.c
            boolean jdkTypeDuplicatesOwnerName() {
                return false;
            }

            @Override // com.google.common.reflect.Types.c
            Type newArrayType(Type type) {
                return c.JAVA8.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.c
            String typeName(Type type) {
                return c.JAVA8.typeName(type);
            }

            @Override // com.google.common.reflect.Types.c
            Type usedInGenericType(Type type) {
                return c.JAVA8.usedInGenericType(type);
            }
        }

        /* loaded from: classes.dex */
        static class e extends com.google.common.reflect.b<Map.Entry<String, int[][]>> {
            e() {
            }
        }

        /* loaded from: classes.dex */
        static class f extends com.google.common.reflect.b<int[]> {
            f() {
            }
        }

        static {
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new e().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = JAVA8;
                    return;
                } else {
                    CURRENT = JAVA9;
                    return;
                }
            }
            if (new f().capture() instanceof Class) {
                CURRENT = JAVA7;
            } else {
                CURRENT = JAVA6;
            }
        }

        private c(String str, int i2) {
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f14216e.clone();
        }

        boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        abstract Type newArrayType(Type type);

        String typeName(Type type) {
            return Types.a(type);
        }

        final x<Type> usedInGenericType(Type[] typeArr) {
            x.a builder = x.builder();
            for (Type type : typeArr) {
                builder.a((x.a) usedInGenericType(type));
            }
            return builder.a();
        }

        abstract Type usedInGenericType(Type type);

        /* synthetic */ c(String str, int i2, a aVar) {
            this(str, i2);
        }
    }

    /* loaded from: classes.dex */
    static final class d<X> {

        /* renamed from: a, reason: collision with root package name */
        static final boolean f14217a = !d.class.getTypeParameters()[0].equals(Types.a(d.class, "X", new Type[0]));

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e<D extends GenericDeclaration> {

        /* renamed from: a, reason: collision with root package name */
        private final D f14218a;

        /* renamed from: b, reason: collision with root package name */
        private final String f14219b;

        /* renamed from: c, reason: collision with root package name */
        private final x<Type> f14220c;

        e(D d2, String str, Type[] typeArr) {
            Types.b(typeArr, "bound for type variable");
            j.a(d2);
            this.f14218a = d2;
            j.a(str);
            this.f14219b = str;
            this.f14220c = x.copyOf(typeArr);
        }

        public D a() {
            return this.f14218a;
        }

        public String b() {
            return this.f14219b;
        }

        public boolean equals(Object obj) {
            if (d.f14217a) {
                if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof TypeVariableInvocationHandler)) {
                    return false;
                }
                e eVar = ((TypeVariableInvocationHandler) Proxy.getInvocationHandler(obj)).f14215e;
                return this.f14219b.equals(eVar.b()) && this.f14218a.equals(eVar.a()) && this.f14220c.equals(eVar.f14220c);
            }
            if (!(obj instanceof TypeVariable)) {
                return false;
            }
            TypeVariable typeVariable = (TypeVariable) obj;
            return this.f14219b.equals(typeVariable.getName()) && this.f14218a.equals(typeVariable.getGenericDeclaration());
        }

        public int hashCode() {
            return this.f14218a.hashCode() ^ this.f14219b.hashCode();
        }

        public String toString() {
            return this.f14219b;
        }
    }

    static {
        new a();
        f.b(", ").a("null");
    }

    private static <D extends GenericDeclaration> TypeVariable<D> b(D d2, String str, Type[] typeArr) {
        return (TypeVariable) com.google.common.reflect.a.a(TypeVariable.class, new TypeVariableInvocationHandler(new e(d2, str, typeArr)));
    }

    static <D extends GenericDeclaration> TypeVariable<D> a(D d2, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return b(d2, str, typeArr);
    }

    static String a(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    static Class<?> a(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                j.a(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }
}
