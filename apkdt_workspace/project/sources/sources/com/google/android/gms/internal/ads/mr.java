package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mr implements oe1<vs0> {

    /* renamed from: a, reason: collision with root package name */
    private final lr f8212a;

    private mr(lr lrVar) {
        this.f8212a = lrVar;
    }

    public static mr a(lr lrVar) {
        return new mr(lrVar);
    }

    public static vs0 b(lr lrVar) {
        vs0 a2 = lrVar.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f8212a);
    }
}
