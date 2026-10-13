package kotlin.ranges;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Ranges.kt */
/* loaded from: classes2.dex */
public class q extends p {
    public static int a(int i2, int i3) {
        return i2 < i3 ? i3 : i2;
    }

    public static int a(int i2, int i3, int i4) {
        if (i3 <= i4) {
            return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
    }

    public static long a(long j2, long j3) {
        return j2 < j3 ? j3 : j2;
    }

    public static int b(int i2, int i3) {
        return i2 > i3 ? i3 : i2;
    }

    public static long b(long j2, long j3) {
        return j2 > j3 ? j3 : j2;
    }

    @NotNull
    public static IntProgression c(int i2, int i3) {
        return IntProgression.f19960h.a(i2, i3, -1);
    }

    @NotNull
    public static IntRange d(int i2, int i3) {
        if (i3 <= Integer.MIN_VALUE) {
            return IntRange.f19969j.a();
        }
        return new IntRange(i2, i3 - 1);
    }
}
