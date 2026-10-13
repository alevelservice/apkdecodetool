package kotlin.v;

import java.util.Collection;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MutableCollections.kt */
/* loaded from: classes2.dex */
public class o extends n {
    public static <T> boolean a(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.d.h.b(collection, "$this$addAll");
        kotlin.jvm.d.h.b(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z = true;
            }
        }
        return z;
    }
}
