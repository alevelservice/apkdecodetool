package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a20 implements oe1<l10> {

    /* renamed from: a, reason: collision with root package name */
    private final y10 f5502a;

    private a20(y10 y10Var) {
        this.f5502a = y10Var;
    }

    public static a20 a(y10 y10Var) {
        return new a20(y10Var);
    }

    public static l10 b(y10 y10Var) {
        l10 a2 = y10Var.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b(this.f5502a);
    }
}
