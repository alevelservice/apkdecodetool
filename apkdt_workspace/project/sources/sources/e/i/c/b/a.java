package e.i.c.b;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import java.math.RoundingMode;

/* compiled from: IntMath.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class a {

    /* compiled from: IntMath.java */
    /* renamed from: e.i.c.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class C0203a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17996a = new int[RoundingMode.values().length];

        static {
            try {
                f17996a[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17996a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17996a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17996a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17996a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17996a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17996a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17996a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @VisibleForTesting
    static int a(int i2, int i3) {
        return (((i2 - i3) ^ (-1)) ^ (-1)) >>> 31;
    }

    public static int a(int i2, RoundingMode roundingMode) {
        b.a("x", i2);
        switch (C0203a.f17996a[roundingMode.ordinal()]) {
            case 1:
                b.a(a(i2));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i2 - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i2);
                return (31 - numberOfLeadingZeros) + a((-1257966797) >>> numberOfLeadingZeros, i2);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    public static boolean a(int i2) {
        return (i2 > 0) & ((i2 & (i2 + (-1))) == 0);
    }

    @Beta
    public static int b(int i2, int i3) {
        return e.i.c.c.a.a(i2 + i3);
    }
}
