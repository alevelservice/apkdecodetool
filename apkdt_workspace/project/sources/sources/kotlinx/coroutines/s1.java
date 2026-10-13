package kotlinx.coroutines;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class s1 extends kotlinx.coroutines.internal.i implements b1 {
    @NotNull
    public final String a(@NotNull String str) {
        kotlin.jvm.d.h.b(str, "state");
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        Object b2 = b();
        if (b2 != null) {
            boolean z = true;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) b2; !kotlin.jvm.d.h.a(lockFreeLinkedListNode, this); lockFreeLinkedListNode = lockFreeLinkedListNode.c()) {
                if (lockFreeLinkedListNode instanceof m1) {
                    m1 m1Var = (m1) lockFreeLinkedListNode;
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(m1Var);
                }
            }
            sb.append("]");
            String sb2 = sb.toString();
            kotlin.jvm.d.h.a((Object) sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }
        throw new kotlin.r("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public s1 a() {
        return this;
    }

    @Override // kotlinx.coroutines.b1
    public boolean i() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return a("Active");
    }
}
