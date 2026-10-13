package e.i.c.b;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MathPreconditions.java */
@CanIgnoreReturnValue
@GwtCompatible
/* loaded from: classes.dex */
final class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(@NullableDecl String str, int i2) {
        if (i2 > 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " (" + i2 + ") must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
