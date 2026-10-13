package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class et implements oe1<ws0> {

    /* renamed from: a, reason: collision with root package name */
    private final ws f6501a;

    private et(ws wsVar) {
        this.f6501a = wsVar;
    }

    public static et a(ws wsVar) {
        return new et(wsVar);
    }

    public static ws0 b(ws wsVar) {
        ws0 b2 = wsVar.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f6501a);
    }
}
