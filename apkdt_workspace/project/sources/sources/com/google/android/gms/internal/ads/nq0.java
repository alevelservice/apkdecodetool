package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nq0 implements oe1<ApplicationInfo> {

    /* renamed from: a, reason: collision with root package name */
    private final kq0 f8411a;

    public nq0(kq0 kq0Var) {
        this.f8411a = kq0Var;
    }

    public static ApplicationInfo a(kq0 kq0Var) {
        ApplicationInfo f2 = kq0Var.f();
        ue1.a(f2, "Cannot return null from a non-@Nullable @Provides method");
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f8411a);
    }
}
