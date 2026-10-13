package e.i.c.a;

import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Preconditions.java */
@GwtCompatible
/* loaded from: classes.dex */
public final class j {
    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @CanIgnoreReturnValue
    public static int c(int i2, int i3, @NullableDecl String str) {
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException(a(i2, i3, str));
        }
        return i2;
    }

    @CanIgnoreReturnValue
    public static int d(int i2, int i3, @NullableDecl String str) {
        if (i2 < 0 || i2 > i3) {
            throw new IndexOutOfBoundsException(b(i2, i3, str));
        }
        return i2;
    }

    public static void a(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void b(boolean z, @NullableDecl String str, int i2) {
        if (!z) {
            throw new IllegalStateException(l.a(str, Integer.valueOf(i2)));
        }
    }

    public static void a(boolean z, @NullableDecl String str, int i2) {
        if (!z) {
            throw new IllegalArgumentException(l.a(str, Integer.valueOf(i2)));
        }
    }

    public static void b(boolean z, @NullableDecl String str, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalStateException(l.a(str, obj));
        }
    }

    public static void a(boolean z, @NullableDecl String str, long j2) {
        if (!z) {
            throw new IllegalArgumentException(l.a(str, Long.valueOf(j2)));
        }
    }

    @CanIgnoreReturnValue
    public static int b(int i2, int i3) {
        d(i2, i3, HummerConstants.INDEX);
        return i2;
    }

    public static void a(boolean z, @NullableDecl String str, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(l.a(str, obj));
        }
    }

    private static String b(int i2, int i3, @NullableDecl String str) {
        if (i2 < 0) {
            return l.a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return l.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        throw new IllegalArgumentException("negative size: " + i3);
    }

    public static void a(boolean z, @NullableDecl String str, int i2, int i3) {
        if (!z) {
            throw new IllegalArgumentException(l.a(str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public static void a(boolean z, @NullableDecl String str, @NullableDecl Object obj, @NullableDecl Object obj2) {
        if (!z) {
            throw new IllegalArgumentException(l.a(str, obj, obj2));
        }
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T a(@NonNullDecl T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static void b(int i2, int i3, int i4) {
        if (i2 < 0 || i3 < i2 || i3 > i4) {
            throw new IndexOutOfBoundsException(a(i2, i3, i4));
        }
    }

    @CanIgnoreReturnValue
    @NonNullDecl
    public static <T> T a(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @CanIgnoreReturnValue
    public static int a(int i2, int i3) {
        c(i2, i3, HummerConstants.INDEX);
        return i2;
    }

    private static String a(int i2, int i3, @NullableDecl String str) {
        if (i2 < 0) {
            return l.a("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return l.a("%s (%s) must be less than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        throw new IllegalArgumentException("negative size: " + i3);
    }

    private static String a(int i2, int i3, int i4) {
        if (i2 < 0 || i2 > i4) {
            return b(i2, i4, "start index");
        }
        return (i3 < 0 || i3 > i4) ? b(i3, i4, "end index") : l.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
    }
}
