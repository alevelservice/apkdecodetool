package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fq0 implements ko0<gq0> {

    /* renamed from: a, reason: collision with root package name */
    private r6 f6707a;

    /* renamed from: b, reason: collision with root package name */
    private ScheduledExecutorService f6708b;

    /* renamed from: c, reason: collision with root package name */
    private Context f6709c;

    public fq0(r6 r6Var, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f6707a = r6Var;
        this.f6708b = scheduledExecutorService;
        this.f6709c = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<gq0> a() {
        return gz0.a(gz0.a(this.f6707a.a(this.f6709c), ((Long) mu1.e().a(aw1.i2)).longValue(), TimeUnit.MILLISECONDS, this.f6708b), iq0.f7360a, yd.f10540a);
    }
}
