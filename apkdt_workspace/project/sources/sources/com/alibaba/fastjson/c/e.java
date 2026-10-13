package com.alibaba.fastjson.c;

import com.alibaba.fastjson.JSON;
import java.lang.reflect.Array;
import java.lang.reflect.Type;

/* compiled from: ArrayCodec.java */
/* loaded from: classes.dex */
public final class e implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static final e f3236a = new e();

    private e() {
    }

    @Override // com.alibaba.fastjson.c.w
    public final void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        Object[] objArr = (Object[]) obj;
        if (obj == null) {
            if ((c0Var.f3234g & b.WriteNullListAsEmpty.mask) != 0) {
                c0Var.write("[]");
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        int length = objArr.length;
        int i2 = length - 1;
        if (i2 == -1) {
            c0Var.a("[]");
            return;
        }
        z zVar = pVar.m;
        int i3 = 0;
        pVar.a(zVar, obj, obj2, 0);
        try {
            c0Var.write(91);
            if ((c0Var.f3234g & b.PrettyFormat.mask) != 0) {
                pVar.c();
                pVar.e();
                while (i3 < length) {
                    if (i3 != 0) {
                        c0Var.write(44);
                        pVar.e();
                    }
                    pVar.b(objArr[i3]);
                    i3++;
                }
                pVar.d();
                pVar.e();
                c0Var.write(93);
                return;
            }
            Class<?> cls = null;
            w wVar = null;
            while (i3 < i2) {
                Object obj3 = objArr[i3];
                if (obj3 == null) {
                    c0Var.a("null,");
                } else {
                    if (pVar.f3265l != null && pVar.f3265l.containsKey(obj3)) {
                        pVar.a(obj3);
                    } else {
                        Class<?> cls2 = obj3.getClass();
                        if (cls2 == cls) {
                            wVar.a(pVar, obj3, null, null);
                        } else {
                            wVar = pVar.f3254a.a(cls2);
                            wVar.a(pVar, obj3, null, null);
                            cls = cls2;
                        }
                    }
                    c0Var.write(44);
                }
                i3++;
            }
            Object obj4 = objArr[i2];
            if (obj4 == null) {
                c0Var.a("null]");
            } else {
                if (pVar.f3265l != null && pVar.f3265l.containsKey(obj4)) {
                    pVar.a(obj4);
                } else {
                    pVar.a(obj4, Integer.valueOf(i2));
                }
                c0Var.write(93);
            }
        } finally {
            pVar.m = zVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 8) {
            fVar.b(16);
            return null;
        }
        if (type != char[].class) {
            if (a2 == 4) {
                T t = (T) fVar.l();
                fVar.b(16);
                return t;
            }
            Class<?> componentType = ((Class) type).getComponentType();
            com.alibaba.fastjson.b bVar = new com.alibaba.fastjson.b();
            cVar.a(componentType, bVar, obj);
            return (T) a(cVar, componentType, bVar);
        }
        if (a2 == 4) {
            String m = fVar.m();
            fVar.b(16);
            return (T) m.toCharArray();
        }
        if (a2 == 2) {
            Number g2 = fVar.g();
            fVar.b(16);
            return (T) g2.toString().toCharArray();
        }
        return (T) JSON.toJSONString(cVar.p()).toCharArray();
    }

    private <T> T a(com.alibaba.fastjson.a.c cVar, Class<?> cls, com.alibaba.fastjson.b bVar) {
        if (bVar == null) {
            return null;
        }
        int size = bVar.size();
        T t = (T) Array.newInstance(cls, size);
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = bVar.get(i2);
            if (obj == bVar) {
                Array.set(t, i2, t);
            } else {
                if (cls.isArray()) {
                    if (!cls.isInstance(obj)) {
                        obj = a(cVar, cls, (com.alibaba.fastjson.b) obj);
                    }
                } else {
                    obj = com.alibaba.fastjson.e.d.a(obj, (Class<Object>) cls, cVar.f3145f);
                }
                Array.set(t, i2, obj);
            }
        }
        bVar.setRelatedArray(t);
        bVar.setComponentType(cls);
        return t;
    }
}
