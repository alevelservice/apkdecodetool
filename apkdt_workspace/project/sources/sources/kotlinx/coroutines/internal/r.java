package kotlinx.coroutines.internal;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LockFreeLinkedList.kt */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final LockFreeLinkedListNode f20091a;

    public r(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        kotlin.jvm.d.h.b(lockFreeLinkedListNode, "ref");
        this.f20091a = lockFreeLinkedListNode;
    }

    @NotNull
    public String toString() {
        return "Removed[" + this.f20091a + ']';
    }
}
