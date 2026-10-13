package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static final char[] f5423a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b, reason: collision with root package name */
    private static final char[] f5424b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @KeepForSdk
    public static String a(byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length << 1);
        for (int i2 = 0; i2 < length && (!z || i2 != length - 1 || (bArr[i2] & 255) != 0); i2++) {
            sb.append(f5423a[(bArr[i2] & 240) >>> 4]);
            sb.append(f5423a[bArr[i2] & 15]);
        }
        return sb.toString();
    }

    @KeepForSdk
    public static String a(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i2 = 0;
        for (byte b2 : bArr) {
            int i3 = b2 & 255;
            int i4 = i2 + 1;
            char[] cArr2 = f5424b;
            cArr[i2] = cArr2[i3 >>> 4];
            i2 = i4 + 1;
            cArr[i4] = cArr2[i3 & 15];
        }
        return new String(cArr);
    }
}
