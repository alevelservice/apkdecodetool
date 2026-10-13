package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class al implements oe1<t7> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f5592a;

    public al(af1<Context> af1Var) {
        this.f5592a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Context context = this.f5592a.get();
        r7 r7Var = new r7(context, new y7(context).e());
        ue1.a(r7Var, "Cannot return null from a non-@Nullable @Provides method");
        return r7Var;
    }
}
