package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.j;
import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ax implements oe1<Set<ox<j.a>>> {
    private ax(hw hwVar) {
    }

    public static ax a(hw hwVar) {
        return new ax(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        ue1.a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
