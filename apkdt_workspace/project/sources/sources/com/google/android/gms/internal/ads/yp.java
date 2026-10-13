package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yp implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private static final yp f10623a = new yp();

    public static yp a() {
        return f10623a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ue1.a("banner", "Cannot return null from a non-@Nullable @Provides method");
        return "banner";
    }
}
