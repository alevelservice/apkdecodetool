package com.alibaba.fastjson.c;

import java.lang.reflect.Type;
import java.text.DecimalFormat;

/* compiled from: NumberCodec.java */
/* loaded from: classes.dex */
public class v implements com.alibaba.fastjson.a.a.f, w {

    /* renamed from: b, reason: collision with root package name */
    public static final v f3274b = new v();

    /* renamed from: a, reason: collision with root package name */
    private DecimalFormat f3275a = null;

    private v() {
    }

    @Override // com.alibaba.fastjson.c.w
    public void a(p pVar, Object obj, Object obj2, Type type) {
        String format;
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
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            if (Float.isNaN(floatValue)) {
                c0Var.i();
                return;
            }
            if (Float.isInfinite(floatValue)) {
                c0Var.i();
                return;
            }
            String f2 = Float.toString(floatValue);
            if (f2.endsWith(".0")) {
                f2 = f2.substring(0, f2.length() - 2);
            }
            c0Var.write(f2);
            if ((c0Var.f3234g & b.WriteClassName.mask) != 0) {
                c0Var.write(70);
                return;
            }
            return;
        }
        double doubleValue = ((Double) obj).doubleValue();
        if (Double.isNaN(doubleValue)) {
            c0Var.i();
            return;
        }
        if (Double.isInfinite(doubleValue)) {
            c0Var.i();
            return;
        }
        DecimalFormat decimalFormat = this.f3275a;
        if (decimalFormat == null) {
            format = Double.toString(doubleValue);
            if (format.endsWith(".0")) {
                format = format.substring(0, format.length() - 2);
            }
        } else {
            format = decimalFormat.format(doubleValue);
        }
        c0Var.a(format);
        if ((c0Var.f3234g & b.WriteClassName.mask) != 0) {
            c0Var.write(68);
        }
    }

    /* JADX WARN: Type inference failed for: r5v18, types: [java.math.BigDecimal, T] */
    @Override // com.alibaba.fastjson.a.a.f
    public <T> T a(com.alibaba.fastjson.a.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.a.f fVar = cVar.f3148i;
        int a2 = fVar.a();
        if (a2 == 2) {
            if (type != Double.TYPE && type != Double.class) {
                if (type != Float.TYPE && type != Float.class) {
                    long t = fVar.t();
                    fVar.b(16);
                    if (type != Short.TYPE && type != Short.class) {
                        if (type == Byte.TYPE || type == Byte.class) {
                            return (T) Byte.valueOf((byte) t);
                        }
                        if (t >= -2147483648L && t <= 2147483647L) {
                            return (T) Integer.valueOf((int) t);
                        }
                        return (T) Long.valueOf(t);
                    }
                    return (T) Short.valueOf((short) t);
                }
                String d2 = fVar.d();
                fVar.b(16);
                return (T) Float.valueOf(Float.parseFloat(d2));
            }
            String d3 = fVar.d();
            fVar.b(16);
            return (T) Double.valueOf(Double.parseDouble(d3));
        }
        if (a2 == 3) {
            if (type != Double.TYPE && type != Double.class) {
                if (type != Float.TYPE && type != Float.class) {
                    ?? r5 = (T) fVar.u();
                    fVar.b(16);
                    if (type == Short.TYPE || type == Short.class) {
                        return (T) Short.valueOf(r5.shortValue());
                    }
                    return (type == Byte.TYPE || type == Byte.class) ? (T) Byte.valueOf(r5.byteValue()) : r5;
                }
                String d4 = fVar.d();
                fVar.b(16);
                return (T) Float.valueOf(Float.parseFloat(d4));
            }
            String d5 = fVar.d();
            fVar.b(16);
            return (T) Double.valueOf(Double.parseDouble(d5));
        }
        Object p = cVar.p();
        if (p == null) {
            return null;
        }
        if (type != Double.TYPE && type != Double.class) {
            if (type != Float.TYPE && type != Float.class) {
                if (type != Short.TYPE && type != Short.class) {
                    if (type != Byte.TYPE && type != Byte.class) {
                        return (T) com.alibaba.fastjson.e.d.e(p);
                    }
                    return (T) com.alibaba.fastjson.e.d.b(p);
                }
                return (T) com.alibaba.fastjson.e.d.d(p);
            }
            return (T) com.alibaba.fastjson.e.d.g(p);
        }
        return (T) com.alibaba.fastjson.e.d.h(p);
    }
}
