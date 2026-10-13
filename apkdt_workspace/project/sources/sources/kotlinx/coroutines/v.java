package kotlinx.coroutines;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.Nullable;

/* compiled from: CompletionHandler.kt */
/* loaded from: classes2.dex */
public abstract class v extends LockFreeLinkedListNode implements kotlin.jvm.c.b<Throwable, kotlin.t> {
    public abstract void b(@Nullable Throwable th);
}
