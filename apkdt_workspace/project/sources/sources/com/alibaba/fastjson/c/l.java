package com.alibaba.fastjson.c;

import java.lang.reflect.Type;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnumSerializer.java */
/* loaded from: classes.dex */
public class l implements w {
    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        if ((c0Var.f3234g & b.WriteEnumUsingToString.mask) != 0) {
            String str = ((Enum) obj).toString();
            if ((c0Var.f3234g & b.UseSingleQuotes.mask) != 0) {
                c0Var.d(str);
                return;
            } else {
                c0Var.a(str, (char) 0, false);
                return;
            }
        }
        c0Var.d(((Enum) obj).ordinal());
    }
}
