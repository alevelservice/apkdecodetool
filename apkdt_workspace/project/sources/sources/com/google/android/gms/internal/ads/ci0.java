package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ci0 implements oe1<ai0> {

    /* renamed from: a, reason: collision with root package name */
    private final ai0 f6027a;

    private ci0(ai0 ai0Var) {
        this.f6027a = ai0Var;
    }

    public static ci0 a(ai0 ai0Var) {
        return new ci0(ai0Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ai0 ai0Var = this.f6027a;
        if (ai0Var == null) {
            throw null;
        }
        ue1.a(ai0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ai0Var;
    }
}
