package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k70 implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private static final k70 f7631a = new k70();

    public static k70 a() {
        return f7631a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        com.google.android.gms.ads.internal.n.c();
        String b2 = wa.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}
