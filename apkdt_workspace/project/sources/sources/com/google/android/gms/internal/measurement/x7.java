package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class x7 {

    /* renamed from: a, reason: collision with root package name */
    protected static final Charset f12204a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final Object f12205b;

    static {
        Charset.forName("ISO-8859-1");
        f12205b = new Object();
    }

    public static boolean a(Object[] objArr, Object[] objArr2) {
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length || objArr[i2] != null) {
                while (i3 < length2 && objArr2[i3] == null) {
                    i3++;
                }
                boolean z = i2 >= length;
                boolean z2 = i3 >= length2;
                if (z && z2) {
                    return true;
                }
                if (z != z2 || !objArr[i2].equals(objArr2[i3])) {
                    return false;
                }
                i2++;
                i3++;
            } else {
                i2++;
            }
        }
    }

    public static int a(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            Object obj = objArr[i3];
            if (obj != null) {
                i2 = (i2 * 31) + obj.hashCode();
            }
        }
        return i2;
    }

    public static void a(t7 t7Var, t7 t7Var2) {
        v7 v7Var = t7Var.f12115b;
        if (v7Var != null) {
            t7Var2.f12115b = (v7) v7Var.clone();
        }
    }
}
