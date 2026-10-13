package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Multimaps.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class u0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(t0<?, ?> t0Var, @NullableDecl Object obj) {
        if (obj == t0Var) {
            return true;
        }
        if (obj instanceof t0) {
            return t0Var.asMap().equals(((t0) obj).asMap());
        }
        return false;
    }
}
