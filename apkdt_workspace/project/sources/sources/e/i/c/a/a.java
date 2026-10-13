package e.i.c.a;

import com.google.common.annotations.GwtCompatible;

/* compiled from: Ascii.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class a {
    public static String a(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            if (a(str.charAt(i2))) {
                char[] charArray = str.toCharArray();
                while (i2 < length) {
                    char c2 = charArray[i2];
                    if (a(c2)) {
                        charArray[i2] = (char) (c2 ^ ' ');
                    }
                    i2++;
                }
                return String.valueOf(charArray);
            }
            i2++;
        }
        return str;
    }

    public static boolean a(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }
}
