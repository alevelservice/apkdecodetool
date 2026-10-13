package e.i.c.a;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Function.java */
@GwtCompatible
/* loaded from: classes.dex */
public interface d<F, T> {
    @CanIgnoreReturnValue
    @NullableDecl
    T apply(@NullableDecl F f2);

    boolean equals(@NullableDecl Object obj);
}
