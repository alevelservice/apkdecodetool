package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class au0 implements oe1<Executor> {

    /* renamed from: a, reason: collision with root package name */
    private static final au0 f5662a = new au0();

    public static au0 a() {
        return f5662a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        tz0 tz0Var = yd.f10543d;
        ue1.a(tz0Var, "Cannot return null from a non-@Nullable @Provides method");
        return tz0Var;
    }
}
