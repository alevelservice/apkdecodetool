package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gu0 implements oe1<ThreadFactory> {

    /* renamed from: a, reason: collision with root package name */
    private static final gu0 f6973a = new gu0();

    public static gu0 a() {
        return f6973a;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        xt0 xt0Var = new xt0();
        ue1.a(xt0Var, "Cannot return null from a non-@Nullable @Provides method");
        return xt0Var;
    }
}
