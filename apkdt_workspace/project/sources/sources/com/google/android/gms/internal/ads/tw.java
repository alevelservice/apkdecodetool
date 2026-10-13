package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tw implements oe1<Set<ox<jt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f9642a;

    private tw(hw hwVar) {
        this.f9642a = hwVar;
    }

    public static tw a(hw hwVar) {
        return new tw(hwVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<jt>> a2 = this.f9642a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
