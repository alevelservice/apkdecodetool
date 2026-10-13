package kotlinx.coroutines.internal;

import kotlin.PublishedApi;
import org.jetbrains.annotations.NotNull;

/* compiled from: LockFreeLinkedList.kt */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    @NotNull
    private static final Object f20072a = new t("CONDITION_FALSE");

    static {
        new t("ALREADY_REMOVED");
        new t("LIST_EMPTY");
        new t("REMOVE_PREPARED");
    }

    @NotNull
    public static final Object a() {
        return f20072a;
    }

    @PublishedApi
    @NotNull
    public static final LockFreeLinkedListNode a(@NotNull Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        kotlin.jvm.d.h.b(obj, "$this$unwrap");
        r rVar = (r) (!(obj instanceof r) ? null : obj);
        return (rVar == null || (lockFreeLinkedListNode = rVar.f20091a) == null) ? (LockFreeLinkedListNode) obj : lockFreeLinkedListNode;
    }
}
