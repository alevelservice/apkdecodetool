package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tm implements oe1<x9> {

    /* renamed from: a, reason: collision with root package name */
    private static final tm f9604a = new tm();

    public static tm a() {
        return f9604a;
    }

    public static x9 b() {
        v9 v9Var = new v9();
        ue1.a(v9Var, "Cannot return null from a non-@Nullable @Provides method");
        return v9Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return b();
    }
}
