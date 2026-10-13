package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g80 implements oe1<k80> {

    /* renamed from: a, reason: collision with root package name */
    private static final g80 f6824a = new g80();

    public static g80 a() {
        return f6824a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        k80 k80Var = new k80("ttc", wu0.SIGNALS, wu0.RENDERER);
        ue1.a(k80Var, "Cannot return null from a non-@Nullable @Provides method");
        return k80Var;
    }
}
