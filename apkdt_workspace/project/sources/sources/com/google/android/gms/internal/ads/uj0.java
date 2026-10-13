package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uj0 implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final rj0 f9746a;

    public uj0(rj0 rj0Var) {
        this.f9746a = rj0Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        String b2 = this.f9746a.b();
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}
