package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ok implements oe1<Context> {

    /* renamed from: a, reason: collision with root package name */
    private final lk f8532a;

    public ok(lk lkVar) {
        this.f8532a = lkVar;
    }

    public static Context a(lk lkVar) {
        Context a2 = lkVar.a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f8532a);
    }
}
