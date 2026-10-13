package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dq0 implements oe1<bq0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<t4> f6292a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f6293b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Boolean> f6294c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ApplicationInfo> f6295d;

    public dq0(af1<t4> af1Var, af1<ScheduledExecutorService> af1Var2, af1<Boolean> af1Var3, af1<ApplicationInfo> af1Var4) {
        this.f6292a = af1Var;
        this.f6293b = af1Var2;
        this.f6294c = af1Var3;
        this.f6295d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new bq0(this.f6292a.get(), this.f6293b.get(), this.f6294c.get().booleanValue(), this.f6295d.get());
    }
}
