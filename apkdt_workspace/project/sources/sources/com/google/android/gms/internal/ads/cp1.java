package com.google.android.gms.internal.ads;

import android.os.Build;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cp1 {

    /* renamed from: a, reason: collision with root package name */
    public static final int f6080a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f6081b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f6082c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f6083d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f6084e;

    static {
        f6080a = (Build.VERSION.SDK_INT == 25 && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
        f6081b = Build.DEVICE;
        f6082c = Build.MANUFACTURER;
        f6083d = Build.MODEL;
        String str = f6081b;
        String str2 = f6083d;
        String str3 = f6082c;
        int i2 = f6080a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i2);
        f6084e = sb.toString();
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    public static int a(int i2) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 != 16) {
            return i2 != 24 ? i2 != 32 ? 0 : 1073741824 : e.b.b.a.a.a.c.ALL_INT;
        }
        return 2;
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        return new Locale(str).getLanguage();
    }

    public static byte[] c(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    public static int d(String str) {
        int length = str.length();
        no1.a(length <= 4);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = (i2 << 8) | str.charAt(i3);
        }
        return i2;
    }

    public static byte[] e(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i2 << 1;
            bArr[i2] = (byte) ((Character.digit(str.charAt(i3), 16) << 4) + Character.digit(str.charAt(i3 + 1), 16));
        }
        return bArr;
    }

    public static ExecutorService a(String str) {
        return Executors.newSingleThreadExecutor(new bp1(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(long[] r4, long r5, boolean r7, boolean r8) {
        /*
            int r0 = java.util.Arrays.binarySearch(r4, r5)
            if (r0 >= 0) goto L9
            r5 = r0 ^ (-1)
            goto L1a
        L9:
            int r0 = r0 + 1
            int r1 = r4.length
            if (r0 >= r1) goto L14
            r1 = r4[r0]
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 == 0) goto L9
        L14:
            if (r7 == 0) goto L19
            int r5 = r0 + (-1)
            goto L1a
        L19:
            r5 = r0
        L1a:
            if (r8 == 0) goto L24
            int r4 = r4.length
            int r4 = r4 + (-1)
            int r4 = java.lang.Math.min(r4, r5)
            return r4
        L24:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cp1.b(long[], long, boolean, boolean):int");
    }

    public static void a(wn1 wn1Var) {
        if (wn1Var != null) {
            try {
                wn1Var.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int a(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static int a(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static int b(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE) {
            return i3 * 3;
        }
        if (i2 == 1073741824) {
            return i3 << 2;
        }
        if (i2 == 2) {
            return i3 << 1;
        }
        if (i2 == 3) {
            return i3;
        }
        throw new IllegalArgumentException();
    }

    public static float a(float f2, float f3, float f4) {
        return Math.max(0.1f, Math.min(f2, 8.0f));
    }

    public static int b(int i2) {
        if (i2 == 0) {
            return 16777216;
        }
        if (i2 == 1) {
            return 3538944;
        }
        if (i2 == 2) {
            return 13107200;
        }
        if (i2 == 3 || i2 == 4) {
            return AntDetector.SCENE_ID_LOGIN_REGIST;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(long[] r3, long r4, boolean r6, boolean r7) {
        /*
            int r6 = java.util.Arrays.binarySearch(r3, r4)
            if (r6 >= 0) goto La
            int r6 = r6 + 2
            int r3 = -r6
            goto L16
        La:
            int r6 = r6 + (-1)
            if (r6 < 0) goto L14
            r0 = r3[r6]
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 == 0) goto La
        L14:
            int r3 = r6 + 1
        L16:
            if (r7 == 0) goto L1d
            r4 = 0
            int r3 = java.lang.Math.max(r4, r3)
        L1d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cp1.a(long[], long, boolean, boolean):int");
    }

    public static long a(long j2, long j3, long j4) {
        if (j4 >= j3 && j4 % j3 == 0) {
            return j2 / (j4 / j3);
        }
        if (j4 < j3 && j3 % j4 == 0) {
            return j2 * (j3 / j4);
        }
        double d2 = j3;
        double d3 = j4;
        Double.isNaN(d2);
        Double.isNaN(d3);
        double d4 = j2;
        Double.isNaN(d4);
        return (long) (d4 * (d2 / d3));
    }

    public static void a(long[] jArr, long j2, long j3) {
        int i2 = 0;
        if (j3 >= 1000000 && j3 % 1000000 == 0) {
            long j4 = j3 / 1000000;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] / j4;
                i2++;
            }
            return;
        }
        if (j3 < 1000000 && 1000000 % j3 == 0) {
            long j5 = 1000000 / j3;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] * j5;
                i2++;
            }
            return;
        }
        double d2 = j3;
        Double.isNaN(d2);
        double d3 = 1000000.0d / d2;
        while (i2 < jArr.length) {
            double d4 = jArr[i2];
            Double.isNaN(d4);
            jArr[i2] = (long) (d4 * d3);
            i2++;
        }
    }

    public static String a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < objArr.length; i2++) {
            sb.append(objArr[i2].getClass().getSimpleName());
            if (i2 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }
}
