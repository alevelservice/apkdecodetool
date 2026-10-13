package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p70 implements oe1<y70> {

    /* renamed from: a, reason: collision with root package name */
    private static final p70 f8658a = new p70();

    public static p70 a() {
        return f8658a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        y70 y70Var = new y70(ms1.REQUEST_WILL_BUILD_URL, ms1.REQUEST_DID_BUILD_URL, ms1.REQUEST_FAILED_TO_BUILD_URL);
        ue1.a(y70Var, "Cannot return null from a non-@Nullable @Provides method");
        return y70Var;
    }
}
