package com.google.android.gms.internal.clearcut;

import java.util.List;

/* loaded from: classes.dex */
public final class q3 extends RuntimeException {
    private final List<String> zzoy;

    public q3(i2 i2Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zzoy = null;
    }
}
