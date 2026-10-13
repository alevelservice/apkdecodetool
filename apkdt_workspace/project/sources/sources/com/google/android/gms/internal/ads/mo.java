package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mo implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private static final mo f8198a = new mo();

    public static mo a() {
        return f8198a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ue1.a("app_open_ad", "Cannot return null from a non-@Nullable @Provides method");
        return "app_open_ad";
    }
}
