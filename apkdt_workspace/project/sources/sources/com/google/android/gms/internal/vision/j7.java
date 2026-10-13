package com.google.android.gms.internal.vision;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class j7 extends RuntimeException {
    private final List<String> zzaai;

    public j7(d6 d6Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zzaai = null;
    }
}
