package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzya extends zzacj {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.formats.g f11273e;

    public zzya(com.google.android.gms.ads.formats.g gVar) {
        this.f11273e = gVar;
    }

    @Override // com.google.android.gms.internal.ads.zzack
    public final boolean zzq(IObjectWrapper iObjectWrapper) {
        return this.f11273e.a((Runnable) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
