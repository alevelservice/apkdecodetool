package kotlin.v;

import java.util.List;
import org.jetbrains.annotations.NotNull;

/* compiled from: Collections.kt */
/* loaded from: classes2.dex */
class j extends i {
    @NotNull
    public static final <T> List<T> a() {
        return t.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list) {
        kotlin.jvm.d.h.b(list, "$this$optimizeReadOnlyList");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : i.a(list.get(0));
        }
        return a();
    }
}
