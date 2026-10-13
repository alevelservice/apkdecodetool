package com.alibaba.fastjson.c;

import java.lang.reflect.Type;
import java.util.IdentityHashMap;
import java.util.List;

/* compiled from: ListSerializer.java */
/* loaded from: classes.dex */
public final class r implements w {
    @Override // com.alibaba.fastjson.c.w
    public final void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        boolean z = (c0Var.f3234g & b.WriteClassName.mask) != 0;
        Type d2 = z ? com.alibaba.fastjson.e.d.d(type) : null;
        if (obj == null) {
            if ((c0Var.f3234g & b.WriteNullListAsEmpty.mask) != 0) {
                c0Var.write("[]");
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        List list = (List) obj;
        int size = list.size();
        if (size == 0) {
            c0Var.a("[]");
            return;
        }
        z zVar = pVar.m;
        if ((c0Var.f3234g & b.DisableCircularReferenceDetect.mask) == 0) {
            pVar.m = new z(zVar, obj, obj2, 0);
            if (pVar.f3265l == null) {
                pVar.f3265l = new IdentityHashMap<>();
            }
            pVar.f3265l.put(obj, pVar.m);
        }
        try {
            if ((c0Var.f3234g & b.PrettyFormat.mask) != 0) {
                c0Var.write(91);
                pVar.c();
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj3 = list.get(i2);
                    if (i2 != 0) {
                        c0Var.write(44);
                    }
                    pVar.e();
                    if (obj3 != null) {
                        if (pVar.f3265l != null && pVar.f3265l.containsKey(obj3)) {
                            pVar.a(obj3);
                        } else {
                            w a2 = pVar.f3254a.a(obj3.getClass());
                            pVar.m = new z(zVar, obj, obj2, 0);
                            a2.a(pVar, obj3, Integer.valueOf(i2), d2);
                        }
                    } else {
                        pVar.f3255b.i();
                    }
                }
                pVar.d();
                pVar.e();
                c0Var.write(93);
                return;
            }
            int i3 = c0Var.f3233f + 1;
            if (i3 > c0Var.f3232e.length) {
                if (c0Var.f3235h == null) {
                    c0Var.c(i3);
                } else {
                    c0Var.flush();
                    i3 = 1;
                }
            }
            c0Var.f3232e[c0Var.f3233f] = '[';
            c0Var.f3233f = i3;
            for (int i4 = 0; i4 < list.size(); i4++) {
                Object obj4 = list.get(i4);
                if (i4 != 0) {
                    int i5 = c0Var.f3233f + 1;
                    if (i5 > c0Var.f3232e.length) {
                        if (c0Var.f3235h == null) {
                            c0Var.c(i5);
                        } else {
                            c0Var.flush();
                            i5 = 1;
                        }
                    }
                    c0Var.f3232e[c0Var.f3233f] = ',';
                    c0Var.f3233f = i5;
                }
                if (obj4 == null) {
                    c0Var.a("null");
                } else {
                    Class<?> cls = obj4.getClass();
                    if (cls == Integer.class) {
                        c0Var.d(((Integer) obj4).intValue());
                    } else if (cls == Long.class) {
                        long longValue = ((Long) obj4).longValue();
                        if (z) {
                            c0Var.h(longValue);
                            c0Var.write(76);
                        } else {
                            c0Var.h(longValue);
                        }
                    } else if (cls == String.class) {
                        String str = (String) obj4;
                        if ((c0Var.f3234g & b.UseSingleQuotes.mask) != 0) {
                            c0Var.d(str);
                        } else {
                            c0Var.a(str, (char) 0, true);
                        }
                    } else {
                        if ((c0Var.f3234g & b.DisableCircularReferenceDetect.mask) == 0) {
                            pVar.m = new z(zVar, obj, obj2, 0);
                        }
                        if (pVar.f3265l != null && pVar.f3265l.containsKey(obj4)) {
                            pVar.a(obj4);
                        } else {
                            pVar.f3254a.a(obj4.getClass()).a(pVar, obj4, Integer.valueOf(i4), d2);
                        }
                    }
                }
            }
            int i6 = c0Var.f3233f + 1;
            if (i6 > c0Var.f3232e.length) {
                if (c0Var.f3235h == null) {
                    c0Var.c(i6);
                } else {
                    c0Var.flush();
                    i6 = 1;
                }
            }
            c0Var.f3232e[c0Var.f3233f] = ']';
            c0Var.f3233f = i6;
        } finally {
            pVar.m = zVar;
        }
    }
}
