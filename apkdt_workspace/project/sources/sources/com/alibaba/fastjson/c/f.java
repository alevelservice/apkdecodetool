package com.alibaba.fastjson.c;

import java.lang.reflect.Type;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArraySerializer.java */
/* loaded from: classes.dex */
public final class f implements w {

    /* renamed from: a, reason: collision with root package name */
    private final Class<?> f3237a;

    /* renamed from: b, reason: collision with root package name */
    private final w f3238b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Class<?> cls, w wVar) {
        this.f3237a = cls;
        this.f3238b = wVar;
    }

    @Override // com.alibaba.fastjson.c.w
    public final void a(p pVar, Object obj, Object obj2, Type type) {
        c0 c0Var = pVar.f3255b;
        if (obj == null) {
            if ((c0Var.f3234g & b.WriteNullListAsEmpty.mask) != 0) {
                c0Var.write("[]");
                return;
            } else {
                c0Var.i();
                return;
            }
        }
        int i2 = 0;
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            c0Var.write(91);
            while (i2 < zArr.length) {
                if (i2 != 0) {
                    c0Var.write(44);
                }
                c0Var.a(zArr[i2]);
                i2++;
            }
            c0Var.write(93);
            return;
        }
        if (obj instanceof byte[]) {
            c0Var.a((byte[]) obj);
            return;
        }
        if (obj instanceof char[]) {
            c0Var.c(new String((char[]) obj));
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length = dArr.length - 1;
            if (length == -1) {
                c0Var.a("[]");
                return;
            }
            c0Var.write(91);
            while (i2 < length) {
                double d2 = dArr[i2];
                if (Double.isNaN(d2)) {
                    c0Var.i();
                } else {
                    c0Var.a(Double.toString(d2));
                }
                c0Var.write(44);
                i2++;
            }
            double d3 = dArr[length];
            if (Double.isNaN(d3)) {
                c0Var.i();
            } else {
                c0Var.a(Double.toString(d3));
            }
            c0Var.write(93);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int length2 = fArr.length - 1;
            if (length2 == -1) {
                c0Var.a("[]");
                return;
            }
            c0Var.write(91);
            while (i2 < length2) {
                float f2 = fArr[i2];
                if (Float.isNaN(f2)) {
                    c0Var.i();
                } else {
                    c0Var.a(Float.toString(f2));
                }
                c0Var.write(44);
                i2++;
            }
            float f3 = fArr[length2];
            if (Float.isNaN(f3)) {
                c0Var.i();
            } else {
                c0Var.a(Float.toString(f3));
            }
            c0Var.write(93);
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            c0Var.write(91);
            while (i2 < iArr.length) {
                if (i2 != 0) {
                    c0Var.write(44);
                }
                c0Var.d(iArr[i2]);
                i2++;
            }
            c0Var.write(93);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            c0Var.write(91);
            while (i2 < jArr.length) {
                if (i2 != 0) {
                    c0Var.write(44);
                }
                c0Var.h(jArr[i2]);
                i2++;
            }
            c0Var.write(93);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            c0Var.write(91);
            while (i2 < sArr.length) {
                if (i2 != 0) {
                    c0Var.write(44);
                }
                c0Var.d(sArr[i2]);
                i2++;
            }
            c0Var.write(93);
            return;
        }
        Object[] objArr = (Object[]) obj;
        int length3 = objArr.length;
        z zVar = pVar.m;
        pVar.a(zVar, obj, obj2, 0);
        try {
            c0Var.write(91);
            while (i2 < length3) {
                if (i2 != 0) {
                    c0Var.write(44);
                }
                Object obj3 = objArr[i2];
                if (obj3 == null) {
                    if (c0Var.a(b.WriteNullStringAsEmpty) && (obj instanceof String[])) {
                        c0Var.c("");
                    } else {
                        c0Var.a("null");
                    }
                } else if (obj3.getClass() == this.f3237a) {
                    this.f3238b.a(pVar, obj3, Integer.valueOf(i2), null);
                } else {
                    pVar.f3254a.a(obj3.getClass()).a(pVar, obj3, Integer.valueOf(i2), null);
                }
                i2++;
            }
            c0Var.write(93);
        } finally {
            pVar.m = zVar;
        }
    }
}
