package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class el0 implements ko0<fl0> {

    /* renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f6456a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f6457b;

    public el0(Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f6456a = scheduledExecutorService;
        this.f6457b = executor;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<fl0> a() {
        if (!((Boolean) mu1.e().a(aw1.I3)).booleanValue()) {
            return gz0.a((Object) null);
        }
        final he heVar = new he();
        try {
            new lw0(heVar) { // from class: com.google.android.gms.internal.ads.il0

                /* renamed from: a, reason: collision with root package name */
                private final he f7333a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7333a = heVar;
                }

                @Override // com.google.android.gms.internal.ads.lw0
                public final void a(boolean z) {
                    this.f7333a.b(false);
                }
            }.a(false);
        } catch (Throwable unused) {
            qd.b("ArCoreApk is not ready.");
            heVar.b(false);
        }
        return gz0.a(gz0.a(gz0.a(heVar, 200L, TimeUnit.MILLISECONDS, this.f6456a), new pw0(this) { // from class: com.google.android.gms.internal.ads.hl0
            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                return new fl0(false, false, ((Boolean) obj).booleanValue());
            }
        }, this.f6457b), Throwable.class, kl0.f7716a, this.f6457b);
    }
}
