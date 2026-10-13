package com.google.android.gms.measurement.internal;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class n6 {
    @Nullable
    public static String a(String str, String[] strArr, String[] strArr2) {
        boolean equals;
        com.google.android.gms.common.internal.m.a(strArr);
        com.google.android.gms.common.internal.m.a(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i2 = 0; i2 < min; i2++) {
            String str2 = strArr[i2];
            if (str == null && str2 == null) {
                equals = true;
            } else {
                equals = str == null ? false : str.equals(str2);
            }
            if (equals) {
                return strArr2[i2];
            }
        }
        return null;
    }
}
