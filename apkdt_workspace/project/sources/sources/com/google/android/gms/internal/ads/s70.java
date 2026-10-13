package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s70 implements oe1<y70> {

    /* renamed from: a, reason: collision with root package name */
    private static final s70 f9284a = new s70();

    public static s70 a() {
        return f9284a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        y70 y70Var = new y70(ms1.REQUEST_WILL_UPDATE_GMS_SIGNALS, ms1.REQUEST_DID_UPDATE_GMS_SIGNALS, ms1.REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS);
        ue1.a(y70Var, "Cannot return null from a non-@Nullable @Provides method");
        return y70Var;
    }
}
