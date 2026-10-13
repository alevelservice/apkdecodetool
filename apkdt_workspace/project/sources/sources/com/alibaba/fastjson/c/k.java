package com.alibaba.fastjson.c;

import com.alibaba.fastjson.JSON;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* compiled from: DateCodec.java */
/* loaded from: classes.dex */
public final class k implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static final k f3244a = new k();

    private k() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        Date date;
        char[] charArray;
        c0 c0Var = pVar.f3255b;
        if (obj == null) {
            c0Var.i();
            return;
        }
        if ((c0Var.f3234g & b.WriteClassName.mask) != 0 && obj.getClass() != type) {
            if (obj.getClass() == Date.class) {
                c0Var.write("new Date(");
                c0Var.h(((Date) obj).getTime());
                c0Var.write(41);
                return;
            }
            c0Var.write(123);
            c0Var.a(JSON.DEFAULT_TYPE_KEY, false);
            pVar.b(obj.getClass().getName());
            c0Var.write(44);
            c0Var.a("val", false);
            c0Var.h(((Date) obj).getTime());
            c0Var.write(125);
            return;
        }
        if (obj instanceof Calendar) {
            date = ((Calendar) obj).getTime();
        } else {
            date = (Date) obj;
        }
        if ((c0Var.f3234g & b.WriteDateUseDateFormat.mask) != 0) {
            DateFormat a2 = pVar.a();
            if (a2 == null) {
                a2 = new SimpleDateFormat(JSON.DEFFAULT_DATE_FORMAT, pVar.o);
                a2.setTimeZone(pVar.n);
            }
            c0Var.c(a2.format(date));
            return;
        }
        long time = date.getTime();
        int i2 = c0Var.f3234g;
        if ((b.UseISO8601DateFormat.mask & i2) != 0) {
            if ((i2 & b.UseSingleQuotes.mask) != 0) {
                c0Var.write(39);
            } else {
                c0Var.write(34);
            }
            Calendar calendar = Calendar.getInstance(pVar.n, pVar.o);
            calendar.setTimeInMillis(time);
            int i3 = calendar.get(1);
            int i4 = calendar.get(2) + 1;
            int i5 = calendar.get(5);
            int i6 = calendar.get(11);
            int i7 = calendar.get(12);
            int i8 = calendar.get(13);
            int i9 = calendar.get(14);
            if (i9 != 0) {
                charArray = "0000-00-00T00:00:00.000".toCharArray();
                c0.a(i9, 23, charArray);
                c0.a(i8, 19, charArray);
                c0.a(i7, 16, charArray);
                c0.a(i6, 13, charArray);
                c0.a(i5, 10, charArray);
                c0.a(i4, 7, charArray);
                c0.a(i3, 4, charArray);
            } else if (i8 == 0 && i7 == 0 && i6 == 0) {
                charArray = "0000-00-00".toCharArray();
                c0.a(i5, 10, charArray);
                c0.a(i4, 7, charArray);
                c0.a(i3, 4, charArray);
            } else {
                charArray = "0000-00-00T00:00:00".toCharArray();
                c0.a(i8, 19, charArray);
                c0.a(i7, 16, charArray);
                c0.a(i6, 13, charArray);
                c0.a(i5, 10, charArray);
                c0.a(i4, 7, charArray);
                c0.a(i3, 4, charArray);
            }
            c0Var.write(charArray);
            if ((c0Var.f3234g & b.UseSingleQuotes.mask) != 0) {
                c0Var.write(39);
                return;
            } else {
                c0Var.write(34);
                return;
            }
        }
        c0Var.h(time);
    }

    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        return (T) a(cVar, type, obj, (String) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.util.Calendar, T] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.util.Calendar, T] */
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj, String str) {
        Object obj2;
        T t;
        Object obj3;
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 2) {
            Long valueOf = Long.valueOf(fVar.t());
            fVar.b(16);
            obj3 = valueOf;
        } else if (a2 == 4) {
            String m = fVar.m();
            fVar.b(16);
            obj3 = m;
            if ((fVar.f3163c & com.alibaba.fastjson.a.e.AllowISO8601DateFormat.mask) != 0) {
                com.alibaba.fastjson.a.f fVar2 = new com.alibaba.fastjson.a.f(m);
                Object obj4 = m;
                if (fVar2.b(true)) {
                    ?? r1 = (T) fVar2.o;
                    if (type == Calendar.class) {
                        fVar2.b();
                        return r1;
                    }
                    obj4 = r1.getTime();
                }
                fVar2.b();
                obj3 = obj4;
            }
        } else {
            if (a2 == 8) {
                fVar.e();
                obj2 = null;
                t = (T) a(cVar, type, obj, obj2, str);
                if (type != Calendar.class && !(t instanceof Calendar)) {
                    Date date = (Date) t;
                    if (date == null) {
                        return null;
                    }
                    ?? r12 = (T) Calendar.getInstance(fVar.m, fVar.n);
                    r12.setTime(date);
                    return r12;
                }
            }
            if (a2 == 12) {
                fVar.e();
                if (fVar.a() == 4) {
                    if (JSON.DEFAULT_TYPE_KEY.equals(fVar.m())) {
                        fVar.e();
                        cVar.c(17);
                        Class<?> a3 = cVar.f3145f.a(fVar.m(), (Class<?>) null, fVar.f3163c);
                        if (a3 != null) {
                            type = a3;
                        }
                        cVar.c(4);
                        cVar.c(16);
                    }
                    fVar.a(':');
                    int a4 = fVar.a();
                    if (a4 == 2) {
                        long t2 = fVar.t();
                        fVar.e();
                        Long valueOf2 = Long.valueOf(t2);
                        cVar.c(13);
                        obj3 = valueOf2;
                    } else {
                        throw new com.alibaba.fastjson.f("syntax error : " + com.alibaba.fastjson.a.g.a(a4));
                    }
                } else {
                    throw new com.alibaba.fastjson.f("syntax error");
                }
            } else if (cVar.n == 2) {
                cVar.n = 0;
                cVar.c(16);
                if (fVar.a() == 4) {
                    if ("val".equals(fVar.m())) {
                        fVar.e();
                        cVar.c(17);
                        Object p = cVar.p();
                        cVar.c(13);
                        obj3 = p;
                    } else {
                        throw new com.alibaba.fastjson.f("syntax error");
                    }
                } else {
                    throw new com.alibaba.fastjson.f("syntax error");
                }
            } else {
                obj3 = cVar.p();
            }
        }
        obj2 = obj3;
        t = (T) a(cVar, type, obj, obj2, str);
        return type != Calendar.class ? t : t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.Calendar, T] */
    protected <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj, Object obj2, String str) {
        DateFormat i2;
        if (obj2 == 0) {
            return null;
        }
        if (obj2 instanceof Date) {
            return obj2;
        }
        if (obj2 instanceof Number) {
            return (T) new Date(((Number) obj2).longValue());
        }
        if (obj2 instanceof String) {
            String str2 = (String) obj2;
            if (str2.length() == 0) {
                return null;
            }
            com.alibaba.fastjson.a.f fVar = new com.alibaba.fastjson.a.f(str2);
            try {
                if (fVar.b(false)) {
                    ?? r3 = (T) fVar.o;
                    return type == Calendar.class ? r3 : (T) r3.getTime();
                }
                fVar.b();
                if ("0000-00-00".equals(str2) || "0000-00-00T00:00:00".equalsIgnoreCase(str2) || "0001-01-01T00:00:00+08:00".equalsIgnoreCase(str2)) {
                    return null;
                }
                if (str != null) {
                    i2 = new SimpleDateFormat(str);
                } else {
                    i2 = cVar.i();
                }
                try {
                    return (T) i2.parse(str2);
                } catch (ParseException unused) {
                    return (T) new Date(Long.parseLong(str2));
                }
            } finally {
                fVar.b();
            }
        }
        throw new com.alibaba.fastjson.f("parse error");
    }
}
