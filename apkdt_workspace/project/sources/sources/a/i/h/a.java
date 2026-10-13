package a.i.h;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;

/* compiled from: ColorUtils.java */
/* loaded from: classes.dex */
public final class a {
    static {
        new ThreadLocal();
    }

    private static int a(int i2, int i3) {
        return 255 - (((255 - i3) * (255 - i2)) / 255);
    }

    public static int b(@ColorInt int i2, @ColorInt int i3) {
        int alpha = Color.alpha(i3);
        int alpha2 = Color.alpha(i2);
        int a2 = a(alpha2, alpha);
        return Color.argb(a2, a(Color.red(i2), alpha2, Color.red(i3), alpha, a2), a(Color.green(i2), alpha2, Color.green(i3), alpha, a2), a(Color.blue(i2), alpha2, Color.blue(i3), alpha, a2));
    }

    @ColorInt
    public static int c(@ColorInt int i2, @IntRange(from = 0, to = 255) int i3) {
        if (i3 < 0 || i3 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i2 & 16777215) | (i3 << 24);
    }

    private static int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            return 0;
        }
        return (((i2 * 255) * i3) + ((i4 * i5) * (255 - i3))) / (i6 * 255);
    }
}
