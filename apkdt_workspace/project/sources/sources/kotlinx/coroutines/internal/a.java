package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* compiled from: ArrayCopy.kt */
/* loaded from: classes2.dex */
public final class a {
    public static final <E> void a(@NotNull E[] eArr, int i2, @NotNull E[] eArr2, int i3, int i4) {
        kotlin.jvm.d.h.b(eArr, "source");
        kotlin.jvm.d.h.b(eArr2, "destination");
        System.arraycopy(eArr, i2, eArr2, i3, i4);
    }
}
