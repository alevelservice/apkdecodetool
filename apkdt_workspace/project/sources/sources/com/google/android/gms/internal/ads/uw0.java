package com.google.android.gms.internal.ads;

import com.ap.zoloz.hummer.biz.HummerConstants;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uw0 {
    public static void a(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void b(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static int b(int i2, int i3) {
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(a(i2, i3, HummerConstants.INDEX));
        }
        return i2;
    }

    @NonNullDecl
    public static <T> T a(@NonNullDecl T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    @NonNullDecl
    public static <T> T a(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @NonNullDecl
    public static <T> T a(@NonNullDecl T t, @NullableDecl String str, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(ww0.a(str, obj));
    }

    public static int a(int i2, int i3) {
        String a2;
        if (i2 >= 0 && i2 < i3) {
            return i2;
        }
        if (i2 < 0) {
            a2 = ww0.a("%s (%s) must not be negative", HummerConstants.INDEX, Integer.valueOf(i2));
        } else {
            if (i3 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i3);
                throw new IllegalArgumentException(sb.toString());
            }
            a2 = ww0.a("%s (%s) must be less than size (%s)", HummerConstants.INDEX, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        throw new IndexOutOfBoundsException(a2);
    }

    private static String a(int i2, int i3, @NullableDecl String str) {
        if (i2 < 0) {
            return ww0.a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return ww0.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void a(int i2, int i3, int i4) {
        String a2;
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            if (i2 >= 0 && i2 <= i4) {
                a2 = (i3 < 0 || i3 > i4) ? a(i3, i4, "end index") : ww0.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            } else {
                a2 = a(i2, i4, "start index");
            }
            throw new IndexOutOfBoundsException(a2);
        }
    }
}
