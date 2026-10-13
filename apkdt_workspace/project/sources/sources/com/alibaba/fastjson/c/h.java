package com.alibaba.fastjson.c;

import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: BigDecimalCodec.java */
/* loaded from: classes.dex */
public class h implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static final h f3241a = new h();

    private h() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        if (obj == null) {
            if ((c0Var.f3234g & b.WriteNullNumberAsZero.mask) != 0) {
                c0Var.write(48);
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        if (obj instanceof BigInteger) {
            c0Var.write(((BigInteger) obj).toString());
            return;
        }
        BigDecimal bigDecimal = (BigDecimal) obj;
        c0Var.write(bigDecimal.toString());
        if ((c0Var.f3234g & b.WriteClassName.mask) == 0 || type == BigDecimal.class || bigDecimal.scale() != 0) {
            return;
        }
        c0Var.write(46);
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [java.math.BigDecimal, T] */
    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 2) {
            if (type == BigInteger.class) {
                String d2 = fVar.d();
                fVar.b(16);
                return (T) new BigInteger(d2, 10);
            }
            T t = (T) fVar.u();
            fVar.b(16);
            return t;
        }
        if (a2 == 3) {
            ?? r4 = (T) fVar.u();
            fVar.b(16);
            return type == BigInteger.class ? (T) r4.toBigInteger() : r4;
        }
        Object p = cVar.p();
        if (p == null) {
            return null;
        }
        if (type == BigInteger.class) {
            return (T) com.alibaba.fastjson.e.d.f(p);
        }
        return (T) com.alibaba.fastjson.e.d.e(p);
    }
}
