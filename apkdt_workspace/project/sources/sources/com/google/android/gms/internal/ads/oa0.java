package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oa0 extends ma0 {

    /* renamed from: g, reason: collision with root package name */
    private static final Pattern f8502g = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: b, reason: collision with root package name */
    private final s90 f8503b;

    /* renamed from: c, reason: collision with root package name */
    private final tz0 f8504c;

    /* renamed from: d, reason: collision with root package name */
    private final ws0 f8505d;

    /* renamed from: e, reason: collision with root package name */
    private final ScheduledExecutorService f8506e;

    /* renamed from: f, reason: collision with root package name */
    private final kc0 f8507f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oa0(rv rvVar, ws0 ws0Var, s90 s90Var, tz0 tz0Var, ScheduledExecutorService scheduledExecutorService, kc0 kc0Var) {
        super(rvVar);
        this.f8505d = ws0Var;
        this.f8503b = s90Var;
        this.f8504c = tz0Var;
        this.f8506e = scheduledExecutorService;
        this.f8507f = kc0Var;
    }

    @Override // com.google.android.gms.internal.ads.ma0
    public final qz0<vs0> a(zzaok zzaokVar) {
        qz0<vs0> a2 = gz0.a(this.f8503b.a(zzaokVar), new qy0(this) { // from class: com.google.android.gms.internal.ads.sa0

            /* renamed from: a, reason: collision with root package name */
            private final oa0 f9305a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9305a = this;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f9305a.a((InputStream) obj);
            }
        }, this.f8504c);
        if (((Boolean) mu1.e().a(aw1.X2)).booleanValue()) {
            a2 = gz0.a(gz0.a(a2, ((Integer) mu1.e().a(aw1.Y2)).intValue(), TimeUnit.SECONDS, this.f8506e), TimeoutException.class, ra0.f9067a, yd.f10544e);
        }
        gz0.a(a2, new ua0(this), yd.f10544e);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(InputStream inputStream) {
        return gz0.a(new vs0(new qs0(this.f8505d), ts0.a(new InputStreamReader(inputStream))));
    }
}
