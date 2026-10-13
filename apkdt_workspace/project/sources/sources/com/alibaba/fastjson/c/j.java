package com.alibaba.fastjson.c;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

/* compiled from: CollectionCodec.java */
/* loaded from: classes.dex */
public class j implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static final j f3243a = new j();

    private j() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        if (obj == null) {
            if ((c0Var.f3234g & b.WriteNullListAsEmpty.mask) != 0) {
                c0Var.write("[]");
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        Type d2 = (c0Var.f3234g & b.WriteClassName.mask) != 0 ? com.alibaba.fastjson.e.d.d(type) : null;
        Collection collection = (Collection) obj;
        z zVar = pVar.m;
        int i2 = 0;
        pVar.a(zVar, obj, obj2, 0);
        if ((c0Var.f3234g & b.WriteClassName.mask) != 0) {
            if (HashSet.class == collection.getClass()) {
                c0Var.a("Set");
            } else if (TreeSet.class == collection.getClass()) {
                c0Var.a("TreeSet");
            }
        }
        try {
            c0Var.write(91);
            for (Object obj3 : collection) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    c0Var.write(44);
                }
                if (obj3 == null) {
                    c0Var.i();
                } else {
                    Class<?> cls = obj3.getClass();
                    if (cls == Integer.class) {
                        c0Var.d(((Integer) obj3).intValue());
                    } else if (cls == Long.class) {
                        c0Var.h(((Long) obj3).longValue());
                        if ((c0Var.f3234g & b.WriteClassName.mask) != 0) {
                            c0Var.write(76);
                        }
                    } else {
                        pVar.f3254a.a(cls).a(pVar, obj3, Integer.valueOf(i3 - 1), d2);
                    }
                }
                i2 = i3;
            }
            c0Var.write(93);
        } finally {
            pVar.m = zVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [T, com.alibaba.fastjson.b, java.util.Collection] */
    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        Collection collection;
        Type type2;
        if (cVar.f3148i.a() == 8) {
            cVar.f3148i.b(16);
            return null;
        }
        if (type == com.alibaba.fastjson.b.class) {
            ?? r4 = (T) new com.alibaba.fastjson.b();
            cVar.b((Collection) r4);
            return r4;
        }
        Type type3 = type;
        while (!(type3 instanceof Class)) {
            if (type3 instanceof ParameterizedType) {
                type3 = ((ParameterizedType) type3).getRawType();
            } else {
                throw new com.alibaba.fastjson.f("TODO");
            }
        }
        Class cls = (Class) type3;
        if (cls != AbstractCollection.class && cls != Collection.class) {
            if (cls.isAssignableFrom(HashSet.class)) {
                collection = (T) new HashSet();
            } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
                collection = (T) new LinkedHashSet();
            } else if (cls.isAssignableFrom(TreeSet.class)) {
                collection = (T) new TreeSet();
            } else if (cls.isAssignableFrom(ArrayList.class)) {
                collection = (T) new ArrayList();
            } else if (cls.isAssignableFrom(EnumSet.class)) {
                if (type instanceof ParameterizedType) {
                    type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                } else {
                    type2 = Object.class;
                }
                collection = (T) EnumSet.noneOf((Class) type2);
            } else {
                try {
                    collection = (T) ((Collection) cls.newInstance());
                } catch (Exception unused) {
                    throw new com.alibaba.fastjson.f("create instane error, class " + cls.getName());
                }
            }
        } else {
            collection = (T) new ArrayList();
        }
        cVar.a(com.alibaba.fastjson.e.d.d(type), collection, obj);
        return (T) collection;
    }
}
