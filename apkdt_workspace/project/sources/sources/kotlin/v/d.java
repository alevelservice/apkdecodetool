package kotlin.v;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* compiled from: _ArraysJvm.kt */
/* loaded from: classes2.dex */
class d extends c {
    @NotNull
    public static final <T> List<T> a(@NotNull T[] tArr) {
        kotlin.jvm.d.h.b(tArr, "$this$asList");
        List<T> a2 = f.a(tArr);
        kotlin.jvm.d.h.a((Object) a2, "ArraysUtilJVM.asList(this)");
        return a2;
    }

    public static final <T> void a(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.d.h.b(tArr, "$this$sortWith");
        kotlin.jvm.d.h.b(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }
}
