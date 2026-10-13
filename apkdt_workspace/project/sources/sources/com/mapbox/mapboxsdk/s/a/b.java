package com.mapbox.mapboxsdk.s.a;

import androidx.annotation.NonNull;
import j.c;

/* compiled from: HttpRequestUtil.java */
/* loaded from: classes2.dex */
public class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String a(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt > 31 && codePointAt < 127) {
                i2 += Character.charCount(codePointAt);
            } else {
                c cVar = new c();
                cVar.a(str, 0, i2);
                while (i2 < length) {
                    int codePointAt2 = str.codePointAt(i2);
                    cVar.d((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
                    i2 += Character.charCount(codePointAt2);
                }
                return cVar.y();
            }
        }
        return str;
    }
}
