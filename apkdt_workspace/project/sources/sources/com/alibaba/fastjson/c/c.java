package com.alibaba.fastjson.c;

import java.lang.reflect.Type;

/* compiled from: StringCodec.java */
/* loaded from: classes.dex */
public class c implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static c f3227a = new c();

    private c() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        String str = (String) obj;
        c0 c0Var = pVar.f3255b;
        if (str == null) {
            c0Var.i();
        } else {
            c0Var.c(str);
        }
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        return (T) cVar.q();
    }
}
