package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qz implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private static final qz f9020a = new qz();

    public static qz a() {
        return f9020a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ue1.a("interstitial", "Cannot return null from a non-@Nullable @Provides method");
        return "interstitial";
    }
}
