package kotlin;

import org.jetbrains.annotations.Nullable;

/* compiled from: NoWhenBranchMatchedException.kt */
/* loaded from: classes2.dex */
public class l extends RuntimeException {
    public l() {
    }

    public l(@Nullable String str) {
        super(str);
    }

    public l(@Nullable String str, @Nullable Throwable th) {
        super(str, th);
    }

    public l(@Nullable Throwable th) {
        super(th);
    }
}
