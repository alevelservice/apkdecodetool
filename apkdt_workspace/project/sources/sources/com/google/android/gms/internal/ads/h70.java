package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h70 implements oe1<y70> {

    /* renamed from: a, reason: collision with root package name */
    private static final h70 f7017a = new h70();

    public static h70 a() {
        return f7017a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        y70 y70Var = new y70(ms1.REQUEST_WILL_RENDER, ms1.REQUEST_DID_RENDER, ms1.REQUEST_FAILED_TO_RENDER);
        ue1.a(y70Var, "Cannot return null from a non-@Nullable @Provides method");
        return y70Var;
    }
}
