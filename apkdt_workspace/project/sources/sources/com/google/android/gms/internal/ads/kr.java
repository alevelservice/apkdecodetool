package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kr implements oe1<ns0> {

    /* renamed from: a, reason: collision with root package name */
    private final lr f7735a;

    private kr(lr lrVar) {
        this.f7735a = lrVar;
    }

    public static kr a(lr lrVar) {
        return new kr(lrVar);
    }

    public static ns0 b(lr lrVar) {
        ns0 b2 = lrVar.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f7735a);
    }
}
