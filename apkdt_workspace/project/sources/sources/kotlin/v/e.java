package kotlin.v;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Arrays.kt */
/* loaded from: classes2.dex */
public class e extends d {
    public static char a(@NotNull char[] cArr) {
        kotlin.jvm.d.h.b(cArr, "$this$single");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @Nullable
    public static <T> T b(@NotNull T[] tArr) {
        kotlin.jvm.d.h.b(tArr, "$this$singleOrNull");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    @NotNull
    public static <T> List<T> c(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.d.h.b(tArr, "$this$sortedWith");
        kotlin.jvm.d.h.b(comparator, "comparator");
        return d.a(b(tArr, comparator));
    }

    @NotNull
    public static final <T> T[] b(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.d.h.b(tArr, "$this$sortedArrayWith");
        kotlin.jvm.d.h.b(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        kotlin.jvm.d.h.a((Object) tArr2, "java.util.Arrays.copyOf(this, size)");
        d.a(tArr2, comparator);
        return tArr2;
    }
}
