package kotlin.v;

import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* compiled from: CollectionsJVM.kt */
/* loaded from: classes2.dex */
class i {
    @NotNull
    public static final <T> List<T> a(T t) {
        List<T> singletonList = Collections.singletonList(t);
        kotlin.jvm.d.h.a((Object) singletonList, "java.util.Collections.singletonList(element)");
        return singletonList;
    }
}
