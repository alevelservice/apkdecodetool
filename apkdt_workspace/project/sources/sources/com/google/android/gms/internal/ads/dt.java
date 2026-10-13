package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dt implements oe1<ws.a> {

    /* renamed from: a, reason: collision with root package name */
    private final ws f6309a;

    private dt(ws wsVar) {
        this.f6309a = wsVar;
    }

    public static dt a(ws wsVar) {
        return new dt(wsVar);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ws.a a2 = this.f6309a.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
