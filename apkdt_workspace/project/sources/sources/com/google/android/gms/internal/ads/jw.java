package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jw implements oe1<Set<ox<qu>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f7575a;

    private jw(hw hwVar) {
        this.f7575a = hwVar;
    }

    public static jw a(hw hwVar) {
        return new jw(hwVar);
    }

    public static Set<ox<qu>> b(hw hwVar) {
        Set<ox<qu>> emptySet = Collections.emptySet();
        ue1.a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f7575a);
    }
}
