package kotlin.v;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Collections.kt */
/* loaded from: classes2.dex */
public class r extends q {
    @NotNull
    public static final <T, C extends Collection<? super T>> C a(@NotNull Iterable<? extends T> iterable, @NotNull C c2) {
        kotlin.jvm.d.h.b(iterable, "$this$toCollection");
        kotlin.jvm.d.h.b(c2, "destination");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c2.add(it.next());
        }
        return c2;
    }

    @NotNull
    public static final <T> List<T> b(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.d.h.b(iterable, "$this$toMutableList");
        if (iterable instanceof Collection) {
            return a((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        a(iterable, arrayList);
        return arrayList;
    }

    @NotNull
    public static <T> Set<T> c(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.d.h.b(iterable, "$this$toSet");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return b0.a();
            }
            if (size == 1) {
                return a0.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(z.a(collection.size()));
            a(iterable, linkedHashSet);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        a(iterable, linkedHashSet2);
        return b0.a((Set) linkedHashSet2);
    }

    @NotNull
    public static <T> List<T> a(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.d.h.b(iterable, "$this$toList");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return j.a();
            }
            if (size != 1) {
                return a(collection);
            }
            return i.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        return j.a(b(iterable));
    }

    @NotNull
    public static final <T> List<T> a(@NotNull Collection<? extends T> collection) {
        kotlin.jvm.d.h.b(collection, "$this$toMutableList");
        return new ArrayList(collection);
    }
}
