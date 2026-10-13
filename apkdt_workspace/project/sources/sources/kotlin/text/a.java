package kotlin.text;

import kotlin.PublishedApi;
import kotlin.ranges.IntRange;

/* compiled from: CharJVM.kt */
/* loaded from: classes2.dex */
class a {
    public static final boolean a(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static final int a(char c2, int i2) {
        return Character.digit((int) c2, i2);
    }

    @PublishedApi
    public static final int a(int i2) {
        if (2 <= i2 && 36 >= i2) {
            return i2;
        }
        throw new IllegalArgumentException("radix " + i2 + " was not in valid range " + new IntRange(2, 36));
    }
}
