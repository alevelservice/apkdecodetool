package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vk implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final lk f9945a;

    public vk(lk lkVar) {
        this.f9945a = lkVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        String d2 = this.f9945a.d();
        ue1.a(d2, "Cannot return null from a non-@Nullable @Provides method");
        return d2;
    }
}
