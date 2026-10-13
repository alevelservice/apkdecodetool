package com.alibaba.fastjson.a;

import com.alibaba.fastjson.JSON;

/* compiled from: SymbolTable.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    private final a[] f3215a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3216b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SymbolTable.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        final String f3217a;

        /* renamed from: b, reason: collision with root package name */
        final char[] f3218b;

        /* renamed from: c, reason: collision with root package name */
        final int f3219c;

        a(String str, int i2) {
            this.f3217a = str;
            this.f3218b = str.toCharArray();
            this.f3219c = i2;
        }
    }

    public p(int i2) {
        this.f3216b = i2 - 1;
        this.f3215a = new a[i2];
        a("$ref", 0, 4, "$ref".hashCode());
        a(JSON.DEFAULT_TYPE_KEY, 0, 5, JSON.DEFAULT_TYPE_KEY.hashCode());
    }

    public String a(char[] cArr, int i2, int i3, int i4) {
        int i5 = this.f3216b & i4;
        a aVar = this.f3215a[i5];
        if (aVar != null) {
            boolean z = false;
            if (i4 == aVar.f3219c && i3 == aVar.f3218b.length) {
                int i6 = 0;
                while (true) {
                    if (i6 >= i3) {
                        z = true;
                        break;
                    }
                    if (cArr[i2 + i6] != aVar.f3218b[i6]) {
                        break;
                    }
                    i6++;
                }
            }
            if (z) {
                return aVar.f3217a;
            }
            return new String(cArr, i2, i3);
        }
        String intern = new String(cArr, i2, i3).intern();
        this.f3215a[i5] = new a(intern, i4);
        return intern;
    }

    public String a(String str, int i2, int i3, int i4) {
        int i5 = this.f3216b & i4;
        a aVar = this.f3215a[i5];
        if (aVar != null) {
            if (i4 == aVar.f3219c && i3 == aVar.f3218b.length && str.regionMatches(i2, aVar.f3217a, 0, i3)) {
                return aVar.f3217a;
            }
            return a(str, i2, i3);
        }
        if (i3 != str.length()) {
            str = a(str, i2, i3);
        }
        String intern = str.intern();
        this.f3215a[i5] = new a(intern, i4);
        return intern;
    }

    private static String a(String str, int i2, int i3) {
        char[] cArr = new char[i3];
        str.getChars(i2, i3 + i2, cArr, 0);
        return new String(cArr);
    }
}
