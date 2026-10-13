package com.alibaba.fastjson;

/* compiled from: PropertyNamingStrategy.java */
/* loaded from: classes.dex */
public enum h {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase;

    public String translate(String str) {
        char charAt;
        int i2 = i.f3309a[ordinal()];
        int i3 = 0;
        if (i2 == 1) {
            StringBuilder sb = new StringBuilder();
            while (i3 < str.length()) {
                char charAt2 = str.charAt(i3);
                if (charAt2 >= 'A' && charAt2 <= 'Z') {
                    char c2 = (char) (charAt2 + ' ');
                    if (i3 > 0) {
                        sb.append('_');
                    }
                    sb.append(c2);
                } else {
                    sb.append(charAt2);
                }
                i3++;
            }
            return sb.toString();
        }
        if (i2 == 2) {
            StringBuilder sb2 = new StringBuilder();
            while (i3 < str.length()) {
                char charAt3 = str.charAt(i3);
                if (charAt3 >= 'A' && charAt3 <= 'Z') {
                    char c3 = (char) (charAt3 + ' ');
                    if (i3 > 0) {
                        sb2.append('-');
                    }
                    sb2.append(c3);
                } else {
                    sb2.append(charAt3);
                }
                i3++;
            }
            return sb2.toString();
        }
        if (i2 != 3) {
            if (i2 != 4 || (charAt = str.charAt(0)) < 'A' || charAt > 'Z') {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] + ' ');
            return new String(charArray);
        }
        char charAt4 = str.charAt(0);
        if (charAt4 < 'a' || charAt4 > 'z') {
            return str;
        }
        char[] charArray2 = str.toCharArray();
        charArray2[0] = (char) (charArray2[0] - ' ');
        return new String(charArray2);
    }
}
