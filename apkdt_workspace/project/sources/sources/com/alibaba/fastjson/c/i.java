package com.alibaba.fastjson.c;

import java.lang.reflect.Type;

/* compiled from: BooleanCodec.java */
/* loaded from: classes.dex */
public final class i implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static final i f3242a = new i();

    private i() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            if ((c0Var.f3234g & b.WriteNullBooleanAsFalse.mask) != 0) {
                c0Var.write("false");
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        if (bool.booleanValue()) {
            c0Var.write("true");
        } else {
            c0Var.write("false");
        }
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 6) {
            fVar.b(16);
            return (T) Boolean.TRUE;
        }
        if (a2 == 7) {
            fVar.b(16);
            return (T) Boolean.FALSE;
        }
        if (a2 == 2) {
            int k2 = fVar.k();
            fVar.b(16);
            if (k2 == 1) {
                return (T) Boolean.TRUE;
            }
            return (T) Boolean.FALSE;
        }
        Object p = cVar.p();
        if (p == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.e.d.m(p);
    }
}
