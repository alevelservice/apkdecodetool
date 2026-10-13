package com.alibaba.fastjson.a;

import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.e.a;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaBeanInfo.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    final Constructor<?> f3181a;

    /* renamed from: b, reason: collision with root package name */
    final int f3182b;

    /* renamed from: c, reason: collision with root package name */
    final Constructor<?> f3183c;

    /* renamed from: d, reason: collision with root package name */
    final Method f3184d;

    /* renamed from: e, reason: collision with root package name */
    final a[] f3185e;

    /* renamed from: f, reason: collision with root package name */
    final a[] f3186f;

    /* renamed from: g, reason: collision with root package name */
    final JSONType f3187g;

    /* renamed from: h, reason: collision with root package name */
    boolean f3188h = false;

    /* renamed from: i, reason: collision with root package name */
    final boolean f3189i;

    /* renamed from: j, reason: collision with root package name */
    public final String f3190j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3191k;

    /* renamed from: l, reason: collision with root package name */
    public final int f3192l;
    public final String[] m;

    i(Class<?> cls, Constructor<?> constructor, Constructor<?> constructor2, Method method, a[] aVarArr, a[] aVarArr2, JSONType jSONType, String[] strArr) {
        int i2;
        boolean z;
        int i3 = 0;
        this.f3181a = constructor;
        this.f3183c = constructor2;
        this.f3184d = method;
        this.f3185e = aVarArr;
        this.f3187g = jSONType;
        if (strArr != null && strArr.length == aVarArr.length) {
            this.m = null;
        } else {
            this.m = strArr;
        }
        if (jSONType != null) {
            String typeName = jSONType.typeName();
            this.f3190j = typeName.length() <= 0 ? cls.getName() : typeName;
            String typeKey = jSONType.typeKey();
            this.f3191k = typeKey.length() <= 0 ? null : typeKey;
            i2 = 0;
            for (e eVar : jSONType.parseFeatures()) {
                i2 |= eVar.mask;
            }
        } else {
            this.f3190j = cls.getName();
            this.f3191k = null;
            i2 = 0;
        }
        this.f3192l = i2;
        if (jSONType != null) {
            e[] parseFeatures = jSONType.parseFeatures();
            z = false;
            for (e eVar2 : parseFeatures) {
                if (eVar2 == e.SupportArrayToBean) {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        this.f3189i = z;
        a[] a2 = a(aVarArr, aVarArr2);
        this.f3186f = Arrays.equals(aVarArr, a2) ? aVarArr : a2;
        if (constructor != null) {
            i3 = constructor.getParameterTypes().length;
        } else if (method != null) {
            i3 = method.getParameterTypes().length;
        }
        this.f3182b = i3;
    }

    private a[] a(a[] aVarArr, a[] aVarArr2) {
        String[] orders;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        JSONType jSONType = this.f3187g;
        if (jSONType != null && (orders = jSONType.orders()) != null && orders.length != 0) {
            int i2 = 0;
            while (true) {
                if (i2 >= orders.length) {
                    z = true;
                    break;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= aVarArr2.length) {
                        z4 = false;
                        break;
                    }
                    if (aVarArr2[i3].f3280e.equals(orders[i2])) {
                        z4 = true;
                        break;
                    }
                    i3++;
                }
                if (!z4) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (!z) {
                return aVarArr2;
            }
            if (orders.length == aVarArr.length) {
                int i4 = 0;
                while (true) {
                    if (i4 >= orders.length) {
                        z3 = true;
                        break;
                    }
                    if (!aVarArr2[i4].f3280e.equals(orders[i4])) {
                        z3 = false;
                        break;
                    }
                    i4++;
                }
                if (z3) {
                    return aVarArr2;
                }
                a[] aVarArr3 = new a[aVarArr2.length];
                for (int i5 = 0; i5 < orders.length; i5++) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= aVarArr2.length) {
                            break;
                        }
                        if (aVarArr2[i6].f3280e.equals(orders[i5])) {
                            aVarArr3[i5] = aVarArr2[i6];
                            break;
                        }
                        i6++;
                    }
                }
                this.f3188h = true;
                return aVarArr3;
            }
            a[] aVarArr4 = new a[aVarArr2.length];
            for (int i7 = 0; i7 < orders.length; i7++) {
                int i8 = 0;
                while (true) {
                    if (i8 >= aVarArr2.length) {
                        break;
                    }
                    if (aVarArr2[i8].f3280e.equals(orders[i7])) {
                        aVarArr4[i7] = aVarArr2[i8];
                        break;
                    }
                    i8++;
                }
            }
            int length = orders.length;
            for (int i9 = 0; i9 < aVarArr2.length; i9++) {
                for (int i10 = 0; i10 < aVarArr4.length && i10 < length; i10++) {
                    if (aVarArr4[i9].b(aVarArr2[i10])) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                if (!z2) {
                    aVarArr4[length] = aVarArr2[i9];
                    length++;
                }
            }
            this.f3188h = true;
        }
        return aVarArr2;
    }

    static boolean a(List<a> list, a aVar, boolean z) {
        if (!z) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar2 = list.get(i2);
                if (aVar2.f3280e.equals(aVar.f3280e) && (!aVar2.n || aVar.n)) {
                    return false;
                }
            }
        }
        list.add(aVar);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:212:0x07b5, code lost:
    
        if (r1.length() > 0) goto L362;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x05f1  */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.lang.reflect.Type[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.fastjson.a.i a(java.lang.Class<?> r37, int r38, java.lang.reflect.Type r39, boolean r40, boolean r41, boolean r42, boolean r43, com.alibaba.fastjson.h r44) {
        /*
            Method dump skipped, instructions count: 2120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.a.i.a(java.lang.Class, int, java.lang.reflect.Type, boolean, boolean, boolean, boolean, com.alibaba.fastjson.h):com.alibaba.fastjson.a.i");
    }
}
