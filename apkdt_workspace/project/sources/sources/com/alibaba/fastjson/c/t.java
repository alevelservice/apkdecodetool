package com.alibaba.fastjson.c;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;

/* compiled from: MiscCodec.java */
/* loaded from: classes.dex */
public final class t implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: a, reason: collision with root package name */
    public static final t f3273a = new t();

    private t() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        if (obj == null) {
            if (type != Character.TYPE && type != Character.class) {
                if ((c0Var.f3234g & b.WriteNullListAsEmpty.mask) != 0 && Enumeration.class.isAssignableFrom(com.alibaba.fastjson.e.d.c(type))) {
                    c0Var.write("[]");
                    return;
                } else {
                    c0Var.i();
                    return;
                }
            }
            pVar.b("");
            return;
        }
        if (obj instanceof Pattern) {
            pVar.b(((Pattern) obj).pattern());
            return;
        }
        if (obj instanceof TimeZone) {
            pVar.b(((TimeZone) obj).getID());
            return;
        }
        if (obj instanceof Currency) {
            pVar.b(((Currency) obj).getCurrencyCode());
            return;
        }
        if (obj instanceof Class) {
            pVar.b(((Class) obj).getName());
            return;
        }
        if (obj instanceof Character) {
            Character ch = (Character) obj;
            if (ch.charValue() == 0) {
                pVar.b("\u0000");
                return;
            } else {
                pVar.b(ch.toString());
                return;
            }
        }
        int i2 = 0;
        if (obj instanceof SimpleDateFormat) {
            String pattern = ((SimpleDateFormat) obj).toPattern();
            if ((c0Var.f3234g & b.WriteClassName.mask) != 0 && obj.getClass() != type) {
                c0Var.write(123);
                c0Var.a(JSON.DEFAULT_TYPE_KEY, false);
                pVar.b(obj.getClass().getName());
                c0Var.write(44);
                c0Var.a("val", false);
                c0Var.c(pattern);
                c0Var.write(125);
                return;
            }
            c0Var.c(pattern);
            return;
        }
        if (obj instanceof com.alibaba.fastjson.g) {
            ((com.alibaba.fastjson.g) obj).writeJSONString(c0Var);
            return;
        }
        if (obj instanceof com.alibaba.fastjson.d) {
            c0Var.write(((com.alibaba.fastjson.d) obj).toJSONString());
            return;
        }
        if (obj instanceof o) {
            ((o) obj).a(pVar, obj2, type);
            return;
        }
        if (obj instanceof Enumeration) {
            Type type2 = null;
            if ((c0Var.f3234g & b.WriteClassName.mask) != 0 && (type instanceof ParameterizedType)) {
                type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            }
            Enumeration enumeration = (Enumeration) obj;
            z zVar = pVar.m;
            pVar.a(zVar, obj, obj2, 0);
            try {
                c0Var.write(91);
                while (enumeration.hasMoreElements()) {
                    Object nextElement = enumeration.nextElement();
                    int i3 = i2 + 1;
                    if (i2 != 0) {
                        c0Var.write(44);
                    }
                    if (nextElement == null) {
                        c0Var.i();
                    } else {
                        pVar.f3254a.a(nextElement.getClass()).a(pVar, nextElement, Integer.valueOf(i3 - 1), type2);
                    }
                    i2 = i3;
                }
                c0Var.write(93);
                return;
            } finally {
                pVar.m = zVar;
            }
        }
        pVar.b(obj.toString());
    }

    /* JADX WARN: Type inference failed for: r7v8, types: [T, java.text.SimpleDateFormat] */
    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        Object p;
        if (type == StackTraceElement.class) {
            return (T) a(cVar);
        }
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        if (cVar.n == 2) {
            cVar.n = 0;
            cVar.c(16);
            if (fVar.a() == 4) {
                if ("val".equals(fVar.m())) {
                    fVar.e();
                    cVar.c(17);
                    p = cVar.p();
                    cVar.c(13);
                } else {
                    throw new com.alibaba.fastjson.f("syntax error");
                }
            } else {
                throw new com.alibaba.fastjson.f("syntax error");
            }
        } else {
            p = cVar.p();
        }
        if (p == null) {
            return null;
        }
        if (p instanceof String) {
            String str = (String) p;
            if (str.length() == 0) {
                return null;
            }
            if (type == UUID.class) {
                return (T) UUID.fromString(str);
            }
            if (type == Class.class) {
                return (T) com.alibaba.fastjson.e.d.a(str, cVar.f3145f.f3207c);
            }
            if (type == Locale.class) {
                String[] split = str.split("_");
                if (split.length == 1) {
                    return (T) new Locale(split[0]);
                }
                if (split.length == 2) {
                    return (T) new Locale(split[0], split[1]);
                }
                return (T) new Locale(split[0], split[1], split[2]);
            }
            if (type == URI.class) {
                return (T) URI.create(str);
            }
            if (type == URL.class) {
                try {
                    return (T) new URL(str);
                } catch (MalformedURLException e2) {
                    throw new com.alibaba.fastjson.f("create url error", e2);
                }
            }
            if (type == Pattern.class) {
                return (T) Pattern.compile(str);
            }
            if (type == Charset.class) {
                return (T) Charset.forName(str);
            }
            if (type == Currency.class) {
                return (T) Currency.getInstance(str);
            }
            if (type == SimpleDateFormat.class) {
                ?? r7 = (T) new SimpleDateFormat(str, cVar.f3148i.n);
                r7.setTimeZone(cVar.f3148i.m);
                return r7;
            }
            if (type != Character.TYPE && type != Character.class) {
                if ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName())) {
                    try {
                        return (T) Class.forName("android.net.Uri").getMethod("parse", String.class).invoke(null, str);
                    } catch (Exception e3) {
                        throw new com.alibaba.fastjson.f("parse android.net.Uri error.", e3);
                    }
                }
                return (T) TimeZone.getTimeZone(str);
            }
            return (T) com.alibaba.fastjson.e.d.c((Object) str);
        }
        if (p instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) p;
            if (type == Currency.class) {
                String string = jSONObject.getString("currency");
                if (string != null) {
                    return (T) Currency.getInstance(string);
                }
                String string2 = jSONObject.getString("currencyCode");
                if (string2 != null) {
                    return (T) Currency.getInstance(string2);
                }
            }
            if (type == Map.Entry.class) {
                return (T) jSONObject.entrySet().iterator().next();
            }
        }
        throw new com.alibaba.fastjson.f("except string value");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0166, code lost:
    
        return (T) new java.lang.StackTraceElement(r5, r7, r8, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected <T> T a(com.alibaba.fastjson.a.c r17) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.c.t.a(com.alibaba.fastjson.a.c):java.lang.Object");
    }
}
