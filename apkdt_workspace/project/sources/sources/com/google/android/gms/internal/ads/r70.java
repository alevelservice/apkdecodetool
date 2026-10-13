package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r70 implements oe1<y70> {

    /* renamed from: a, reason: collision with root package name */
    private static final r70 f9051a = new r70();

    public static r70 a() {
        return f9051a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        y70 y70Var = new y70(ms1.REQUEST_WILL_MAKE_NETWORK_REQUEST, ms1.REQUEST_DID_RECEIVE_NETWORK_RESPONSE, ms1.REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST);
        ue1.a(y70Var, "Cannot return null from a non-@Nullable @Provides method");
        return y70Var;
    }
}
