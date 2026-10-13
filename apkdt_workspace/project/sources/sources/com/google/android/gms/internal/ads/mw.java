package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mw implements oe1<Set<ox<wv>>> {
    private mw(hw hwVar) {
    }

    public static mw a(hw hwVar) {
        return new mw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        ue1.a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
