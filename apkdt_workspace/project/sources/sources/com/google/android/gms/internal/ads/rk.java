package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rk implements oe1<WeakReference<Context>> {

    /* renamed from: a, reason: collision with root package name */
    private final lk f9142a;

    public rk(lk lkVar) {
        this.f9142a = lkVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        WeakReference<Context> b2 = this.f9142a.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}
