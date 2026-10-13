package com.alibaba.fastjson.c;

import java.lang.reflect.Type;
import java.math.BigDecimal;

/* compiled from: IntegerCodec.java */
/* loaded from: classes.dex */
public final class n implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static n f3253a = new n();

    private n() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        Number number = (Number) obj;
        if (number == null) {
            if ((c0Var.f3234g & b.WriteNullNumberAsZero.mask) != 0) {
                c0Var.write(48);
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        if (obj instanceof Long) {
            c0Var.h(number.longValue());
        } else {
            c0Var.d(number.intValue());
        }
        if ((c0Var.f3234g & b.WriteClassName.mask) != 0) {
            Class<?> cls = number.getClass();
            if (cls == Byte.class) {
                c0Var.write(66);
                return;
            }
            if (cls == Short.class) {
                c0Var.write(83);
                return;
            }
            if (cls == Long.class) {
                long longValue = number.longValue();
                if (longValue > 2147483647L || longValue < -2147483648L || type == Long.class) {
                    return;
                }
                c0Var.write(76);
            }
        }
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        T t;
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 8) {
            fVar.b(16);
            return null;
        }
        if (a2 == 2) {
            if (type != Long.TYPE && type != Long.class) {
                try {
                    t = (T) Integer.valueOf(fVar.k());
                } catch (NumberFormatException e2) {
                    throw new com.alibaba.fastjson.f("int value overflow, field : " + obj, e2);
                }
            } else {
                t = (T) Long.valueOf(fVar.t());
            }
            fVar.b(16);
            return t;
        }
        if (a2 == 3) {
            BigDecimal u = fVar.u();
            fVar.b(16);
            if (type != Long.TYPE && type != Long.class) {
                return (T) Integer.valueOf(u.intValue());
            }
            return (T) Long.valueOf(u.longValue());
        }
        T t2 = (T) cVar.p();
        try {
            if (type != Long.TYPE && type != Long.class) {
                t2 = (T) com.alibaba.fastjson.e.d.k(t2);
                return t2;
            }
            t2 = (T) com.alibaba.fastjson.e.d.j(t2);
            return t2;
        } catch (Exception e3) {
            throw new com.alibaba.fastjson.f("cast error, field : " + obj + ", value " + t2, e3);
        }
    }
}
