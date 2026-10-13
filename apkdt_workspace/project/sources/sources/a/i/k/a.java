package a.i.k;

import androidx.annotation.Nullable;

/* compiled from: OperationCanceledException.java */
/* loaded from: classes.dex */
public class a extends RuntimeException {
    public a() {
        this(null);
    }

    public a(@Nullable String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}
