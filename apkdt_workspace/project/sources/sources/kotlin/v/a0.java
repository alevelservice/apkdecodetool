package kotlin.v;

import java.util.Collections;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* compiled from: SetsJVM.kt */
/* loaded from: classes2.dex */
class a0 {
    @NotNull
    public static final <T> Set<T> a(T t) {
        Set<T> singleton = Collections.singleton(t);
        kotlin.jvm.d.h.a((Object) singleton, "java.util.Collections.singleton(element)");
        return singleton;
    }
}
