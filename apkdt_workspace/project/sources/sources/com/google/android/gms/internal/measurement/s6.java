package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
public final class s6 extends RuntimeException {
    private final List<String> zzalx;

    public s6(k5 k5Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zzalx = null;
    }
}
