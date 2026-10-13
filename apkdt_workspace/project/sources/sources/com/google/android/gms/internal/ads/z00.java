package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z00 implements oe1<y40> {

    /* renamed from: a, reason: collision with root package name */
    private final s00 f10667a;

    public z00(s00 s00Var) {
        this.f10667a = s00Var;
    }

    public static y40 a(s00 s00Var) {
        y40 b2 = s00Var.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f10667a);
    }
}
