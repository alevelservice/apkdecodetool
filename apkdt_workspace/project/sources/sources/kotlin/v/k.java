package kotlin.v;

import java.util.Collection;
import kotlin.PublishedApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Iterables.kt */
/* loaded from: classes2.dex */
public class k extends j {
    @PublishedApi
    public static <T> int a(@NotNull Iterable<? extends T> iterable, int i2) {
        kotlin.jvm.d.h.b(iterable, "$this$collectionSizeOrDefault");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
    }
}
