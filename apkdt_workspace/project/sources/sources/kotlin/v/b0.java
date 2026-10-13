package kotlin.v;

import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* compiled from: Sets.kt */
/* loaded from: classes2.dex */
class b0 extends a0 {
    @NotNull
    public static final <T> Set<T> a() {
        return u.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Set<T> a(@NotNull Set<? extends T> set) {
        kotlin.jvm.d.h.b(set, "$this$optimizeReadOnlySet");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : a0.a(set.iterator().next());
        }
        return a();
    }
}
