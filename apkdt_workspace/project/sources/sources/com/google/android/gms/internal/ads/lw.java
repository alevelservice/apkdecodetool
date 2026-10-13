package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lw implements oe1<Set<ox<vt>>> {
    private lw(hw hwVar) {
    }

    public static lw a(hw hwVar) {
        return new lw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        ue1.a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
