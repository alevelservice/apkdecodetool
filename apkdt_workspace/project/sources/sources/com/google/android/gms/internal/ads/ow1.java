package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ow1 extends jw1 {
    @Override // com.google.android.gms.internal.ads.jw1
    public final String a(@Nullable String str, String str2) {
        String a2 = a(str);
        String a3 = a(str2);
        if (TextUtils.isEmpty(a2)) {
            return a3;
        }
        if (TextUtils.isEmpty(a3)) {
            return a2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 1 + String.valueOf(a3).length());
        sb.append(a2);
        sb.append(",");
        sb.append(a3);
        return sb.toString();
    }

    @Nullable
    private static String a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = 0;
        int length = str.length();
        while (i2 < str.length() && str.charAt(i2) == ',') {
            i2++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        if (length < i2) {
            return null;
        }
        return (i2 == 0 && length == str.length()) ? str : str.substring(i2, length);
    }
}
