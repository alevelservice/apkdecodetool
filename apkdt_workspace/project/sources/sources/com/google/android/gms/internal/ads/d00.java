package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d00 implements oe1<b00> {

    /* renamed from: a, reason: collision with root package name */
    private final b00 f6132a;

    private d00(b00 b00Var) {
        this.f6132a = b00Var;
    }

    public static d00 a(b00 b00Var) {
        return new d00(b00Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        b00 b00Var = this.f6132a;
        if (b00Var == null) {
            throw null;
        }
        ue1.a(b00Var, "Cannot return null from a non-@Nullable @Provides method");
        return b00Var;
    }
}
