package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jq0 implements oe1<String> {

    /* renamed from: a, reason: collision with root package name */
    private final kq0 f7556a;

    public jq0(kq0 kq0Var) {
        this.f7556a = kq0Var;
    }

    public static String a(kq0 kq0Var) {
        String a2 = kq0Var.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f7556a);
    }
}
